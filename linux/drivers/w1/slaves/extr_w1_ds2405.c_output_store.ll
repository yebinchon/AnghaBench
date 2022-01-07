; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2405.c_output_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2405.c_output_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w1_slave = type { i32, %struct.w1_master* }
%struct.w1_master = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" %u%n\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@W1_MATCH_ROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @output_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w1_slave*, align 8
  %11 = alloca %struct.w1_master*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [9 x i32], align 16
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.w1_slave* @dev_to_w1_slave(%struct.device* %18)
  store %struct.w1_slave* %19, %struct.w1_slave** %10, align 8
  %20 = load %struct.w1_slave*, %struct.w1_slave** %10, align 8
  %21 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %20, i32 0, i32 1
  %22 = load %struct.w1_master*, %struct.w1_master** %21, align 8
  store %struct.w1_master* %22, %struct.w1_master** %11, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %93

28:                                               ; preds = %4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @sscanf(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %12)
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %93

35:                                               ; preds = %28
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %93

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %15, align 4
  %46 = load %struct.w1_master*, %struct.w1_master** %11, align 8
  %47 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock_interruptible(i32* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %5, align 4
  br label %93

53:                                               ; preds = %44
  %54 = load %struct.w1_slave*, %struct.w1_slave** %10, align 8
  %55 = call i32 @w1_ds2405_read_pio(%struct.w1_slave* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %15, align 4
  br label %86

60:                                               ; preds = %53
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %86

65:                                               ; preds = %60
  %66 = load %struct.w1_master*, %struct.w1_master** %11, align 8
  %67 = call i64 @w1_reset_bus(%struct.w1_master* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %15, align 4
  br label %86

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.w1_slave*, %struct.w1_slave** %10, align 8
  %75 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @le64_to_cpu(i32 %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* @W1_MATCH_ROM, align 4
  %79 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 0
  store i32 %78, i32* %79, align 16
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 1
  %81 = call i32 @memcpy(i32* %80, i32* %16, i32 4)
  %82 = load %struct.w1_master*, %struct.w1_master** %11, align 8
  %83 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 0
  %84 = call i32 @w1_write_block(%struct.w1_master* %82, i32* %83, i32 36)
  br label %85

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %69, %64, %58
  %87 = load %struct.w1_master*, %struct.w1_master** %11, align 8
  %88 = call i64 @w1_reset_bus(%struct.w1_master* %87)
  %89 = load %struct.w1_master*, %struct.w1_master** %11, align 8
  %90 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %86, %51, %41, %32, %25
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.w1_slave* @dev_to_w1_slave(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @w1_ds2405_read_pio(%struct.w1_slave*) #1

declare dso_local i64 @w1_reset_bus(%struct.w1_master*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @w1_write_block(%struct.w1_master*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
