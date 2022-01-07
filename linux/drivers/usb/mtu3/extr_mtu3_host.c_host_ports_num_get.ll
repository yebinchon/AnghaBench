; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_host.c_host_ports_num_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_host.c_host_ports_num_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssusb_mtk = type { i32, i32, i32, i32 }

@U3D_SSUSB_IP_XHCI_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"host - u2_ports:%d, u3_ports:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssusb_mtk*)* @host_ports_num_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host_ports_num_get(%struct.ssusb_mtk* %0) #0 {
  %2 = alloca %struct.ssusb_mtk*, align 8
  %3 = alloca i32, align 4
  store %struct.ssusb_mtk* %0, %struct.ssusb_mtk** %2, align 8
  %4 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %5 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @U3D_SSUSB_IP_XHCI_CAP, align 4
  %8 = call i32 @mtu3_readl(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @SSUSB_IP_XHCI_U2_PORT_NUM(i32 %9)
  %11 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %12 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @SSUSB_IP_XHCI_U3_PORT_NUM(i32 %13)
  %15 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %16 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %18 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %21 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %24 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  ret void
}

declare dso_local i32 @mtu3_readl(i32, i32) #1

declare dso_local i32 @SSUSB_IP_XHCI_U2_PORT_NUM(i32) #1

declare dso_local i32 @SSUSB_IP_XHCI_U3_PORT_NUM(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
