; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_get_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_get_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_hid = type { i32, i32 }
%struct.gb_hid_get_report_request = type { i8*, i8* }

@GB_HID_TYPE_GET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_hid*, i8*, i8*, i8*, i32)* @gb_hid_get_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_hid_get_report(%struct.gb_hid* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gb_hid*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gb_hid_get_report_request, align 8
  %13 = alloca i32, align 4
  store %struct.gb_hid* %0, %struct.gb_hid** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.gb_hid*, %struct.gb_hid** %7, align 8
  %15 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gb_pm_runtime_get_sync(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %39

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds %struct.gb_hid_get_report_request, %struct.gb_hid_get_report_request* %12, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds %struct.gb_hid_get_report_request, %struct.gb_hid_get_report_request* %12, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load %struct.gb_hid*, %struct.gb_hid** %7, align 8
  %28 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GB_HID_TYPE_GET_REPORT, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @gb_operation_sync(i32 %29, i32 %30, %struct.gb_hid_get_report_request* %12, i32 16, i8* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.gb_hid*, %struct.gb_hid** %7, align 8
  %35 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gb_pm_runtime_put_autosuspend(i32 %36)
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %22, %20
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @gb_pm_runtime_get_sync(i32) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_hid_get_report_request*, i32, i8*, i32) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
