; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_power_on_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_power_on_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32, i32 (%struct.btc_coexist*, i32)*, i64, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, %struct.btc_board_info, %struct.rtl_priv* }
%struct.btc_board_info = type { i32, i8* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"xxxxxxxxxxxxxxxx Execute 8723b 1-Ant PowerOn Setting xxxxxxxxxxxxxxxx!!\0A\00", align 1
@BIT0 = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@BTC_INTF_USB = common dso_local global i64 0, align 8
@BTC_ANTENNA_AT_AUX_PORT = common dso_local global i8* null, align 8
@BTC_ANTENNA_AT_MAIN_PORT = common dso_local global i8* null, align 8
@BTC_SET_ACT_ANTPOSREGRISTRY_CTRL = common dso_local global i32 0, align 4
@BTC_INTF_PCI = common dso_local global i64 0, align 8
@BTC_INTF_SDIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b1ant_power_on_setting(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.btc_board_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %8, i32 0, i32 9
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %12 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %11, i32 0, i32 8
  store %struct.btc_board_info* %12, %struct.btc_board_info** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = load i32, i32* @COMP_BT_COEXIST, align 4
  %15 = load i32, i32* @DBG_LOUD, align 4
  %16 = call i32 @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %18 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %20 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %19, i32 0, i32 6
  %21 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %20, align 8
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %23 = call i32 %21(%struct.btc_coexist* %22, i32 103, i32 32)
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %25 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %24, i32 0, i32 1
  %26 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %25, align 8
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %28 = call i32 %26(%struct.btc_coexist* %27, i32 2)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %30 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %29, i32 0, i32 7
  %31 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %30, align 8
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BIT0, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @BIT1, align 4
  %37 = or i32 %35, %36
  %38 = call i32 %31(%struct.btc_coexist* %32, i32 2, i32 %37)
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %39, i32 0, i32 6
  %41 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %40, align 8
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = call i32 %41(%struct.btc_coexist* %42, i32 1893, i32 24)
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %45 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %44, i32 0, i32 6
  %46 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %45, align 8
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %48 = call i32 %46(%struct.btc_coexist* %47, i32 1902, i32 4)
  %49 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %50 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BTC_INTF_USB, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %1
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %56 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %55, i32 0, i32 5
  %57 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %56, align 8
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %59 = call i32 %57(%struct.btc_coexist* %58, i32 2376, i32 0)
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, 1
  store i32 %61, i32* %5, align 4
  %62 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %63 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %62, i32 0, i32 3
  %64 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %63, align 8
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 %64(%struct.btc_coexist* %65, i32 65032, i32 %66)
  %68 = load i8*, i8** @BTC_ANTENNA_AT_AUX_PORT, align 8
  %69 = load %struct.btc_board_info*, %struct.btc_board_info** %4, align 8
  %70 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %136

71:                                               ; preds = %1
  %72 = load %struct.btc_board_info*, %struct.btc_board_info** %4, align 8
  %73 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %78 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %77, i32 0, i32 5
  %79 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %78, align 8
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %81 = call i32 %79(%struct.btc_coexist* %80, i32 2376, i32 640)
  %82 = load i8*, i8** @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %83 = load %struct.btc_board_info*, %struct.btc_board_info** %4, align 8
  %84 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  store i32 1, i32* %7, align 4
  br label %102

85:                                               ; preds = %71
  %86 = load %struct.btc_board_info*, %struct.btc_board_info** %4, align 8
  %87 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %92 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %91, i32 0, i32 5
  %93 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %92, align 8
  %94 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %95 = call i32 %93(%struct.btc_coexist* %94, i32 2376, i32 0)
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, 1
  store i32 %97, i32* %5, align 4
  %98 = load i8*, i8** @BTC_ANTENNA_AT_AUX_PORT, align 8
  %99 = load %struct.btc_board_info*, %struct.btc_board_info** %4, align 8
  %100 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %90, %85
  br label %102

102:                                              ; preds = %101, %76
  %103 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %104 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %103, i32 0, i32 4
  %105 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %104, align 8
  %106 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %107 = load i32, i32* @BTC_SET_ACT_ANTPOSREGRISTRY_CTRL, align 4
  %108 = call i32 %105(%struct.btc_coexist* %106, i32 %107, i32* %7)
  %109 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %110 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BTC_INTF_PCI, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %102
  %115 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %116 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %115, i32 0, i32 3
  %117 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %116, align 8
  %118 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 %117(%struct.btc_coexist* %118, i32 900, i32 %119)
  br label %135

121:                                              ; preds = %102
  %122 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %123 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @BTC_INTF_SDIO, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %129 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %128, i32 0, i32 3
  %130 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %129, align 8
  %131 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32 %130(%struct.btc_coexist* %131, i32 96, i32 %132)
  br label %134

134:                                              ; preds = %127, %121
  br label %135

135:                                              ; preds = %134, %114
  br label %136

136:                                              ; preds = %135, %54
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
