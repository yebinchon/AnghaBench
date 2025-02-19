; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_pre_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.acm = type { i64, i32 }

@EVENT_RX_STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @acm_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_pre_reset(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.acm*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.acm* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.acm* %5, %struct.acm** %3, align 8
  %6 = load i32, i32* @EVENT_RX_STALL, align 4
  %7 = load %struct.acm*, %struct.acm** %3, align 8
  %8 = getelementptr inbounds %struct.acm, %struct.acm* %7, i32 0, i32 1
  %9 = call i32 @clear_bit(i32 %6, i32* %8)
  %10 = load %struct.acm*, %struct.acm** %3, align 8
  %11 = getelementptr inbounds %struct.acm, %struct.acm* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  ret i32 0
}

declare dso_local %struct.acm* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
