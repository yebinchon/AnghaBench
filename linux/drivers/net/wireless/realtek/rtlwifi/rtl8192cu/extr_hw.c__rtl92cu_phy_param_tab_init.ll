; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_phy_param_tab_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_phy_param_tab_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.rtl_efuse = type { i32 }

@RTL8192CUMAC_2T_ARRAYLENGTH = common dso_local global i8* null, align 8
@MAC_REG = common dso_local global i64 0, align 8
@RTL8192CUMAC_2T_ARRAY = common dso_local global i8* null, align 8
@RTL8192CUPHY_REG_ARRAY_PG_HPLENGTH = common dso_local global i8* null, align 8
@PHY_REG_PG = common dso_local global i64 0, align 8
@RTL8192CUPHY_REG_ARRAY_PG_HP = common dso_local global i8* null, align 8
@RTL8192CUPHY_REG_ARRAY_PGLENGTH = common dso_local global i8* null, align 8
@RTL8192CUPHY_REG_ARRAY_PG = common dso_local global i8* null, align 8
@RTL8192CUPHY_REG_2TARRAY_LENGTH = common dso_local global i8* null, align 8
@PHY_REG_2T = common dso_local global i64 0, align 8
@RTL8192CUPHY_REG_2TARRAY = common dso_local global i8* null, align 8
@RTL8192CURADIOA_2TARRAYLENGTH = common dso_local global i8* null, align 8
@RADIOA_2T = common dso_local global i64 0, align 8
@RTL8192CURADIOA_2TARRAY = common dso_local global i8* null, align 8
@RTL8192CURADIOB_2TARRAYLENGTH = common dso_local global i8* null, align 8
@RADIOB_2T = common dso_local global i64 0, align 8
@RTL8192CU_RADIOB_2TARRAY = common dso_local global i8* null, align 8
@RTL8192CUAGCTAB_2TARRAYLENGTH = common dso_local global i8* null, align 8
@AGCTAB_2T = common dso_local global i64 0, align 8
@RTL8192CUAGCTAB_2TARRAY = common dso_local global i8* null, align 8
@RTL8192CUPHY_REG_1T_HPARRAYLENGTH = common dso_local global i8* null, align 8
@PHY_REG_1T = common dso_local global i64 0, align 8
@RTL8192CUPHY_REG_1T_HPARRAY = common dso_local global i8* null, align 8
@RTL8192CURADIOA_1T_HPARRAYLENGTH = common dso_local global i8* null, align 8
@RADIOA_1T = common dso_local global i64 0, align 8
@RTL8192CURADIOA_1T_HPARRAY = common dso_local global i8* null, align 8
@RTL8192CURADIOB_1TARRAYLENGTH = common dso_local global i8* null, align 8
@RADIOB_1T = common dso_local global i64 0, align 8
@RTL8192CU_RADIOB_1TARRAY = common dso_local global i8* null, align 8
@RTL8192CUAGCTAB_1T_HPARRAYLENGTH = common dso_local global i8* null, align 8
@AGCTAB_1T = common dso_local global i64 0, align 8
@RTL8192CUAGCTAB_1T_HPARRAY = common dso_local global i8* null, align 8
@RTL8192CUPHY_REG_1TARRAY_LENGTH = common dso_local global i8* null, align 8
@RTL8192CUPHY_REG_1TARRAY = common dso_local global i8* null, align 8
@RTL8192CURADIOA_1TARRAYLENGTH = common dso_local global i8* null, align 8
@RTL8192CU_RADIOA_1TARRAY = common dso_local global i8* null, align 8
@RTL8192CUAGCTAB_1TARRAYLENGTH = common dso_local global i8* null, align 8
@RTL8192CUAGCTAB_1TARRAY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92cu_phy_param_tab_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92cu_phy_param_tab_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca %struct.rtl_efuse*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 0
  store %struct.rtl_phy* %9, %struct.rtl_phy** %4, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %10)
  store %struct.rtl_efuse* %11, %struct.rtl_efuse** %5, align 8
  %12 = load i8*, i8** @RTL8192CUMAC_2T_ARRAYLENGTH, align 8
  %13 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %14 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* @MAC_REG, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i8* %12, i8** %18, align 8
  %19 = load i8*, i8** @RTL8192CUMAC_2T_ARRAY, align 8
  %20 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* @MAC_REG, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %19, i8** %25, align 8
  %26 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_HIGHT_PA(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %1
  %32 = load i8*, i8** @RTL8192CUPHY_REG_ARRAY_PG_HPLENGTH, align 8
  %33 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %34 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* @PHY_REG_PG, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i8* %32, i8** %38, align 8
  %39 = load i8*, i8** @RTL8192CUPHY_REG_ARRAY_PG_HP, align 8
  %40 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %41 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* @PHY_REG_PG, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i8* %39, i8** %45, align 8
  br label %61

46:                                               ; preds = %1
  %47 = load i8*, i8** @RTL8192CUPHY_REG_ARRAY_PGLENGTH, align 8
  %48 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %49 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* @PHY_REG_PG, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %47, i8** %53, align 8
  %54 = load i8*, i8** @RTL8192CUPHY_REG_ARRAY_PG, align 8
  %55 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %56 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* @PHY_REG_PG, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i8* %54, i8** %60, align 8
  br label %61

61:                                               ; preds = %46, %31
  %62 = load i8*, i8** @RTL8192CUPHY_REG_2TARRAY_LENGTH, align 8
  %63 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %64 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* @PHY_REG_2T, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i8* %62, i8** %68, align 8
  %69 = load i8*, i8** @RTL8192CUPHY_REG_2TARRAY, align 8
  %70 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %71 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* @PHY_REG_2T, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i8* %69, i8** %75, align 8
  %76 = load i8*, i8** @RTL8192CURADIOA_2TARRAYLENGTH, align 8
  %77 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %78 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i64, i64* @RADIOA_2T, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i8* %76, i8** %82, align 8
  %83 = load i8*, i8** @RTL8192CURADIOA_2TARRAY, align 8
  %84 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %85 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* @RADIOA_2T, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i8* %83, i8** %89, align 8
  %90 = load i8*, i8** @RTL8192CURADIOB_2TARRAYLENGTH, align 8
  %91 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %92 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64, i64* @RADIOB_2T, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i8* %90, i8** %96, align 8
  %97 = load i8*, i8** @RTL8192CU_RADIOB_2TARRAY, align 8
  %98 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %99 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i64, i64* @RADIOB_2T, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i8* %97, i8** %103, align 8
  %104 = load i8*, i8** @RTL8192CUAGCTAB_2TARRAYLENGTH, align 8
  %105 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %106 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i64, i64* @AGCTAB_2T, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  store i8* %104, i8** %110, align 8
  %111 = load i8*, i8** @RTL8192CUAGCTAB_2TARRAY, align 8
  %112 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %113 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i64, i64* @AGCTAB_2T, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i8* %111, i8** %117, align 8
  %118 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %119 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @IS_HIGHT_PA(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %180

123:                                              ; preds = %61
  %124 = load i8*, i8** @RTL8192CUPHY_REG_1T_HPARRAYLENGTH, align 8
  %125 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %126 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i64, i64* @PHY_REG_1T, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store i8* %124, i8** %130, align 8
  %131 = load i8*, i8** @RTL8192CUPHY_REG_1T_HPARRAY, align 8
  %132 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %133 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i64, i64* @PHY_REG_1T, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i8* %131, i8** %137, align 8
  %138 = load i8*, i8** @RTL8192CURADIOA_1T_HPARRAYLENGTH, align 8
  %139 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %140 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %139, i32 0, i32 0
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i64, i64* @RADIOA_1T, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  store i8* %138, i8** %144, align 8
  %145 = load i8*, i8** @RTL8192CURADIOA_1T_HPARRAY, align 8
  %146 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %147 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i64, i64* @RADIOA_1T, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  store i8* %145, i8** %151, align 8
  %152 = load i8*, i8** @RTL8192CURADIOB_1TARRAYLENGTH, align 8
  %153 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %154 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i64, i64* @RADIOB_1T, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  store i8* %152, i8** %158, align 8
  %159 = load i8*, i8** @RTL8192CU_RADIOB_1TARRAY, align 8
  %160 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %161 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = load i64, i64* @RADIOB_1T, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  store i8* %159, i8** %165, align 8
  %166 = load i8*, i8** @RTL8192CUAGCTAB_1T_HPARRAYLENGTH, align 8
  %167 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %168 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %167, i32 0, i32 0
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load i64, i64* @AGCTAB_1T, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  store i8* %166, i8** %172, align 8
  %173 = load i8*, i8** @RTL8192CUAGCTAB_1T_HPARRAY, align 8
  %174 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %175 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = load i64, i64* @AGCTAB_1T, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  store i8* %173, i8** %179, align 8
  br label %237

180:                                              ; preds = %61
  %181 = load i8*, i8** @RTL8192CUPHY_REG_1TARRAY_LENGTH, align 8
  %182 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %183 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %182, i32 0, i32 0
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = load i64, i64* @PHY_REG_1T, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  store i8* %181, i8** %187, align 8
  %188 = load i8*, i8** @RTL8192CUPHY_REG_1TARRAY, align 8
  %189 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %190 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %189, i32 0, i32 0
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = load i64, i64* @PHY_REG_1T, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  store i8* %188, i8** %194, align 8
  %195 = load i8*, i8** @RTL8192CURADIOA_1TARRAYLENGTH, align 8
  %196 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %197 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %196, i32 0, i32 0
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = load i64, i64* @RADIOA_1T, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  store i8* %195, i8** %201, align 8
  %202 = load i8*, i8** @RTL8192CU_RADIOA_1TARRAY, align 8
  %203 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %204 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %203, i32 0, i32 0
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = load i64, i64* @RADIOA_1T, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  store i8* %202, i8** %208, align 8
  %209 = load i8*, i8** @RTL8192CURADIOB_1TARRAYLENGTH, align 8
  %210 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %211 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %210, i32 0, i32 0
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = load i64, i64* @RADIOB_1T, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 1
  store i8* %209, i8** %215, align 8
  %216 = load i8*, i8** @RTL8192CU_RADIOB_1TARRAY, align 8
  %217 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %218 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %217, i32 0, i32 0
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = load i64, i64* @RADIOB_1T, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  store i8* %216, i8** %222, align 8
  %223 = load i8*, i8** @RTL8192CUAGCTAB_1TARRAYLENGTH, align 8
  %224 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %225 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %224, i32 0, i32 0
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = load i64, i64* @AGCTAB_1T, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  store i8* %223, i8** %229, align 8
  %230 = load i8*, i8** @RTL8192CUAGCTAB_1TARRAY, align 8
  %231 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %232 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %231, i32 0, i32 0
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = load i64, i64* @AGCTAB_1T, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  store i8* %230, i8** %236, align 8
  br label %237

237:                                              ; preds = %180, %123
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i64 @IS_HIGHT_PA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
