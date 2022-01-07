; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_mbox_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_mbox_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb = type { i32 }
%struct.tegra_xusb_mbox_msg = type { i32 }

@XUSB_CFG_ARU_MBOX_DATA_OUT = common dso_local global i32 0, align 4
@XUSB_CFG_ARU_MBOX_CMD = common dso_local global i32 0, align 4
@MBOX_DEST_SMI = common dso_local global i32 0, align 4
@MBOX_OWNER_NONE = common dso_local global i32 0, align 4
@XUSB_CFG_ARU_MBOX_OWNER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tegra_xusb_mbox_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_mbox_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tegra_xusb*, align 8
  %6 = alloca %struct.tegra_xusb_mbox_msg, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.tegra_xusb*
  store %struct.tegra_xusb* %9, %struct.tegra_xusb** %5, align 8
  %10 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %14 = load i32, i32* @XUSB_CFG_ARU_MBOX_DATA_OUT, align 4
  %15 = call i32 @fpci_readl(%struct.tegra_xusb* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @tegra_xusb_mbox_unpack(%struct.tegra_xusb_mbox_msg* %6, i32 %16)
  %18 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %19 = load i32, i32* @XUSB_CFG_ARU_MBOX_CMD, align 4
  %20 = call i32 @fpci_readl(%struct.tegra_xusb* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @MBOX_DEST_SMI, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @XUSB_CFG_ARU_MBOX_CMD, align 4
  %28 = call i32 @fpci_writel(%struct.tegra_xusb* %25, i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, %struct.tegra_xusb_mbox_msg* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @tegra_xusb_mbox_cmd_requires_ack(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %35 = load i32, i32* @MBOX_OWNER_NONE, align 4
  %36 = load i32, i32* @XUSB_CFG_ARU_MBOX_OWNER, align 4
  %37 = call i32 @fpci_writel(%struct.tegra_xusb* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %2
  %39 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %40 = call i32 @tegra_xusb_mbox_handle(%struct.tegra_xusb* %39, %struct.tegra_xusb_mbox_msg* %6)
  %41 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %42 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fpci_readl(%struct.tegra_xusb*, i32) #1

declare dso_local i32 @tegra_xusb_mbox_unpack(%struct.tegra_xusb_mbox_msg*, i32) #1

declare dso_local i32 @fpci_writel(%struct.tegra_xusb*, i32, i32) #1

declare dso_local i32 @tegra_xusb_mbox_cmd_requires_ack(i32) #1

declare dso_local i32 @tegra_xusb_mbox_handle(%struct.tegra_xusb*, %struct.tegra_xusb_mbox_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
