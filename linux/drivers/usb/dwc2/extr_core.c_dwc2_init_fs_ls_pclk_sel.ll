; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.c_dwc2_init_fs_ls_pclk_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.c_dwc2_init_fs_ls_pclk_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@GHWCFG2_HS_PHY_TYPE_ULPI = common dso_local global i64 0, align 8
@GHWCFG2_FS_PHY_TYPE_DEDICATED = common dso_local global i64 0, align 8
@DWC2_PHY_TYPE_PARAM_FS = common dso_local global i64 0, align 8
@HCFG_FSLSPCLKSEL_48_MHZ = common dso_local global i32 0, align 4
@HCFG_FSLSPCLKSEL_30_60_MHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Initializing HCFG.FSLSPClkSel to %08x\0A\00", align 1
@HCFG = common dso_local global i32 0, align 4
@HCFG_FSLSPCLKSEL_MASK = common dso_local global i32 0, align 4
@HCFG_FSLSPCLKSEL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc2_init_fs_ls_pclk_sel(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %5 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %6 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @GHWCFG2_HS_PHY_TYPE_ULPI, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %13 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GHWCFG2_FS_PHY_TYPE_DEDICATED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18, %11, %1
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DWC2_PHY_TYPE_PARAM_FS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24, %18
  %32 = load i32, i32* @HCFG_FSLSPCLKSEL_48_MHZ, align 4
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @HCFG_FSLSPCLKSEL_30_60_MHZ, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %37 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %42 = load i32, i32* @HCFG, align 4
  %43 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @HCFG_FSLSPCLKSEL_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @HCFG_FSLSPCLKSEL_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @HCFG, align 4
  %56 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
