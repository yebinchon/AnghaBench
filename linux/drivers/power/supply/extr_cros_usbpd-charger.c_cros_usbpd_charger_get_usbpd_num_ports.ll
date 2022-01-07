; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_get_usbpd_num_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_get_usbpd_num_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_data = type { i32 }
%struct.ec_response_usb_pd_ports = type { i32 }

@EC_CMD_USB_PD_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unable to get the number or ports (err:0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_data*)* @cros_usbpd_charger_get_usbpd_num_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_usbpd_charger_get_usbpd_num_ports(%struct.charger_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.charger_data*, align 8
  %4 = alloca %struct.ec_response_usb_pd_ports, align 4
  %5 = alloca i32, align 4
  store %struct.charger_data* %0, %struct.charger_data** %3, align 8
  %6 = load %struct.charger_data*, %struct.charger_data** %3, align 8
  %7 = load i32, i32* @EC_CMD_USB_PD_PORTS, align 4
  %8 = call i32 @cros_usbpd_charger_ec_command(%struct.charger_data* %6, i32 0, i32 %7, i32* null, i32 0, %struct.ec_response_usb_pd_ports* %4, i32 4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.charger_data*, %struct.charger_data** %3, align 8
  %13 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %21

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.ec_response_usb_pd_ports, %struct.ec_response_usb_pd_ports* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @cros_usbpd_charger_ec_command(%struct.charger_data*, i32, i32, i32*, i32, %struct.ec_response_usb_pd_ports*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
