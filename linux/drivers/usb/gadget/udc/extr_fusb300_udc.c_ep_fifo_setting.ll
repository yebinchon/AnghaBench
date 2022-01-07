; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_ep_fifo_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_ep_fifo_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb300 = type { i32 }
%struct.fusb300_ep_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fusb300*, i32)* @ep_fifo_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_fifo_setting(%struct.fusb300* %0, i32 %1) #0 {
  %3 = alloca %struct.fusb300_ep_info, align 4
  %4 = alloca %struct.fusb300*, align 8
  %5 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %3, i32 0, i32 0
  store i32 %1, i32* %5, align 4
  store %struct.fusb300* %0, %struct.fusb300** %4, align 8
  %6 = load %struct.fusb300*, %struct.fusb300** %4, align 8
  %7 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @fusb300_set_fifo_entry(%struct.fusb300* %6, i32 %8)
  %10 = load %struct.fusb300*, %struct.fusb300** %4, align 8
  %11 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @fusb300_set_start_entry(%struct.fusb300* %10, i32 %12)
  %14 = load %struct.fusb300*, %struct.fusb300** %4, align 8
  %15 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fusb300_set_epaddrofs(%struct.fusb300* %14, i32 %16)
  ret void
}

declare dso_local i32 @fusb300_set_fifo_entry(%struct.fusb300*, i32) #1

declare dso_local i32 @fusb300_set_start_entry(%struct.fusb300*, i32) #1

declare dso_local i32 @fusb300_set_epaddrofs(%struct.fusb300*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
