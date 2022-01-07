; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_usbctlx_cmd_completor_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_usbctlx_cmd_completor_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbctlx_completor = type { i32 }
%struct.usbctlx_cmd_completor = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbctlx_completor*)* @usbctlx_cmd_completor_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbctlx_cmd_completor_fn(%struct.usbctlx_completor* %0) #0 {
  %2 = alloca %struct.usbctlx_completor*, align 8
  %3 = alloca %struct.usbctlx_cmd_completor*, align 8
  store %struct.usbctlx_completor* %0, %struct.usbctlx_completor** %2, align 8
  %4 = load %struct.usbctlx_completor*, %struct.usbctlx_completor** %2, align 8
  %5 = bitcast %struct.usbctlx_completor* %4 to %struct.usbctlx_cmd_completor*
  store %struct.usbctlx_cmd_completor* %5, %struct.usbctlx_cmd_completor** %3, align 8
  %6 = load %struct.usbctlx_cmd_completor*, %struct.usbctlx_cmd_completor** %3, align 8
  %7 = getelementptr inbounds %struct.usbctlx_cmd_completor, %struct.usbctlx_cmd_completor* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.usbctlx_cmd_completor*, %struct.usbctlx_cmd_completor** %3, align 8
  %10 = getelementptr inbounds %struct.usbctlx_cmd_completor, %struct.usbctlx_cmd_completor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @usbctlx_get_status(i32 %8, i32 %11)
  ret i32 %12
}

declare dso_local i32 @usbctlx_get_status(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
