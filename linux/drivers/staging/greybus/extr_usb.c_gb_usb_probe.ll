; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_usb.c_gb_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_usb.c_gb_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_device = type { %struct.TYPE_2__*, i32, %struct.device }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.gbphy_device_id = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gb_usb_device = type { %struct.gbphy_device*, %struct.gb_connection* }
%struct.usb_hcd = type { i32 }

@usb_gb_hc_driver = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"USB protocol disabled\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbphy_device*, %struct.gbphy_device_id*)* @gb_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_usb_probe(%struct.gbphy_device* %0, %struct.gbphy_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gbphy_device*, align 8
  %5 = alloca %struct.gbphy_device_id*, align 8
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.gb_usb_device*, align 8
  %9 = alloca %struct.usb_hcd*, align 8
  %10 = alloca i32, align 4
  store %struct.gbphy_device* %0, %struct.gbphy_device** %4, align 8
  store %struct.gbphy_device_id* %1, %struct.gbphy_device_id** %5, align 8
  %11 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %12 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %11, i32 0, i32 2
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = call i32 @dev_name(%struct.device* %14)
  %16 = call %struct.usb_hcd* @usb_create_hcd(i32* @usb_gb_hc_driver, %struct.device* %13, i32 %15)
  store %struct.usb_hcd* %16, %struct.usb_hcd** %9, align 8
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %18 = icmp ne %struct.usb_hcd* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %76

22:                                               ; preds = %2
  %23 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %24 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %27 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = call %struct.gb_connection* @gb_connection_create(i32 %25, i32 %31, i32* null)
  store %struct.gb_connection* %32, %struct.gb_connection** %6, align 8
  %33 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %34 = call i64 @IS_ERR(%struct.gb_connection* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.gb_connection* %37)
  store i32 %38, i32* %10, align 4
  br label %72

39:                                               ; preds = %22
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %41 = call %struct.gb_usb_device* @to_gb_usb_device(%struct.usb_hcd* %40)
  store %struct.gb_usb_device* %41, %struct.gb_usb_device** %8, align 8
  %42 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %43 = load %struct.gb_usb_device*, %struct.gb_usb_device** %8, align 8
  %44 = getelementptr inbounds %struct.gb_usb_device, %struct.gb_usb_device* %43, i32 0, i32 1
  store %struct.gb_connection* %42, %struct.gb_connection** %44, align 8
  %45 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %46 = load %struct.gb_usb_device*, %struct.gb_usb_device** %8, align 8
  %47 = call i32 @gb_connection_set_data(%struct.gb_connection* %45, %struct.gb_usb_device* %46)
  %48 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %49 = load %struct.gb_usb_device*, %struct.gb_usb_device** %8, align 8
  %50 = getelementptr inbounds %struct.gb_usb_device, %struct.gb_usb_device* %49, i32 0, i32 0
  store %struct.gbphy_device* %48, %struct.gbphy_device** %50, align 8
  %51 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %52 = load %struct.gb_usb_device*, %struct.gb_usb_device** %8, align 8
  %53 = call i32 @gb_gbphy_set_data(%struct.gbphy_device* %51, %struct.gb_usb_device* %52)
  %54 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %55 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %57 = call i32 @gb_connection_enable(%struct.gb_connection* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %39
  br label %69

61:                                               ; preds = %39
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = call i32 @dev_warn(%struct.device* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @EPROTONOSUPPORT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %61
  %67 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %68 = call i32 @gb_connection_disable(%struct.gb_connection* %67)
  br label %69

69:                                               ; preds = %66, %60
  %70 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %71 = call i32 @gb_connection_destroy(%struct.gb_connection* %70)
  br label %72

72:                                               ; preds = %69, %36
  %73 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %74 = call i32 @usb_put_hcd(%struct.usb_hcd* %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %19
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, %struct.device*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.gb_connection* @gb_connection_create(i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local %struct.gb_usb_device* @to_gb_usb_device(%struct.usb_hcd*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.gb_usb_device*) #1

declare dso_local i32 @gb_gbphy_set_data(%struct.gbphy_device*, %struct.gb_usb_device*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
