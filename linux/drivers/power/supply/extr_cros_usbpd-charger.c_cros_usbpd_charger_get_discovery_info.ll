; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_get_discovery_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_get_discovery_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_data = type { i32, i32, i32, %struct.charger_data* }
%struct.charger_data = type { i32 }
%struct.ec_params_usb_pd_discovery_entry = type { i32, i32, i32 }
%struct.ec_params_usb_pd_info_request = type { i32 }

@EC_CMD_USB_PD_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to query discovery info (err:0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Port %d: VID = 0x%x, PID=0x%x, PTYPE=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_data*)* @cros_usbpd_charger_get_discovery_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_usbpd_charger_get_discovery_info(%struct.port_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.port_data*, align 8
  %4 = alloca %struct.charger_data*, align 8
  %5 = alloca %struct.ec_params_usb_pd_discovery_entry, align 4
  %6 = alloca %struct.ec_params_usb_pd_info_request, align 4
  %7 = alloca i32, align 4
  store %struct.port_data* %0, %struct.port_data** %3, align 8
  %8 = load %struct.port_data*, %struct.port_data** %3, align 8
  %9 = getelementptr inbounds %struct.port_data, %struct.port_data* %8, i32 0, i32 3
  %10 = load %struct.charger_data*, %struct.charger_data** %9, align 8
  store %struct.charger_data* %10, %struct.charger_data** %4, align 8
  %11 = load %struct.port_data*, %struct.port_data** %3, align 8
  %12 = getelementptr inbounds %struct.port_data, %struct.port_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.ec_params_usb_pd_info_request, %struct.ec_params_usb_pd_info_request* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.charger_data*, %struct.charger_data** %4, align 8
  %16 = load i32, i32* @EC_CMD_USB_PD_DISCOVERY, align 4
  %17 = call i32 @cros_usbpd_charger_ec_command(%struct.charger_data* %15, i32 0, i32 %16, %struct.ec_params_usb_pd_info_request* %6, i32 4, %struct.ec_params_usb_pd_discovery_entry* %5, i32 12)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.charger_data*, %struct.charger_data** %4, align 8
  %22 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %53

27:                                               ; preds = %1
  %28 = load %struct.charger_data*, %struct.charger_data** %4, align 8
  %29 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.port_data*, %struct.port_data** %3, align 8
  %32 = getelementptr inbounds %struct.port_data, %struct.port_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.ec_params_usb_pd_discovery_entry, %struct.ec_params_usb_pd_discovery_entry* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ec_params_usb_pd_discovery_entry, %struct.ec_params_usb_pd_discovery_entry* %5, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ec_params_usb_pd_discovery_entry, %struct.ec_params_usb_pd_discovery_entry* %5, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35, i32 %37, i32 %39)
  %41 = load %struct.port_data*, %struct.port_data** %3, align 8
  %42 = getelementptr inbounds %struct.port_data, %struct.port_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.ec_params_usb_pd_discovery_entry, %struct.ec_params_usb_pd_discovery_entry* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @snprintf(i32 %43, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load %struct.port_data*, %struct.port_data** %3, align 8
  %48 = getelementptr inbounds %struct.port_data, %struct.port_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.ec_params_usb_pd_discovery_entry, %struct.ec_params_usb_pd_discovery_entry* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snprintf(i32 %49, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %27, %20
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @cros_usbpd_charger_ec_command(%struct.charger_data*, i32, i32, %struct.ec_params_usb_pd_info_request*, i32, %struct.ec_params_usb_pd_discovery_entry*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
