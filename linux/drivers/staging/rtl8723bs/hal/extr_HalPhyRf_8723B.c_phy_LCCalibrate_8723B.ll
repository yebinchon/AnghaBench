; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_phy_LCCalibrate_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_phy_LCCalibrate_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, %struct.adapter* }
%struct.adapter = type { i32 }

@REG_TXPAUSE = common dso_local global i32 0, align 4
@ODM_RF_PATH_A = common dso_local global i32 0, align 4
@RF_AC = common dso_local global i32 0, align 4
@bMask12Bits = common dso_local global i32 0, align 4
@ODM_RF_PATH_B = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@bRFRegOffsetMask = common dso_local global i32 0, align 4
@ODM_ITRF_SDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @phy_LCCalibrate_8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_LCCalibrate_8723B(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  %16 = call i32 @rtw_read8(%struct.adapter* %15, i32 3331)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 112
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load %struct.adapter*, %struct.adapter** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 143
  %26 = call i32 @rtw_write8(%struct.adapter* %23, i32 3331, i32 %25)
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load %struct.adapter*, %struct.adapter** %29, align 8
  %31 = load i32, i32* @REG_TXPAUSE, align 4
  %32 = call i32 @rtw_write8(%struct.adapter* %30, i32 %31, i32 255)
  br label %33

33:                                               ; preds = %27, %20
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 112
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %33
  %38 = load %struct.adapter*, %struct.adapter** %9, align 8
  %39 = load i32, i32* @ODM_RF_PATH_A, align 4
  %40 = load i32, i32* @RF_AC, align 4
  %41 = load i32, i32* @bMask12Bits, align 4
  %42 = call i32 @PHY_QueryRFReg(%struct.adapter* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.adapter*, %struct.adapter** %9, align 8
  %47 = load i32, i32* @ODM_RF_PATH_B, align 4
  %48 = load i32, i32* @RF_AC, align 4
  %49 = load i32, i32* @bMask12Bits, align 4
  %50 = call i32 @PHY_QueryRFReg(%struct.adapter* %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %45, %37
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load %struct.adapter*, %struct.adapter** %53, align 8
  %55 = load i32, i32* @ODM_RF_PATH_A, align 4
  %56 = load i32, i32* @RF_AC, align 4
  %57 = load i32, i32* @bMask12Bits, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 589823
  %60 = or i32 %59, 65536
  %61 = call i32 @PHY_SetRFReg(%struct.adapter* %54, i32 %55, i32 %56, i32 %57, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %51
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load %struct.adapter*, %struct.adapter** %66, align 8
  %68 = load i32, i32* @ODM_RF_PATH_B, align 4
  %69 = load i32, i32* @RF_AC, align 4
  %70 = load i32, i32* @bMask12Bits, align 4
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 589823
  %73 = or i32 %72, 65536
  %74 = call i32 @PHY_SetRFReg(%struct.adapter* %67, i32 %68, i32 %69, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %64, %51
  br label %76

76:                                               ; preds = %75, %33
  %77 = load %struct.adapter*, %struct.adapter** %9, align 8
  %78 = load i32, i32* @ODM_RF_PATH_A, align 4
  %79 = load i32, i32* @RF_CHNLBW, align 4
  %80 = load i32, i32* @bMask12Bits, align 4
  %81 = call i32 @PHY_QueryRFReg(%struct.adapter* %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load %struct.adapter*, %struct.adapter** %83, align 8
  %85 = load i32, i32* @ODM_RF_PATH_A, align 4
  %86 = load i32, i32* @bRFRegOffsetMask, align 4
  %87 = call i32 @PHY_SetRFReg(%struct.adapter* %84, i32 %85, i32 176, i32 %86, i32 916448)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load %struct.adapter*, %struct.adapter** %89, align 8
  %91 = load i32, i32* @ODM_RF_PATH_A, align 4
  %92 = load i32, i32* @RF_CHNLBW, align 4
  %93 = load i32, i32* @bMask12Bits, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, 32768
  %96 = call i32 @PHY_SetRFReg(%struct.adapter* %90, i32 %91, i32 %92, i32 %93, i32 %95)
  %97 = call i32 @mdelay(i32 100)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load %struct.adapter*, %struct.adapter** %99, align 8
  %101 = load i32, i32* @ODM_RF_PATH_A, align 4
  %102 = load i32, i32* @bRFRegOffsetMask, align 4
  %103 = call i32 @PHY_SetRFReg(%struct.adapter* %100, i32 %101, i32 176, i32 %102, i32 917472)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ODM_ITRF_SDIO, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %76
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp sge i32 %112, 2
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load %struct.adapter*, %struct.adapter** %116, align 8
  %118 = load i32, i32* @ODM_RF_PATH_A, align 4
  %119 = load i32, i32* @RF_CHNLBW, align 4
  %120 = load i32, i32* @bMask12Bits, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @PHY_SetRFReg(%struct.adapter* %117, i32 %118, i32 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %114, %109, %76
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %124, 112
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %153

127:                                              ; preds = %123
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load %struct.adapter*, %struct.adapter** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @rtw_write8(%struct.adapter* %130, i32 3331, i32 %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load %struct.adapter*, %struct.adapter** %134, align 8
  %136 = load i32, i32* @ODM_RF_PATH_A, align 4
  %137 = load i32, i32* @RF_AC, align 4
  %138 = load i32, i32* @bMask12Bits, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @PHY_SetRFReg(%struct.adapter* %135, i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %127
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load %struct.adapter*, %struct.adapter** %145, align 8
  %147 = load i32, i32* @ODM_RF_PATH_B, align 4
  %148 = load i32, i32* @RF_AC, align 4
  %149 = load i32, i32* @bMask12Bits, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @PHY_SetRFReg(%struct.adapter* %146, i32 %147, i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %143, %127
  br label %159

153:                                              ; preds = %123
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load %struct.adapter*, %struct.adapter** %155, align 8
  %157 = load i32, i32* @REG_TXPAUSE, align 4
  %158 = call i32 @rtw_write8(%struct.adapter* %156, i32 %157, i32 0)
  br label %159

159:                                              ; preds = %153, %152
  ret void
}

declare dso_local i32 @rtw_read8(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i32, i32) #1

declare dso_local i32 @PHY_QueryRFReg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @PHY_SetRFReg(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
