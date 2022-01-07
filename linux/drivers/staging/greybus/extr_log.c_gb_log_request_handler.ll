; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_log.c_gb_log_request_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_log.c_gb_log_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i32, %struct.TYPE_4__*, %struct.gb_connection* }
%struct.TYPE_4__ = type { i32, %struct.gb_log_send_log_request* }
%struct.gb_log_send_log_request = type { i8*, i32 }
%struct.gb_connection = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@GB_LOG_TYPE_SEND_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unknown request type 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"log request too small (%zu < %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"log request wrong size %d vs %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"log request of 0 bytes?\0A\00", align 1
@GB_LOG_MAX_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"log request too big: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_log_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_log_request_handler(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.gb_log_send_log_request*, align 8
  %7 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %8 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %9 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %8, i32 0, i32 2
  %10 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  store %struct.gb_connection* %10, %struct.gb_connection** %4, align 8
  %11 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %12 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %16 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GB_LOG_TYPE_SEND_LOG, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %23 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %110

28:                                               ; preds = %1
  %29 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %30 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 16
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %39 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64 16)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %110

46:                                               ; preds = %28
  %47 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %48 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.gb_log_send_log_request*, %struct.gb_log_send_log_request** %50, align 8
  store %struct.gb_log_send_log_request* %51, %struct.gb_log_send_log_request** %6, align 8
  %52 = load %struct.gb_log_send_log_request*, %struct.gb_log_send_log_request** %6, align 8
  %53 = getelementptr inbounds %struct.gb_log_send_log_request, %struct.gb_log_send_log_request* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @le16_to_cpu(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %59 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = sub i64 %63, 16
  %65 = icmp ne i64 %57, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %46
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %70 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = sub i64 %74, 16
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %68, i64 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %110

79:                                               ; preds = %46
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %110

87:                                               ; preds = %79
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @GB_LOG_MAX_LEN, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %110

97:                                               ; preds = %87
  %98 = load %struct.gb_log_send_log_request*, %struct.gb_log_send_log_request** %6, align 8
  %99 = getelementptr inbounds %struct.gb_log_send_log_request, %struct.gb_log_send_log_request* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load %struct.device*, %struct.device** %5, align 8
  %106 = load %struct.gb_log_send_log_request*, %struct.gb_log_send_log_request** %6, align 8
  %107 = getelementptr inbounds %struct.gb_log_send_log_request, %struct.gb_log_send_log_request* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @dev_dbg(%struct.device* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %97, %91, %82, %66, %36, %20
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
