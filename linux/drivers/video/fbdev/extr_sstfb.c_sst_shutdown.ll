; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sstfb.c_sst_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sstfb.c_sst_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.sstfb_par* }
%struct.sstfb_par = type { %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 (%struct.fb_info.0*, %struct.pll_timing*, i32)* }
%struct.fb_info.0 = type opaque
%struct.pll_timing = type opaque
%struct.pci_dev = type { i32 }
%struct.pll_timing.1 = type { i32 }

@PCI_INIT_ENABLE = common dso_local global i32 0, align 4
@PCI_EN_INIT_WR = common dso_local global i32 0, align 4
@FBIINIT1 = common dso_local global i32 0, align 4
@VIDEO_RESET = common dso_local global i32 0, align 4
@EN_BLANKING = common dso_local global i32 0, align 4
@FBIINIT2 = common dso_local global i32 0, align 4
@EN_DRAM_REFRESH = common dso_local global i32 0, align 4
@FBIINIT0 = common dso_local global i32 0, align 4
@FBI_RESET = common dso_local global i32 0, align 4
@FIFO_RESET = common dso_local global i32 0, align 4
@PCI_REMAP_DAC = common dso_local global i32 0, align 4
@GFX_CLOCK = common dso_local global i32 0, align 4
@DIS_VGA_PASSTHROUGH = common dso_local global i32 0, align 4
@PCI_VCLK_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @sst_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sst_shutdown(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.sstfb_par*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pll_timing.1, align 4
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.sstfb_par*, %struct.sstfb_par** %8, align 8
  store %struct.sstfb_par* %9, %struct.sstfb_par** %3, align 8
  %10 = load %struct.sstfb_par*, %struct.sstfb_par** %3, align 8
  %11 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = load i32, i32* @PCI_INIT_ENABLE, align 4
  %15 = load i32, i32* @PCI_EN_INIT_WR, align 4
  %16 = call i32 @pci_write_config_dword(%struct.pci_dev* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @FBIINIT1, align 4
  %18 = load i32, i32* @VIDEO_RESET, align 4
  %19 = load i32, i32* @EN_BLANKING, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @sst_set_bits(i32 %17, i32 %20)
  %22 = load i32, i32* @FBIINIT2, align 4
  %23 = load i32, i32* @EN_DRAM_REFRESH, align 4
  %24 = call i32 @sst_unset_bits(i32 %22, i32 %23)
  %25 = load i32, i32* @FBIINIT0, align 4
  %26 = load i32, i32* @FBI_RESET, align 4
  %27 = load i32, i32* @FIFO_RESET, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @sst_set_bits(i32 %25, i32 %28)
  %30 = call i32 (...) @sst_wait_idle()
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i32, i32* @PCI_INIT_ENABLE, align 4
  %33 = load i32, i32* @PCI_EN_INIT_WR, align 4
  %34 = load i32, i32* @PCI_REMAP_DAC, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @pci_write_config_dword(%struct.pci_dev* %31, i32 %32, i32 %35)
  %37 = call i32 @sst_calc_pll(i32 20000, i32* %6, %struct.pll_timing.1* %5)
  %38 = load %struct.sstfb_par*, %struct.sstfb_par** %3, align 8
  %39 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.fb_info.0*, %struct.pll_timing*, i32)*, i32 (%struct.fb_info.0*, %struct.pll_timing*, i32)** %40, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %43 = bitcast %struct.fb_info* %42 to %struct.fb_info.0*
  %44 = bitcast %struct.pll_timing.1* %5 to %struct.pll_timing*
  %45 = load i32, i32* @GFX_CLOCK, align 4
  %46 = call i32 %41(%struct.fb_info.0* %43, %struct.pll_timing* %44, i32 %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = load i32, i32* @PCI_INIT_ENABLE, align 4
  %49 = load i32, i32* @PCI_EN_INIT_WR, align 4
  %50 = call i32 @pci_write_config_dword(%struct.pci_dev* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @FBIINIT0, align 4
  %52 = load i32, i32* @FBI_RESET, align 4
  %53 = load i32, i32* @FIFO_RESET, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @DIS_VGA_PASSTHROUGH, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @sst_unset_bits(i32 %51, i32 %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = load i32, i32* @PCI_VCLK_DISABLE, align 4
  %60 = call i32 @pci_write_config_dword(%struct.pci_dev* %58, i32 %59, i32 0)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = load i32, i32* @PCI_INIT_ENABLE, align 4
  %63 = call i32 @pci_write_config_dword(%struct.pci_dev* %61, i32 %62, i32 0)
  ret void
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @sst_set_bits(i32, i32) #1

declare dso_local i32 @sst_unset_bits(i32, i32) #1

declare dso_local i32 @sst_wait_idle(...) #1

declare dso_local i32 @sst_calc_pll(i32, i32*, %struct.pll_timing.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
