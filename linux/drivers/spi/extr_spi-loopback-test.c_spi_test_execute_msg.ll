; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-loopback-test.c_spi_test_execute_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-loopback-test.c_spi_test_execute_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_test = type { i32, %struct.spi_message }
%struct.spi_message = type { i64, i64 }

@simulate_only = common dso_local global i32 0, align 4
@dump_messages = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"spi-message timed out - rerunning...\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to execute spi_message: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"actual length differs from expected\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_test_execute_msg(%struct.spi_device* %0, %struct.spi_test* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_test*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.spi_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store %struct.spi_test* %1, %struct.spi_test** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.spi_test*, %struct.spi_test** %6, align 8
  %14 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %13, i32 0, i32 1
  store %struct.spi_message* %14, %struct.spi_message** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @simulate_only, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %90, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @dump_messages, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %22 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %23 = call i32 @spi_test_dump_message(%struct.spi_device* %21, %struct.spi_message* %22, i32 1)
  br label %24

24:                                               ; preds = %20, %17
  %25 = call i32 (...) @ktime_get()
  store i32 %25, i32* %12, align 4
  %26 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %27 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %28 = call i32 @spi_sync(%struct.spi_device* %26, %struct.spi_message* %27)
  store i32 %28, i32* %10, align 4
  %29 = call i32 (...) @ktime_get()
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @ktime_sub(i32 %29, i32 %30)
  %32 = call i32 @ktime_to_ns(i32 %31)
  %33 = load %struct.spi_test*, %struct.spi_test** %6, align 8
  %34 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %24
  %40 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = call i32 @dev_info(i32* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %48, %39
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 16
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = call i32 (...) @schedule()
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %43

51:                                               ; preds = %43
  %52 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %53 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %54 = call i32 @spi_sync(%struct.spi_device* %52, %struct.spi_message* %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %51, %24
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 0
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %91

63:                                               ; preds = %55
  %64 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %65 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %68 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 0
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %91

77:                                               ; preds = %63
  %78 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %79 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @spi_test_check_loopback_result(%struct.spi_device* %78, %struct.spi_message* %79, i8* %80, i8* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %91

86:                                               ; preds = %77
  %87 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %88 = load %struct.spi_test*, %struct.spi_test** %6, align 8
  %89 = call i32 @spi_test_check_elapsed_time(%struct.spi_device* %87, %struct.spi_test* %88)
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %86, %4
  br label %91

91:                                               ; preds = %90, %85, %71, %58
  %92 = load i32, i32* @dump_messages, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94, %91
  %98 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %99 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %100 = load i32, i32* @dump_messages, align 4
  %101 = icmp sge i32 %100, 2
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br label %105

105:                                              ; preds = %102, %97
  %106 = phi i1 [ true, %97 ], [ %104, %102 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @spi_test_dump_message(%struct.spi_device* %98, %struct.spi_message* %99, i32 %107)
  br label %109

109:                                              ; preds = %105, %94
  %110 = load i32, i32* %10, align 4
  ret i32 %110
}

declare dso_local i32 @spi_test_dump_message(%struct.spi_device*, %struct.spi_message*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spi_test_check_loopback_result(%struct.spi_device*, %struct.spi_message*, i8*, i8*) #1

declare dso_local i32 @spi_test_check_elapsed_time(%struct.spi_device*, %struct.spi_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
