; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_bind_bt_coex_withadapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_bind_bt_coex_withadapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.btc_coexist = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i8*, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@BTC_INTF_PCI = common dso_local global i32 0, align 4
@BTC_INTF_USB = common dso_local global i32 0, align 4
@BTC_INTF_UNKNOWN = common dso_local global i32 0, align 4
@BT_COEX_ANT_TYPE_PG = common dso_local global i32 0, align 4
@BTC_ANTENNA_AT_MAIN_PORT = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], Package Type = TFBGA\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"[BTCoex], Package Type = Non-TFBGA\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exhalbtc_bind_bt_coex_withadapter(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.btc_coexist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.rtl_priv*
  store %struct.rtl_priv* %10, %struct.rtl_priv** %4, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %12 = call %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv* %11)
  store %struct.btc_coexist* %12, %struct.btc_coexist** %5, align 8
  store i32 2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %14 = icmp ne %struct.btc_coexist* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %130

16:                                               ; preds = %1
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %18 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %130

22:                                               ; preds = %16
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %35 [
    i32 129, label %27
    i32 128, label %31
  ]

27:                                               ; preds = %22
  %28 = load i32, i32* @BTC_INTF_PCI, align 4
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %30 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  br label %39

31:                                               ; preds = %22
  %32 = load i32, i32* @BTC_INTF_USB, align 4
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %34 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  br label %39

35:                                               ; preds = %22
  %36 = load i32, i32* @BTC_INTF_UNKNOWN, align 4
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %38 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %31, %27
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %41 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %43 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %49 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %51 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %54 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %57 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i32 5, i32* %58, align 4
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %60 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  store i32 0, i32* %61, align 8
  %62 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %63 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  store i32 0, i32* %64, align 4
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %66 = call i32 @rtl_get_hwpg_bt_type(%struct.rtl_priv* %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @exhalbtc_set_chip_type(%struct.btc_coexist* %67, i32 %68)
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %71 = call i32 @rtl_get_hwpg_ant_num(%struct.rtl_priv* %70)
  store i32 %71, i32* %6, align 4
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %73 = load i32, i32* @BT_COEX_ANT_TYPE_PG, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @exhalbtc_set_ant_num(%struct.rtl_priv* %72, i32 %73, i32 %74)
  %76 = load i32, i32* @BTC_ANTENNA_AT_MAIN_PORT, align 4
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %78 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 4
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %81 = call i32 @rtl_get_hwpg_single_ant_path(%struct.rtl_priv* %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @exhalbtc_set_single_ant_path(%struct.btc_coexist* %82, i32 %83)
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %86 = call i32 @rtl_get_hwpg_package_type(%struct.rtl_priv* %85)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %39
  %89 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %90 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %105

92:                                               ; preds = %39
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %94 = call i32 @rtl_get_hwpg_package_type(%struct.rtl_priv* %93)
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %98 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %104

100:                                              ; preds = %92
  %101 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %102 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %96
  br label %105

105:                                              ; preds = %104, %88
  %106 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %107 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %113 = load i32, i32* @COMP_BT_COEXIST, align 4
  %114 = load i32, i32* @DBG_LOUD, align 4
  %115 = call i32 @RT_TRACE(%struct.rtl_priv* %112, i32 %113, i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %121

116:                                              ; preds = %105
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %118 = load i32, i32* @COMP_BT_COEXIST, align 4
  %119 = load i32, i32* @DBG_LOUD, align 4
  %120 = call i32 @RT_TRACE(%struct.rtl_priv* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %116, %111
  %122 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %123 = call i32 @rtl_get_hwpg_rfe_type(%struct.rtl_priv* %122)
  %124 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %125 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 8
  %127 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %128 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  store i32 1, i32* %2, align 4
  br label %130

130:                                              ; preds = %121, %21, %15
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_get_hwpg_bt_type(%struct.rtl_priv*) #1

declare dso_local i32 @exhalbtc_set_chip_type(%struct.btc_coexist*, i32) #1

declare dso_local i32 @rtl_get_hwpg_ant_num(%struct.rtl_priv*) #1

declare dso_local i32 @exhalbtc_set_ant_num(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_get_hwpg_single_ant_path(%struct.rtl_priv*) #1

declare dso_local i32 @exhalbtc_set_single_ant_path(%struct.btc_coexist*, i32) #1

declare dso_local i32 @rtl_get_hwpg_package_type(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl_get_hwpg_rfe_type(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
