; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, %struct.gb_hid* }
%struct.gb_hid = type { i32 }

@HID_MIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_MAX_BUFFER_SIZE = common dso_local global i32 0, align 4
@HID_QUIRK_NO_INIT_REPORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @gb_hid_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_hid_start(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.gb_hid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 1
  %9 = load %struct.gb_hid*, %struct.gb_hid** %8, align 8
  store %struct.gb_hid* %9, %struct.gb_hid** %4, align 8
  %10 = load i32, i32* @HID_MIN_BUFFER_SIZE, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %12 = load i32, i32* @HID_INPUT_REPORT, align 4
  %13 = call i32 @gb_hid_find_max_report(%struct.hid_device* %11, i32 %12, i32* %5)
  %14 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %15 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %16 = call i32 @gb_hid_find_max_report(%struct.hid_device* %14, i32 %15, i32* %5)
  %17 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %18 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %19 = call i32 @gb_hid_find_max_report(%struct.hid_device* %17, i32 %18, i32* %5)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @HID_MAX_BUFFER_SIZE, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @HID_MAX_BUFFER_SIZE, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %1
  %26 = load %struct.gb_hid*, %struct.gb_hid** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @gb_hid_alloc_buffers(%struct.gb_hid* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %44

33:                                               ; preds = %25
  %34 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HID_QUIRK_NO_INIT_REPORTS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load %struct.gb_hid*, %struct.gb_hid** %4, align 8
  %42 = call i32 @gb_hid_init_reports(%struct.gb_hid* %41)
  br label %43

43:                                               ; preds = %40, %33
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @gb_hid_find_max_report(%struct.hid_device*, i32, i32*) #1

declare dso_local i32 @gb_hid_alloc_buffers(%struct.gb_hid*, i32) #1

declare dso_local i32 @gb_hid_init_reports(%struct.gb_hid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
