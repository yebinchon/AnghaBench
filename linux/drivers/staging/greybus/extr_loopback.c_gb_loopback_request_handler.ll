; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_request_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.gb_operation = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.gb_connection* }
%struct.TYPE_7__ = type { %struct.gb_loopback_transfer_response* }
%struct.gb_loopback_transfer_response = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.gb_loopback_transfer_request* }
%struct.gb_loopback_transfer_request = type { i32, i32 }
%struct.gb_connection = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"transfer request too small (%zu < %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@gb_dev = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"transfer request too large (%zu > %zu)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"error allocating response\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unsupported request: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_loopback_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_loopback_request_handler(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_loopback_transfer_request*, align 8
  %6 = alloca %struct.gb_loopback_transfer_response*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %9 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %10 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %9, i32 0, i32 3
  %11 = load %struct.gb_connection*, %struct.gb_connection** %10, align 8
  store %struct.gb_connection* %11, %struct.gb_connection** %4, align 8
  %12 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %13 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %17 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %92 [
    i32 130, label %19
    i32 129, label %19
    i32 128, label %20
  ]

19:                                               ; preds = %1, %1
  store i32 0, i32* %2, align 4
  br label %100

20:                                               ; preds = %1
  %21 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %22 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 8
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %31 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %34, i64 8)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %100

38:                                               ; preds = %20
  %39 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %40 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %42, align 8
  store %struct.gb_loopback_transfer_request* %43, %struct.gb_loopback_transfer_request** %5, align 8
  %44 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %5, align 8
  %45 = getelementptr inbounds %struct.gb_loopback_transfer_request, %struct.gb_loopback_transfer_request* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le32_to_cpu(i32 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gb_dev, i32 0, i32 0), align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %38
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gb_dev, i32 0, i32 0), align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %100

58:                                               ; preds = %38
  %59 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32 @gb_operation_response_alloc(%struct.gb_operation* %59, i64 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %100

70:                                               ; preds = %58
  %71 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %72 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.gb_loopback_transfer_response*, %struct.gb_loopback_transfer_response** %74, align 8
  store %struct.gb_loopback_transfer_response* %75, %struct.gb_loopback_transfer_response** %6, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @cpu_to_le32(i64 %76)
  %78 = load %struct.gb_loopback_transfer_response*, %struct.gb_loopback_transfer_response** %6, align 8
  %79 = getelementptr inbounds %struct.gb_loopback_transfer_response, %struct.gb_loopback_transfer_response* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %70
  %83 = load %struct.gb_loopback_transfer_response*, %struct.gb_loopback_transfer_response** %6, align 8
  %84 = getelementptr inbounds %struct.gb_loopback_transfer_response, %struct.gb_loopback_transfer_response* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %5, align 8
  %87 = getelementptr inbounds %struct.gb_loopback_transfer_request, %struct.gb_loopback_transfer_request* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @memcpy(i32 %85, i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %82, %70
  store i32 0, i32* %2, align 4
  br label %100

92:                                               ; preds = %1
  %93 = load %struct.device*, %struct.device** %7, align 8
  %94 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %95 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %92, %91, %65, %51, %28, %19
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @gb_operation_response_alloc(%struct.gb_operation*, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
