; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-orion.c_orion_usb_phy_v1_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-orion.c_orion_usb_phy_v1_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }

@USB_CAUSE = common dso_local global i32 0, align 4
@USB_MASK = common dso_local global i32 0, align 4
@USB_CMD = common dso_local global i32 0, align 4
@USB_CMD_RESET = common dso_local global i32 0, align 4
@USB_IPG = common dso_local global i32 0, align 4
@USB_PHY_PWR_CTRL = common dso_local global i32 0, align 4
@USB_PHY_TX_CTRL = common dso_local global i32 0, align 4
@USB_PHY_RX_CTRL = common dso_local global i32 0, align 4
@USB_PHY_IVREF_CTRL = common dso_local global i32 0, align 4
@USB_PHY_TST_GRP_CTRL = common dso_local global i32 0, align 4
@USB_CMD_RUN = common dso_local global i32 0, align 4
@USB_MODE = common dso_local global i32 0, align 4
@USB_MODE_SDIS = common dso_local global i32 0, align 4
@USB_MODE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @orion_usb_phy_v1_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orion_usb_phy_v1_setup(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %3 = load i32, i32* @USB_CAUSE, align 4
  %4 = call i32 @wrl(i32 %3, i32 0)
  %5 = load i32, i32* @USB_MASK, align 4
  %6 = call i32 @wrl(i32 %5, i32 0)
  %7 = load i32, i32* @USB_CMD, align 4
  %8 = load i32, i32* @USB_CMD, align 4
  %9 = call i32 @rdl(i32 %8)
  %10 = load i32, i32* @USB_CMD_RESET, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @wrl(i32 %7, i32 %11)
  br label %13

13:                                               ; preds = %19, %1
  %14 = load i32, i32* @USB_CMD, align 4
  %15 = call i32 @rdl(i32 %14)
  %16 = load i32, i32* @USB_CMD_RESET, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %13

20:                                               ; preds = %13
  %21 = load i32, i32* @USB_IPG, align 4
  %22 = load i32, i32* @USB_IPG, align 4
  %23 = call i32 @rdl(i32 %22)
  %24 = and i32 %23, -32513
  %25 = or i32 %24, 3072
  %26 = call i32 @wrl(i32 %21, i32 %25)
  %27 = load i32, i32* @USB_PHY_PWR_CTRL, align 4
  %28 = load i32, i32* @USB_PHY_PWR_CTRL, align 4
  %29 = call i32 @rdl(i32 %28)
  %30 = and i32 %29, -193
  %31 = or i32 %30, 64
  %32 = call i32 @wrl(i32 %27, i32 %31)
  %33 = load i32, i32* @USB_PHY_TX_CTRL, align 4
  %34 = load i32, i32* @USB_PHY_TX_CTRL, align 4
  %35 = call i32 @rdl(i32 %34)
  %36 = and i32 %35, -121
  %37 = or i32 %36, 2105408
  %38 = call i32 @wrl(i32 %33, i32 %37)
  %39 = load i32, i32* @USB_PHY_RX_CTRL, align 4
  %40 = load i32, i32* @USB_PHY_RX_CTRL, align 4
  %41 = call i32 @rdl(i32 %40)
  %42 = and i32 %41, -203424753
  %43 = or i32 %42, -1073741808
  %44 = call i32 @wrl(i32 %39, i32 %43)
  %45 = load i32, i32* @USB_PHY_IVREF_CTRL, align 4
  %46 = load i32, i32* @USB_PHY_IVREF_CTRL, align 4
  %47 = call i32 @rdl(i32 %46)
  %48 = and i32 %47, -524292
  %49 = or i32 %48, 50
  %50 = call i32 @wrl(i32 %45, i32 %49)
  %51 = load i32, i32* @USB_PHY_TST_GRP_CTRL, align 4
  %52 = load i32, i32* @USB_PHY_TST_GRP_CTRL, align 4
  %53 = call i32 @rdl(i32 %52)
  %54 = and i32 %53, -32769
  %55 = call i32 @wrl(i32 %51, i32 %54)
  %56 = load i32, i32* @USB_CMD, align 4
  %57 = load i32, i32* @USB_CMD, align 4
  %58 = call i32 @rdl(i32 %57)
  %59 = load i32, i32* @USB_CMD_RUN, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @wrl(i32 %56, i32 %61)
  %63 = load i32, i32* @USB_CMD, align 4
  %64 = load i32, i32* @USB_CMD, align 4
  %65 = call i32 @rdl(i32 %64)
  %66 = load i32, i32* @USB_CMD_RESET, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @wrl(i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %75, %20
  %70 = load i32, i32* @USB_CMD, align 4
  %71 = call i32 @rdl(i32 %70)
  %72 = load i32, i32* @USB_CMD_RESET, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %69

76:                                               ; preds = %69
  %77 = load i32, i32* @USB_MODE, align 4
  %78 = load i32, i32* @USB_MODE_SDIS, align 4
  %79 = load i32, i32* @USB_MODE_HOST, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @wrl(i32 %77, i32 %80)
  ret void
}

declare dso_local i32 @wrl(i32, i32) #1

declare dso_local i32 @rdl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
