; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_set_ep_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_set_ep_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb300 = type { i32 }
%struct.fusb300_ep_info = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fusb300*, %struct.fusb300_ep_info*)* @set_ep_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ep_reg(%struct.fusb300* %0, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8 %1) #0 {
  %3 = alloca %struct.fusb300*, align 8
  store %struct.fusb300* %0, %struct.fusb300** %3, align 8
  %4 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %5 = call i32 @fusb300_set_eptype(%struct.fusb300* %4, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8 %1)
  %6 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %7 = call i32 @fusb300_set_epdir(%struct.fusb300* %6, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8 %1)
  %8 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %9 = call i32 @fusb300_set_epmps(%struct.fusb300* %8, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8 %1)
  %10 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %1, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %15 = call i32 @fusb300_set_interval(%struct.fusb300* %14, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8 %1)
  br label %16

16:                                               ; preds = %13, %2
  %17 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %1, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %22 = call i32 @fusb300_set_bwnum(%struct.fusb300* %21, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8 %1)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load %struct.fusb300*, %struct.fusb300** %3, align 8
  %25 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %1, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @fusb300_set_ep_active(%struct.fusb300* %24, i32 %26)
  ret void
}

declare dso_local i32 @fusb300_set_eptype(%struct.fusb300*, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8) #1

declare dso_local i32 @fusb300_set_epdir(%struct.fusb300*, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8) #1

declare dso_local i32 @fusb300_set_epmps(%struct.fusb300*, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8) #1

declare dso_local i32 @fusb300_set_interval(%struct.fusb300*, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8) #1

declare dso_local i32 @fusb300_set_bwnum(%struct.fusb300*, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8) #1

declare dso_local i32 @fusb300_set_ep_active(%struct.fusb300*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
