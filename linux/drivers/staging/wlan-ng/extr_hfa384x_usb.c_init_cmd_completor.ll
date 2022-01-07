; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_init_cmd_completor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_init_cmd_completor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbctlx_completor = type { i32 }
%struct.usbctlx_cmd_completor = type { %struct.usbctlx_completor, %struct.hfa384x_cmdresult*, %struct.hfa384x_usb_statusresp* }
%struct.hfa384x_usb_statusresp = type { i32 }
%struct.hfa384x_cmdresult = type { i32 }

@usbctlx_cmd_completor_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usbctlx_completor* (%struct.usbctlx_cmd_completor*, %struct.hfa384x_usb_statusresp*, %struct.hfa384x_cmdresult*)* @init_cmd_completor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usbctlx_completor* @init_cmd_completor(%struct.usbctlx_cmd_completor* %0, %struct.hfa384x_usb_statusresp* %1, %struct.hfa384x_cmdresult* %2) #0 {
  %4 = alloca %struct.usbctlx_cmd_completor*, align 8
  %5 = alloca %struct.hfa384x_usb_statusresp*, align 8
  %6 = alloca %struct.hfa384x_cmdresult*, align 8
  store %struct.usbctlx_cmd_completor* %0, %struct.usbctlx_cmd_completor** %4, align 8
  store %struct.hfa384x_usb_statusresp* %1, %struct.hfa384x_usb_statusresp** %5, align 8
  store %struct.hfa384x_cmdresult* %2, %struct.hfa384x_cmdresult** %6, align 8
  %7 = load i32, i32* @usbctlx_cmd_completor_fn, align 4
  %8 = load %struct.usbctlx_cmd_completor*, %struct.usbctlx_cmd_completor** %4, align 8
  %9 = getelementptr inbounds %struct.usbctlx_cmd_completor, %struct.usbctlx_cmd_completor* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.usbctlx_completor, %struct.usbctlx_completor* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 8
  %11 = load %struct.hfa384x_usb_statusresp*, %struct.hfa384x_usb_statusresp** %5, align 8
  %12 = load %struct.usbctlx_cmd_completor*, %struct.usbctlx_cmd_completor** %4, align 8
  %13 = getelementptr inbounds %struct.usbctlx_cmd_completor, %struct.usbctlx_cmd_completor* %12, i32 0, i32 2
  store %struct.hfa384x_usb_statusresp* %11, %struct.hfa384x_usb_statusresp** %13, align 8
  %14 = load %struct.hfa384x_cmdresult*, %struct.hfa384x_cmdresult** %6, align 8
  %15 = load %struct.usbctlx_cmd_completor*, %struct.usbctlx_cmd_completor** %4, align 8
  %16 = getelementptr inbounds %struct.usbctlx_cmd_completor, %struct.usbctlx_cmd_completor* %15, i32 0, i32 1
  store %struct.hfa384x_cmdresult* %14, %struct.hfa384x_cmdresult** %16, align 8
  %17 = load %struct.usbctlx_cmd_completor*, %struct.usbctlx_cmd_completor** %4, align 8
  %18 = getelementptr inbounds %struct.usbctlx_cmd_completor, %struct.usbctlx_cmd_completor* %17, i32 0, i32 0
  ret %struct.usbctlx_completor* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
