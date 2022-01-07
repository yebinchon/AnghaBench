; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_realtek_cr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_realtek_cr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i32 }
%struct.usb_interface = type { i32 }
%struct.us_data = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Probe Realtek Card Reader!\0A\00", align 1
@realtek_cr_ids = common dso_local global %struct.usb_device_id* null, align 8
@realtek_cr_unusual_dev_list = common dso_local global i32 0, align 4
@realtek_cr_host_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @realtek_cr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realtek_cr_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %9 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %8, i32 0, i32 0
  %10 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %13 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %14 = load %struct.usb_device_id*, %struct.usb_device_id** @realtek_cr_ids, align 8
  %15 = ptrtoint %struct.usb_device_id* %13 to i64
  %16 = ptrtoint %struct.usb_device_id* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 4
  %19 = load i32, i32* @realtek_cr_unusual_dev_list, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @usb_stor_probe1(%struct.us_data** %6, %struct.usb_interface* %11, %struct.usb_device_id* %12, i32 %22, i32* @realtek_cr_host_template)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.us_data*, %struct.us_data** %6, align 8
  %30 = call i32 @usb_stor_probe2(%struct.us_data* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %26
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @usb_stor_probe1(%struct.us_data**, %struct.usb_interface*, %struct.usb_device_id*, i32, i32*) #1

declare dso_local i32 @usb_stor_probe2(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
