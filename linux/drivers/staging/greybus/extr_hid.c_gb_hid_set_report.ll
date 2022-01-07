; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_set_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_set_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_hid = type { i32, i32 }
%struct.gb_hid_set_report_request = type { i32, i8*, i8* }
%struct.gb_operation = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.gb_hid_set_report_request* }

@GB_HID_TYPE_SET_REPORT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to set report: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_hid*, i8*, i8*, i8*, i32)* @gb_hid_set_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_hid_set_report(%struct.gb_hid* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gb_hid*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gb_hid_set_report_request*, align 8
  %13 = alloca %struct.gb_operation*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gb_hid* %0, %struct.gb_hid** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 24, %17
  %19 = sub i64 %18, 1
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %15, align 4
  %21 = load %struct.gb_hid*, %struct.gb_hid** %7, align 8
  %22 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gb_pm_runtime_get_sync(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %6, align 4
  br label %87

29:                                               ; preds = %5
  %30 = load %struct.gb_hid*, %struct.gb_hid** %7, align 8
  %31 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GB_HID_TYPE_SET_REPORT, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.gb_operation* @gb_operation_create(i32 %32, i32 %33, i32 %34, i32 0, i32 %35)
  store %struct.gb_operation* %36, %struct.gb_operation** %13, align 8
  %37 = load %struct.gb_operation*, %struct.gb_operation** %13, align 8
  %38 = icmp ne %struct.gb_operation* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %29
  %40 = load %struct.gb_hid*, %struct.gb_hid** %7, align 8
  %41 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gb_pm_runtime_put_autosuspend(i32 %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %87

46:                                               ; preds = %29
  %47 = load %struct.gb_operation*, %struct.gb_operation** %13, align 8
  %48 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.gb_hid_set_report_request*, %struct.gb_hid_set_report_request** %50, align 8
  store %struct.gb_hid_set_report_request* %51, %struct.gb_hid_set_report_request** %12, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.gb_hid_set_report_request*, %struct.gb_hid_set_report_request** %12, align 8
  %54 = getelementptr inbounds %struct.gb_hid_set_report_request, %struct.gb_hid_set_report_request* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.gb_hid_set_report_request*, %struct.gb_hid_set_report_request** %12, align 8
  %57 = getelementptr inbounds %struct.gb_hid_set_report_request, %struct.gb_hid_set_report_request* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.gb_hid_set_report_request*, %struct.gb_hid_set_report_request** %12, align 8
  %59 = getelementptr inbounds %struct.gb_hid_set_report_request, %struct.gb_hid_set_report_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @memcpy(i32 %60, i8* %61, i32 %62)
  %64 = load %struct.gb_operation*, %struct.gb_operation** %13, align 8
  %65 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %46
  %69 = load %struct.gb_operation*, %struct.gb_operation** %13, align 8
  %70 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %79

77:                                               ; preds = %46
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %77, %68
  %80 = load %struct.gb_operation*, %struct.gb_operation** %13, align 8
  %81 = call i32 @gb_operation_put(%struct.gb_operation* %80)
  %82 = load %struct.gb_hid*, %struct.gb_hid** %7, align 8
  %83 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @gb_pm_runtime_put_autosuspend(i32 %84)
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %79, %39, %27
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @gb_pm_runtime_get_sync(i32) #1

declare dso_local %struct.gb_operation* @gb_operation_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @gb_operation_request_send_sync(%struct.gb_operation*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
