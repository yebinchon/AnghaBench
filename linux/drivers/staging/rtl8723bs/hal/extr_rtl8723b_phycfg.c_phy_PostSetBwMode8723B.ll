; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_phy_PostSetBwMode8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_phy_PostSetBwMode8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32, i32 }

@REG_DATA_SC_8723B = common dso_local global i32 0, align 4
@rFPGA0_RFMOD = common dso_local global i32 0, align 4
@bRFMOD = common dso_local global i32 0, align 4
@rFPGA1_RFMOD = common dso_local global i32 0, align 4
@rOFDM0_TxPseudoNoiseWgt = common dso_local global i32 0, align 4
@BIT31 = common dso_local global i32 0, align 4
@BIT30 = common dso_local global i32 0, align 4
@rCCK0_System = common dso_local global i32 0, align 4
@bCCKSideBand = common dso_local global i32 0, align 4
@rOFDM1_LSTF = common dso_local global i32 0, align 4
@BIT26 = common dso_local global i32 0, align 4
@BIT27 = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @phy_PostSetBwMode8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_PostSetBwMode8723B(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hal_com_data*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %5)
  store %struct.hal_com_data* %6, %struct.hal_com_data** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %9 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @phy_SetRegBW_8723B(%struct.adapter* %7, i32 %10)
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = call i32 @phy_GetSecondaryChnl_8723B(%struct.adapter* %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = load i32, i32* @REG_DATA_SC_8723B, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @rtw_write8(%struct.adapter* %14, i32 %15, i32 %16)
  %18 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %19 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %71 [
    i32 129, label %21
    i32 128, label %36
  ]

21:                                               ; preds = %1
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = load i32, i32* @rFPGA0_RFMOD, align 4
  %24 = load i32, i32* @bRFMOD, align 4
  %25 = call i32 @PHY_SetBBReg(%struct.adapter* %22, i32 %23, i32 %24, i32 0)
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = load i32, i32* @rFPGA1_RFMOD, align 4
  %28 = load i32, i32* @bRFMOD, align 4
  %29 = call i32 @PHY_SetBBReg(%struct.adapter* %26, i32 %27, i32 %28, i32 0)
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = load i32, i32* @rOFDM0_TxPseudoNoiseWgt, align 4
  %32 = load i32, i32* @BIT31, align 4
  %33 = load i32, i32* @BIT30, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @PHY_SetBBReg(%struct.adapter* %30, i32 %31, i32 %34, i32 0)
  br label %72

36:                                               ; preds = %1
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = load i32, i32* @rFPGA0_RFMOD, align 4
  %39 = load i32, i32* @bRFMOD, align 4
  %40 = call i32 @PHY_SetBBReg(%struct.adapter* %37, i32 %38, i32 %39, i32 1)
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = load i32, i32* @rFPGA1_RFMOD, align 4
  %43 = load i32, i32* @bRFMOD, align 4
  %44 = call i32 @PHY_SetBBReg(%struct.adapter* %41, i32 %42, i32 %43, i32 1)
  %45 = load %struct.adapter*, %struct.adapter** %2, align 8
  %46 = load i32, i32* @rCCK0_System, align 4
  %47 = load i32, i32* @bCCKSideBand, align 4
  %48 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %49 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 1
  %52 = call i32 @PHY_SetBBReg(%struct.adapter* %45, i32 %46, i32 %47, i32 %51)
  %53 = load %struct.adapter*, %struct.adapter** %2, align 8
  %54 = load i32, i32* @rOFDM1_LSTF, align 4
  %55 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %56 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PHY_SetBBReg(%struct.adapter* %53, i32 %54, i32 3072, i32 %57)
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = load i32, i32* @BIT26, align 4
  %61 = load i32, i32* @BIT27, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %64 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_LOWER, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 2, i32 1
  %70 = call i32 @PHY_SetBBReg(%struct.adapter* %59, i32 2072, i32 %62, i32 %69)
  br label %72

71:                                               ; preds = %1
  br label %72

72:                                               ; preds = %71, %36, %21
  %73 = load %struct.adapter*, %struct.adapter** %2, align 8
  %74 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %75 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @PHY_RF6052SetBandwidth8723B(%struct.adapter* %73, i32 %76)
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @phy_SetRegBW_8723B(%struct.adapter*, i32) #1

declare dso_local i32 @phy_GetSecondaryChnl_8723B(%struct.adapter*) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i32, i32) #1

declare dso_local i32 @PHY_SetBBReg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @PHY_RF6052SetBandwidth8723B(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
