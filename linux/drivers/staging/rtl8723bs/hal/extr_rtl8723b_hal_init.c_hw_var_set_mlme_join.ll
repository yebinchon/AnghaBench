; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_hw_var_set_mlme_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_hw_var_set_mlme_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, %struct.mlme_priv }
%struct.mlme_priv = type { i32 }
%struct.eeprom_priv = type { i64 }

@REG_RXFLTMAP2 = common dso_local global i32 0, align 4
@REG_RCR = common dso_local global i32 0, align 4
@RCR_CBSSID_DATA = common dso_local global i32 0, align 4
@RCR_CBSSID_BCN = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@RT_CID_CCX = common dso_local global i64 0, align 8
@REG_BCN_CTRL = common dso_local global i32 0, align 4
@DIS_TSF_UDT = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@RETRY_LIMIT_SHORT_SHIFT = common dso_local global i32 0, align 4
@RETRY_LIMIT_LONG_SHIFT = common dso_local global i32 0, align 4
@REG_RL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32*)* @hw_var_set_mlme_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_var_set_mlme_join(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlme_priv*, align 8
  %13 = alloca %struct.eeprom_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 48, i32* %10, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  store %struct.mlme_priv* %17, %struct.mlme_priv** %12, align 8
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = call %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter* %18)
  store %struct.eeprom_priv* %19, %struct.eeprom_priv** %13, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %3
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = load i32, i32* @REG_RXFLTMAP2, align 4
  %25 = call i32 @rtw_write16(%struct.adapter* %23, i32 %24, i32 65535)
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = load i32, i32* @REG_RCR, align 4
  %28 = call i32 @rtw_read32(%struct.adapter* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.adapter*, %struct.adapter** %4, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load i32, i32* @RCR_CBSSID_DATA, align 4
  %35 = load i32, i32* @RCR_CBSSID_BCN, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %46

40:                                               ; preds = %22
  %41 = load i32, i32* @RCR_CBSSID_DATA, align 4
  %42 = load i32, i32* @RCR_CBSSID_BCN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.adapter*, %struct.adapter** %4, align 8
  %48 = load i32, i32* @REG_RCR, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @rtw_write32(%struct.adapter* %47, i32 %48, i32 %49)
  %51 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %52 = load i32, i32* @WIFI_STATION_STATE, align 4
  %53 = call i32 @check_fwstate(%struct.mlme_priv* %51, i32 %52)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  %56 = load %struct.eeprom_priv*, %struct.eeprom_priv** %13, align 8
  %57 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RT_CID_CCX, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 7, i32 48
  store i32 %62, i32* %10, align 4
  br label %64

63:                                               ; preds = %46
  store i32 7, i32* %10, align 4
  br label %64

64:                                               ; preds = %63, %55
  br label %97

65:                                               ; preds = %3
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.adapter*, %struct.adapter** %4, align 8
  %70 = load i32, i32* @REG_RXFLTMAP2, align 4
  %71 = call i32 @rtw_write16(%struct.adapter* %69, i32 %70, i32 0)
  br label %96

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %95

75:                                               ; preds = %72
  %76 = load %struct.adapter*, %struct.adapter** %4, align 8
  %77 = load i32, i32* @REG_BCN_CTRL, align 4
  %78 = call i32 @rtw_read8(%struct.adapter* %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @DIS_TSF_UDT, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load %struct.adapter*, %struct.adapter** %4, align 8
  %84 = load i32, i32* @REG_BCN_CTRL, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @rtw_write8(%struct.adapter* %83, i32 %84, i32 %85)
  %87 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %88 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %89 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @check_fwstate(%struct.mlme_priv* %87, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %75
  store i32 7, i32* %10, align 4
  br label %94

94:                                               ; preds = %93, %75
  br label %95

95:                                               ; preds = %94, %72
  br label %96

96:                                               ; preds = %95, %68
  br label %97

97:                                               ; preds = %96, %64
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @RETRY_LIMIT_SHORT_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @RETRY_LIMIT_LONG_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = or i32 %100, %103
  store i32 %104, i32* %8, align 4
  %105 = load %struct.adapter*, %struct.adapter** %4, align 8
  %106 = load i32, i32* @REG_RL, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @rtw_write16(%struct.adapter* %105, i32 %106, i32 %107)
  ret void
}

declare dso_local %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter*) #1

declare dso_local i32 @rtw_write16(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_read32(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_write32(%struct.adapter*, i32, i32) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_read8(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
