; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_core.c_mtu3_ep_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_core.c_mtu3_ep_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3_ep = type { i32, i32, %struct.mtu3* }
%struct.mtu3 = type { i32 }

@U3D_EP_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtu3_ep*)* @mtu3_ep_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtu3_ep_reset(%struct.mtu3_ep* %0) #0 {
  %2 = alloca %struct.mtu3_ep*, align 8
  %3 = alloca %struct.mtu3*, align 8
  %4 = alloca i32, align 4
  store %struct.mtu3_ep* %0, %struct.mtu3_ep** %2, align 8
  %5 = load %struct.mtu3_ep*, %struct.mtu3_ep** %2, align 8
  %6 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %5, i32 0, i32 2
  %7 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  store %struct.mtu3* %7, %struct.mtu3** %3, align 8
  %8 = load %struct.mtu3_ep*, %struct.mtu3_ep** %2, align 8
  %9 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mtu3_ep*, %struct.mtu3_ep** %2, align 8
  %12 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @EP_RST(i32 %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %16 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @U3D_EP_RST, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @mtu3_setbits(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %22 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @U3D_EP_RST, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @mtu3_clrbits(i32 %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @EP_RST(i32, i32) #1

declare dso_local i32 @mtu3_setbits(i32, i32, i32) #1

declare dso_local i32 @mtu3_clrbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
