; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }

@DIEPMSK_TIMEOUTMSK = common dso_local global i32 0, align 4
@DIEPMSK_AHBERRMSK = common dso_local global i32 0, align 4
@DIEPMSK_EPDISBLDMSK = common dso_local global i32 0, align 4
@DIEPMSK_XFERCOMPLMSK = common dso_local global i32 0, align 4
@DIEPMSK = common dso_local global i32 0, align 4
@DOEPMSK_SETUPMSK = common dso_local global i32 0, align 4
@DOEPMSK_AHBERRMSK = common dso_local global i32 0, align 4
@DOEPMSK_EPDISBLDMSK = common dso_local global i32 0, align 4
@DOEPMSK_XFERCOMPLMSK = common dso_local global i32 0, align 4
@DOEPMSK = common dso_local global i32 0, align 4
@DAINTMSK = common dso_local global i32 0, align 4
@DCTL = common dso_local global i32 0, align 4
@DCTL_SFTDISCON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"GRXFSIZ=0x%08x, GNPTXFSIZ=0x%08x\0A\00", align 1
@GRXFSIZ = common dso_local global i32 0, align 4
@GNPTXFSIZ = common dso_local global i32 0, align 4
@GAHBCFG = common dso_local global i32 0, align 4
@GAHBCFG_DMA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_hsotg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hsotg_init(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %3 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %4 = load i32, i32* @DIEPMSK_TIMEOUTMSK, align 4
  %5 = load i32, i32* @DIEPMSK_AHBERRMSK, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @DIEPMSK_EPDISBLDMSK, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @DIEPMSK_XFERCOMPLMSK, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @DIEPMSK, align 4
  %12 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %3, i32 %10, i32 %11)
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %14 = load i32, i32* @DOEPMSK_SETUPMSK, align 4
  %15 = load i32, i32* @DOEPMSK_AHBERRMSK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @DOEPMSK_EPDISBLDMSK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DOEPMSK_XFERCOMPLMSK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @DOEPMSK, align 4
  %22 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %13, i32 %20, i32 %21)
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %24 = load i32, i32* @DAINTMSK, align 4
  %25 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %23, i32 0, i32 %24)
  %26 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %27 = load i32, i32* @DCTL, align 4
  %28 = load i32, i32* @DCTL_SFTDISCON, align 4
  %29 = call i32 @dwc2_set_bit(%struct.dwc2_hsotg* %26, i32 %27, i32 %28)
  %30 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %31 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %34 = load i32, i32* @GRXFSIZ, align 4
  %35 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %33, i32 %34)
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %37 = load i32, i32* @GNPTXFSIZ, align 4
  %38 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %36, i32 %37)
  %39 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %41 = call i32 @dwc2_hsotg_init_fifo(%struct.dwc2_hsotg* %40)
  %42 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %43 = call i64 @using_dma(%struct.dwc2_hsotg* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %1
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %47 = load i32, i32* @GAHBCFG, align 4
  %48 = load i32, i32* @GAHBCFG_DMA_EN, align 4
  %49 = call i32 @dwc2_set_bit(%struct.dwc2_hsotg* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dwc2_set_bit(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_hsotg_init_fifo(%struct.dwc2_hsotg*) #1

declare dso_local i64 @using_dma(%struct.dwc2_hsotg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
