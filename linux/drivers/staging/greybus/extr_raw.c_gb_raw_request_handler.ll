; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_raw.c_gb_raw_request_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_raw.c_gb_raw_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_3__*, i32, %struct.gb_connection* }
%struct.TYPE_3__ = type { i32, %struct.gb_raw_send_request* }
%struct.gb_raw_send_request = type { i32, i32 }
%struct.gb_connection = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gb_raw = type { i32 }

@GB_RAW_TYPE_SEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unknown request type 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"raw receive request too small (%zu < %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"raw receive request wrong size %d vs %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"raw receive request of 0 bytes?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_raw_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_raw_request_handler(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.gb_raw*, align 8
  %7 = alloca %struct.gb_raw_send_request*, align 8
  %8 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %9 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %10 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %9, i32 0, i32 2
  %11 = load %struct.gb_connection*, %struct.gb_connection** %10, align 8
  store %struct.gb_connection* %11, %struct.gb_connection** %4, align 8
  %12 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %13 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %17 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call %struct.gb_raw* @greybus_get_drvdata(%struct.TYPE_4__* %18)
  store %struct.gb_raw* %19, %struct.gb_raw** %6, align 8
  %20 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %21 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GB_RAW_TYPE_SEND, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %28 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %100

33:                                               ; preds = %1
  %34 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %35 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 8
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %44 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 8)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %100

51:                                               ; preds = %33
  %52 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %53 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load %struct.gb_raw_send_request*, %struct.gb_raw_send_request** %55, align 8
  store %struct.gb_raw_send_request* %56, %struct.gb_raw_send_request** %7, align 8
  %57 = load %struct.gb_raw_send_request*, %struct.gb_raw_send_request** %7, align 8
  %58 = getelementptr inbounds %struct.gb_raw_send_request, %struct.gb_raw_send_request* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %63 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = sub i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = icmp ne i32 %61, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %51
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %75 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = sub i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %100

85:                                               ; preds = %51
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %100

93:                                               ; preds = %85
  %94 = load %struct.gb_raw*, %struct.gb_raw** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.gb_raw_send_request*, %struct.gb_raw_send_request** %7, align 8
  %97 = getelementptr inbounds %struct.gb_raw_send_request, %struct.gb_raw_send_request* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @receive_data(%struct.gb_raw* %94, i32 %95, i32 %98)
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %93, %88, %71, %41, %25
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.gb_raw* @greybus_get_drvdata(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @receive_data(%struct.gb_raw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
