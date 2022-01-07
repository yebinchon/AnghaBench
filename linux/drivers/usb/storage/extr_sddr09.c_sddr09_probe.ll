; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i32 }
%struct.usb_interface = type { i32 }
%struct.us_data = type { i64, i8*, i32, i8*, i32 }

@sddr09_usb_ids = common dso_local global %struct.usb_device_id* null, align 8
@sddr09_unusual_dev_list = common dso_local global i32 0, align 4
@sddr09_host_template = common dso_local global i32 0, align 4
@USB_PR_DPCM_USB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Control/Bulk-EUSB/SDDR09\00", align 1
@dpcm_transport = common dso_local global i32 0, align 4
@usb_stor_CB_reset = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"EUSB/SDDR09\00", align 1
@sddr09_transport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @sddr09_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %9 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_device_id*, %struct.usb_device_id** @sddr09_usb_ids, align 8
  %12 = ptrtoint %struct.usb_device_id* %10 to i64
  %13 = ptrtoint %struct.usb_device_id* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  %16 = load i32, i32* @sddr09_unusual_dev_list, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @usb_stor_probe1(%struct.us_data** %6, %struct.usb_interface* %8, %struct.usb_device_id* %9, i32 %19, i32* @sddr09_host_template)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.us_data*, %struct.us_data** %6, align 8
  %27 = getelementptr inbounds %struct.us_data, %struct.us_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @USB_PR_DPCM_USB, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.us_data*, %struct.us_data** %6, align 8
  %33 = getelementptr inbounds %struct.us_data, %struct.us_data* %32, i32 0, i32 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* @dpcm_transport, align 4
  %35 = load %struct.us_data*, %struct.us_data** %6, align 8
  %36 = getelementptr inbounds %struct.us_data, %struct.us_data* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** @usb_stor_CB_reset, align 8
  %38 = load %struct.us_data*, %struct.us_data** %6, align 8
  %39 = getelementptr inbounds %struct.us_data, %struct.us_data* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.us_data*, %struct.us_data** %6, align 8
  %41 = getelementptr inbounds %struct.us_data, %struct.us_data* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  br label %53

42:                                               ; preds = %25
  %43 = load %struct.us_data*, %struct.us_data** %6, align 8
  %44 = getelementptr inbounds %struct.us_data, %struct.us_data* %43, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @sddr09_transport, align 4
  %46 = load %struct.us_data*, %struct.us_data** %6, align 8
  %47 = getelementptr inbounds %struct.us_data, %struct.us_data* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** @usb_stor_CB_reset, align 8
  %49 = load %struct.us_data*, %struct.us_data** %6, align 8
  %50 = getelementptr inbounds %struct.us_data, %struct.us_data* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.us_data*, %struct.us_data** %6, align 8
  %52 = getelementptr inbounds %struct.us_data, %struct.us_data* %51, i32 0, i32 2
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %42, %31
  %54 = load %struct.us_data*, %struct.us_data** %6, align 8
  %55 = call i32 @usb_stor_probe2(%struct.us_data* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %23
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @usb_stor_probe1(%struct.us_data**, %struct.usb_interface*, %struct.usb_device_id*, i32, i32*) #1

declare dso_local i32 @usb_stor_probe2(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
