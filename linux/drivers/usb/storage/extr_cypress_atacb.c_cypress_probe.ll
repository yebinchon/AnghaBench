; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_cypress_atacb.c_cypress_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_cypress_atacb.c_cypress_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i32 }
%struct.usb_interface = type { i32 }
%struct.us_data = type { i8*, i32 }
%struct.usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@cypress_usb_ids = common dso_local global %struct.usb_device_id* null, align 8
@cypress_unusual_dev_list = common dso_local global i32 0, align 4
@cypress_host_template = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Transparent SCSI with Cypress ATACB\00", align 1
@cypress_atacb_passthrough = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Transparent SCSI\00", align 1
@usb_stor_transparent_scsi_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @cypress_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_device_id*, %struct.usb_device_id** @cypress_usb_ids, align 8
  %13 = ptrtoint %struct.usb_device_id* %11 to i64
  %14 = ptrtoint %struct.usb_device_id* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 4
  %17 = load i32, i32* @cypress_unusual_dev_list, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @usb_stor_probe1(%struct.us_data** %6, %struct.usb_interface* %9, %struct.usb_device_id* %10, i32 %20, i32* @cypress_host_template)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %62

26:                                               ; preds = %2
  %27 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %28 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %27)
  store %struct.usb_device* %28, %struct.usb_device** %8, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 56
  br i1 %33, label %46, label %34

34:                                               ; preds = %26
  %35 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 78
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 100
  br i1 %45, label %46, label %52

46:                                               ; preds = %40, %34, %26
  %47 = load %struct.us_data*, %struct.us_data** %6, align 8
  %48 = getelementptr inbounds %struct.us_data, %struct.us_data* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %48, align 8
  %49 = load i32, i32* @cypress_atacb_passthrough, align 4
  %50 = load %struct.us_data*, %struct.us_data** %6, align 8
  %51 = getelementptr inbounds %struct.us_data, %struct.us_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %58

52:                                               ; preds = %40
  %53 = load %struct.us_data*, %struct.us_data** %6, align 8
  %54 = getelementptr inbounds %struct.us_data, %struct.us_data* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %54, align 8
  %55 = load i32, i32* @usb_stor_transparent_scsi_command, align 4
  %56 = load %struct.us_data*, %struct.us_data** %6, align 8
  %57 = getelementptr inbounds %struct.us_data, %struct.us_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.us_data*, %struct.us_data** %6, align 8
  %60 = call i32 @usb_stor_probe2(%struct.us_data* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %24
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @usb_stor_probe1(%struct.us_data**, %struct.usb_interface*, %struct.usb_device_id*, i32, i32*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_stor_probe2(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
