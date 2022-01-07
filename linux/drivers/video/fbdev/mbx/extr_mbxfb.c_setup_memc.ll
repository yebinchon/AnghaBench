; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_setup_memc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_setup_memc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@LMCFG_LMC_DS = common dso_local global i32 0, align 4
@LMCFG_LMC_TS = common dso_local global i32 0, align 4
@LMCFG_LMD_TS = common dso_local global i32 0, align 4
@LMCFG_LMA_TS = common dso_local global i32 0, align 4
@LMCFG = common dso_local global i32 0, align 4
@LMPWR_MC_PWR_ACT = common dso_local global i32 0, align 4
@LMPWR = common dso_local global i32 0, align 4
@LMTIM = common dso_local global i32 0, align 4
@LMREFRESH = common dso_local global i32 0, align 4
@LMTYPE_CASLAT_3 = common dso_local global i32 0, align 4
@LMTYPE_BKSZ_2 = common dso_local global i32 0, align 4
@LMTYPE_ROWSZ_11 = common dso_local global i32 0, align 4
@LMTYPE_COLSZ_8 = common dso_local global i32 0, align 4
@LMTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @setup_memc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_memc(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load i32, i32* @LMCFG_LMC_DS, align 4
  %6 = load i32, i32* @LMCFG_LMC_TS, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @LMCFG_LMD_TS, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @LMCFG_LMA_TS, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @LMCFG, align 4
  %13 = call i32 @write_reg_dly(i32 %11, i32 %12)
  %14 = load i32, i32* @LMPWR_MC_PWR_ACT, align 4
  %15 = load i32, i32* @LMPWR, align 4
  %16 = call i32 @write_reg_dly(i32 %14, i32 %15)
  %17 = call i32 @Lmtim_Tras(i32 7)
  %18 = call i32 @Lmtim_Trp(i32 3)
  %19 = or i32 %17, %18
  %20 = call i32 @Lmtim_Trcd(i32 3)
  %21 = or i32 %19, %20
  %22 = call i32 @Lmtim_Trc(i32 9)
  %23 = or i32 %21, %22
  %24 = call i32 @Lmtim_Tdpl(i32 2)
  %25 = or i32 %23, %24
  %26 = load i32, i32* @LMTIM, align 4
  %27 = call i32 @write_reg_dly(i32 %25, i32 %26)
  %28 = load i32, i32* @LMREFRESH, align 4
  %29 = call i32 @write_reg_dly(i32 3115, i32 %28)
  %30 = load i32, i32* @LMTYPE_CASLAT_3, align 4
  %31 = load i32, i32* @LMTYPE_BKSZ_2, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @LMTYPE_ROWSZ_11, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @LMTYPE_COLSZ_8, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @LMTYPE, align 4
  %38 = call i32 @write_reg_dly(i32 %36, i32 %37)
  %39 = load i32, i32* @LMPWR_MC_PWR_ACT, align 4
  %40 = load i32, i32* @LMPWR, align 4
  %41 = call i32 @write_reg_dly(i32 %39, i32 %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %50, %1
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @readl(i32 %48)
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %42

53:                                               ; preds = %42
  ret void
}

declare dso_local i32 @write_reg_dly(i32, i32) #1

declare dso_local i32 @Lmtim_Tras(i32) #1

declare dso_local i32 @Lmtim_Trp(i32) #1

declare dso_local i32 @Lmtim_Trcd(i32) #1

declare dso_local i32 @Lmtim_Trc(i32) #1

declare dso_local i32 @Lmtim_Tdpl(i32) #1

declare dso_local i64 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
