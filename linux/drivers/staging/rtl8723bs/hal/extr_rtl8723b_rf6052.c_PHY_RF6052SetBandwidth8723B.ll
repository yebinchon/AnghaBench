; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_rf6052.c_PHY_RF6052SetBandwidth8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_rf6052.c_PHY_RF6052SetBandwidth8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32* }

@BIT10 = common dso_local global i32 0, align 4
@BIT11 = common dso_local global i32 0, align 4
@ODM_RF_PATH_A = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@bRFRegOffsetMask = common dso_local global i32 0, align 4
@ODM_RF_PATH_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_RF6052SetBandwidth8723B(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hal_com_data*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %6)
  store %struct.hal_com_data* %7, %struct.hal_com_data** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %77 [
    i32 129, label %9
    i32 128, label %44
  ]

9:                                                ; preds = %2
  %10 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %11 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, -3073
  %16 = load i32, i32* @BIT10, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @BIT11, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %21 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = load i32, i32* @ODM_RF_PATH_A, align 4
  %26 = load i32, i32* @RF_CHNLBW, align 4
  %27 = load i32, i32* @bRFRegOffsetMask, align 4
  %28 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %29 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PHY_SetRFReg(%struct.adapter* %24, i32 %25, i32 %26, i32 %27, i32 %32)
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = load i32, i32* @ODM_RF_PATH_B, align 4
  %36 = load i32, i32* @RF_CHNLBW, align 4
  %37 = load i32, i32* @bRFRegOffsetMask, align 4
  %38 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %39 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PHY_SetRFReg(%struct.adapter* %34, i32 %35, i32 %36, i32 %37, i32 %42)
  br label %78

44:                                               ; preds = %2
  %45 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %46 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -3073
  %51 = load i32, i32* @BIT10, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %54 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = load i32, i32* @ODM_RF_PATH_A, align 4
  %59 = load i32, i32* @RF_CHNLBW, align 4
  %60 = load i32, i32* @bRFRegOffsetMask, align 4
  %61 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %62 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PHY_SetRFReg(%struct.adapter* %57, i32 %58, i32 %59, i32 %60, i32 %65)
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = load i32, i32* @ODM_RF_PATH_B, align 4
  %69 = load i32, i32* @RF_CHNLBW, align 4
  %70 = load i32, i32* @bRFRegOffsetMask, align 4
  %71 = load %struct.hal_com_data*, %struct.hal_com_data** %5, align 8
  %72 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PHY_SetRFReg(%struct.adapter* %67, i32 %68, i32 %69, i32 %70, i32 %75)
  br label %78

77:                                               ; preds = %2
  br label %78

78:                                               ; preds = %77, %44, %9
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @PHY_SetRFReg(%struct.adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
