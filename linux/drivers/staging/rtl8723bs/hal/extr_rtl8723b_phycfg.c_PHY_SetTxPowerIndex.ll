; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_PHY_SetTxPowerIndex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_PHY_SetTxPowerIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@ODM_RF_PATH_A = common dso_local global i64 0, align 8
@ODM_RF_PATH_B = common dso_local global i64 0, align 8
@rTxAGC_A_CCK1_Mcs32 = common dso_local global i32 0, align 4
@bMaskByte1 = common dso_local global i32 0, align 4
@rTxAGC_B_CCK11_A_CCK2_11 = common dso_local global i32 0, align 4
@bMaskByte2 = common dso_local global i32 0, align 4
@bMaskByte3 = common dso_local global i32 0, align 4
@rTxAGC_A_Rate18_06 = common dso_local global i32 0, align 4
@bMaskByte0 = common dso_local global i32 0, align 4
@rTxAGC_A_Rate54_24 = common dso_local global i32 0, align 4
@rTxAGC_A_Mcs03_Mcs00 = common dso_local global i32 0, align 4
@rTxAGC_A_Mcs07_Mcs04 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid Rate!!\0A\00", align 1
@_module_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid RFPath!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_SetTxPowerIndex(%struct.adapter* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @ODM_RF_PATH_A, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @ODM_RF_PATH_B, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %141

16:                                               ; preds = %12, %4
  %17 = load i64, i64* %8, align 8
  switch i64 %17, label %138 [
    i64 144, label %18
    i64 142, label %24
    i64 138, label %30
    i64 147, label %36
    i64 137, label %42
    i64 136, label %48
    i64 146, label %54
    i64 145, label %60
    i64 143, label %66
    i64 141, label %72
    i64 140, label %78
    i64 139, label %84
    i64 135, label %90
    i64 134, label %96
    i64 133, label %102
    i64 132, label %108
    i64 131, label %114
    i64 130, label %120
    i64 129, label %126
    i64 128, label %132
  ]

18:                                               ; preds = %16
  %19 = load %struct.adapter*, %struct.adapter** %5, align 8
  %20 = load i32, i32* @rTxAGC_A_CCK1_Mcs32, align 4
  %21 = load i32, i32* @bMaskByte1, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @PHY_SetBBReg(%struct.adapter* %19, i32 %20, i32 %21, i32 %22)
  br label %140

24:                                               ; preds = %16
  %25 = load %struct.adapter*, %struct.adapter** %5, align 8
  %26 = load i32, i32* @rTxAGC_B_CCK11_A_CCK2_11, align 4
  %27 = load i32, i32* @bMaskByte1, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @PHY_SetBBReg(%struct.adapter* %25, i32 %26, i32 %27, i32 %28)
  br label %140

30:                                               ; preds = %16
  %31 = load %struct.adapter*, %struct.adapter** %5, align 8
  %32 = load i32, i32* @rTxAGC_B_CCK11_A_CCK2_11, align 4
  %33 = load i32, i32* @bMaskByte2, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @PHY_SetBBReg(%struct.adapter* %31, i32 %32, i32 %33, i32 %34)
  br label %140

36:                                               ; preds = %16
  %37 = load %struct.adapter*, %struct.adapter** %5, align 8
  %38 = load i32, i32* @rTxAGC_B_CCK11_A_CCK2_11, align 4
  %39 = load i32, i32* @bMaskByte3, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @PHY_SetBBReg(%struct.adapter* %37, i32 %38, i32 %39, i32 %40)
  br label %140

42:                                               ; preds = %16
  %43 = load %struct.adapter*, %struct.adapter** %5, align 8
  %44 = load i32, i32* @rTxAGC_A_Rate18_06, align 4
  %45 = load i32, i32* @bMaskByte0, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @PHY_SetBBReg(%struct.adapter* %43, i32 %44, i32 %45, i32 %46)
  br label %140

48:                                               ; preds = %16
  %49 = load %struct.adapter*, %struct.adapter** %5, align 8
  %50 = load i32, i32* @rTxAGC_A_Rate18_06, align 4
  %51 = load i32, i32* @bMaskByte1, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @PHY_SetBBReg(%struct.adapter* %49, i32 %50, i32 %51, i32 %52)
  br label %140

54:                                               ; preds = %16
  %55 = load %struct.adapter*, %struct.adapter** %5, align 8
  %56 = load i32, i32* @rTxAGC_A_Rate18_06, align 4
  %57 = load i32, i32* @bMaskByte2, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @PHY_SetBBReg(%struct.adapter* %55, i32 %56, i32 %57, i32 %58)
  br label %140

60:                                               ; preds = %16
  %61 = load %struct.adapter*, %struct.adapter** %5, align 8
  %62 = load i32, i32* @rTxAGC_A_Rate18_06, align 4
  %63 = load i32, i32* @bMaskByte3, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @PHY_SetBBReg(%struct.adapter* %61, i32 %62, i32 %63, i32 %64)
  br label %140

66:                                               ; preds = %16
  %67 = load %struct.adapter*, %struct.adapter** %5, align 8
  %68 = load i32, i32* @rTxAGC_A_Rate54_24, align 4
  %69 = load i32, i32* @bMaskByte0, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @PHY_SetBBReg(%struct.adapter* %67, i32 %68, i32 %69, i32 %70)
  br label %140

72:                                               ; preds = %16
  %73 = load %struct.adapter*, %struct.adapter** %5, align 8
  %74 = load i32, i32* @rTxAGC_A_Rate54_24, align 4
  %75 = load i32, i32* @bMaskByte1, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @PHY_SetBBReg(%struct.adapter* %73, i32 %74, i32 %75, i32 %76)
  br label %140

78:                                               ; preds = %16
  %79 = load %struct.adapter*, %struct.adapter** %5, align 8
  %80 = load i32, i32* @rTxAGC_A_Rate54_24, align 4
  %81 = load i32, i32* @bMaskByte2, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @PHY_SetBBReg(%struct.adapter* %79, i32 %80, i32 %81, i32 %82)
  br label %140

84:                                               ; preds = %16
  %85 = load %struct.adapter*, %struct.adapter** %5, align 8
  %86 = load i32, i32* @rTxAGC_A_Rate54_24, align 4
  %87 = load i32, i32* @bMaskByte3, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @PHY_SetBBReg(%struct.adapter* %85, i32 %86, i32 %87, i32 %88)
  br label %140

90:                                               ; preds = %16
  %91 = load %struct.adapter*, %struct.adapter** %5, align 8
  %92 = load i32, i32* @rTxAGC_A_Mcs03_Mcs00, align 4
  %93 = load i32, i32* @bMaskByte0, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @PHY_SetBBReg(%struct.adapter* %91, i32 %92, i32 %93, i32 %94)
  br label %140

96:                                               ; preds = %16
  %97 = load %struct.adapter*, %struct.adapter** %5, align 8
  %98 = load i32, i32* @rTxAGC_A_Mcs03_Mcs00, align 4
  %99 = load i32, i32* @bMaskByte1, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @PHY_SetBBReg(%struct.adapter* %97, i32 %98, i32 %99, i32 %100)
  br label %140

102:                                              ; preds = %16
  %103 = load %struct.adapter*, %struct.adapter** %5, align 8
  %104 = load i32, i32* @rTxAGC_A_Mcs03_Mcs00, align 4
  %105 = load i32, i32* @bMaskByte2, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @PHY_SetBBReg(%struct.adapter* %103, i32 %104, i32 %105, i32 %106)
  br label %140

108:                                              ; preds = %16
  %109 = load %struct.adapter*, %struct.adapter** %5, align 8
  %110 = load i32, i32* @rTxAGC_A_Mcs03_Mcs00, align 4
  %111 = load i32, i32* @bMaskByte3, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @PHY_SetBBReg(%struct.adapter* %109, i32 %110, i32 %111, i32 %112)
  br label %140

114:                                              ; preds = %16
  %115 = load %struct.adapter*, %struct.adapter** %5, align 8
  %116 = load i32, i32* @rTxAGC_A_Mcs07_Mcs04, align 4
  %117 = load i32, i32* @bMaskByte0, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @PHY_SetBBReg(%struct.adapter* %115, i32 %116, i32 %117, i32 %118)
  br label %140

120:                                              ; preds = %16
  %121 = load %struct.adapter*, %struct.adapter** %5, align 8
  %122 = load i32, i32* @rTxAGC_A_Mcs07_Mcs04, align 4
  %123 = load i32, i32* @bMaskByte1, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @PHY_SetBBReg(%struct.adapter* %121, i32 %122, i32 %123, i32 %124)
  br label %140

126:                                              ; preds = %16
  %127 = load %struct.adapter*, %struct.adapter** %5, align 8
  %128 = load i32, i32* @rTxAGC_A_Mcs07_Mcs04, align 4
  %129 = load i32, i32* @bMaskByte2, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @PHY_SetBBReg(%struct.adapter* %127, i32 %128, i32 %129, i32 %130)
  br label %140

132:                                              ; preds = %16
  %133 = load %struct.adapter*, %struct.adapter** %5, align 8
  %134 = load i32, i32* @rTxAGC_A_Mcs07_Mcs04, align 4
  %135 = load i32, i32* @bMaskByte3, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @PHY_SetBBReg(%struct.adapter* %133, i32 %134, i32 %135, i32 %136)
  br label %140

138:                                              ; preds = %16
  %139 = call i32 @DBG_871X(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %132, %126, %120, %114, %108, %102, %96, %90, %84, %78, %72, %66, %60, %54, %48, %42, %36, %30, %24, %18
  br label %145

141:                                              ; preds = %12
  %142 = load i32, i32* @_module_hal_init_c_, align 4
  %143 = load i32, i32* @_drv_err_, align 4
  %144 = call i32 @RT_TRACE(i32 %142, i32 %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %145

145:                                              ; preds = %141, %140
  ret void
}

declare dso_local i32 @PHY_SetBBReg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
