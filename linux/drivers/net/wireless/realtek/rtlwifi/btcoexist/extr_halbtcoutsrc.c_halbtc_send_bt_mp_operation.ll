; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_send_bt_mp_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_send_bt_mp_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32, %struct.rtl_priv* }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32*)* }

@BT_SEQ_GET_BT_VERSION = common dso_local global i32 0, align 4
@BT_SEQ_GET_AFH_MAP_L = common dso_local global i32 0, align 4
@BT_SEQ_GET_AFH_MAP_M = common dso_local global i32 0, align 4
@BT_SEQ_GET_AFH_MAP_H = common dso_local global i32 0, align 4
@BT_SEQ_GET_BT_COEX_SUPPORTED_FEATURE = common dso_local global i32 0, align 4
@BT_SEQ_GET_BT_COEX_SUPPORTED_VERSION = common dso_local global i32 0, align 4
@BT_SEQ_GET_BT_ANT_DET_VAL = common dso_local global i32 0, align 4
@BT_SEQ_GET_BT_BLE_SCAN_PARA = common dso_local global i32 0, align 4
@BT_SEQ_GET_BT_BLE_SCAN_TYPE = common dso_local global i32 0, align 4
@BT_SEQ_GET_BT_DEVICE_INFO = common dso_local global i32 0, align 4
@BT_SEQ_GET_BT_FORB_SLOT_VAL = common dso_local global i32 0, align 4
@BT_SEQ_DONT_CARE = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"btmpinfo wait req_num=%d wait=%ld\0A\00", align 1
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"btmpinfo wait (req_num=%d) timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*, i32, i32*, i32, i64)* @halbtc_send_bt_mp_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halbtc_send_bt_mp_operation(%struct.btc_coexist* %0, i32 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btc_coexist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtl_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %16 = call i32 @halbtc_is_hw_mailbox_exist(%struct.btc_coexist* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %111

19:                                               ; preds = %5
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %24 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %23, i32 0, i32 0
  %25 = call i32 @reinit_completion(i32* %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %28 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %27, i32 0, i32 1
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %28, align 8
  store %struct.rtl_priv* %29, %struct.rtl_priv** %12, align 8
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %54 [
    i32 131, label %31
    i32 140, label %33
    i32 139, label %35
    i32 141, label %37
    i32 135, label %39
    i32 134, label %41
    i32 138, label %43
    i32 137, label %45
    i32 136, label %47
    i32 133, label %49
    i32 132, label %51
    i32 129, label %53
    i32 128, label %53
    i32 130, label %53
  ]

31:                                               ; preds = %26
  %32 = load i32, i32* @BT_SEQ_GET_BT_VERSION, align 4
  store i32 %32, i32* %14, align 4
  br label %56

33:                                               ; preds = %26
  %34 = load i32, i32* @BT_SEQ_GET_AFH_MAP_L, align 4
  store i32 %34, i32* %14, align 4
  br label %56

35:                                               ; preds = %26
  %36 = load i32, i32* @BT_SEQ_GET_AFH_MAP_M, align 4
  store i32 %36, i32* %14, align 4
  br label %56

37:                                               ; preds = %26
  %38 = load i32, i32* @BT_SEQ_GET_AFH_MAP_H, align 4
  store i32 %38, i32* %14, align 4
  br label %56

39:                                               ; preds = %26
  %40 = load i32, i32* @BT_SEQ_GET_BT_COEX_SUPPORTED_FEATURE, align 4
  store i32 %40, i32* %14, align 4
  br label %56

41:                                               ; preds = %26
  %42 = load i32, i32* @BT_SEQ_GET_BT_COEX_SUPPORTED_VERSION, align 4
  store i32 %42, i32* %14, align 4
  br label %56

43:                                               ; preds = %26
  %44 = load i32, i32* @BT_SEQ_GET_BT_ANT_DET_VAL, align 4
  store i32 %44, i32* %14, align 4
  br label %56

45:                                               ; preds = %26
  %46 = load i32, i32* @BT_SEQ_GET_BT_BLE_SCAN_PARA, align 4
  store i32 %46, i32* %14, align 4
  br label %56

47:                                               ; preds = %26
  %48 = load i32, i32* @BT_SEQ_GET_BT_BLE_SCAN_TYPE, align 4
  store i32 %48, i32* %14, align 4
  br label %56

49:                                               ; preds = %26
  %50 = load i32, i32* @BT_SEQ_GET_BT_DEVICE_INFO, align 4
  store i32 %50, i32* %14, align 4
  br label %56

51:                                               ; preds = %26
  %52 = load i32, i32* @BT_SEQ_GET_BT_FORB_SLOT_VAL, align 4
  store i32 %52, i32* %14, align 4
  br label %56

53:                                               ; preds = %26, %26, %26
  br label %54

54:                                               ; preds = %26, %53
  %55 = load i32, i32* @BT_SEQ_DONT_CARE, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %54, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %58, align 4
  %60 = load i32, i32* %14, align 4
  %61 = shl i32 %60, 4
  %62 = and i32 %61, 240
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %71 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %75, align 8
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %78 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 %76(i32 %80, i32 103, i32 %81, i32* %82)
  %84 = load i64, i64* %11, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %56
  store i32 1, i32* %6, align 4
  br label %111

87:                                               ; preds = %56
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %89 = load i32, i32* @COMP_BT_COEXIST, align 4
  %90 = load i32, i32* @DBG_LOUD, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i64, i64* %11, align 8
  %93 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %91, i64 %92)
  %94 = call i64 (...) @in_interrupt()
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 0, i32* %6, align 4
  br label %111

97:                                               ; preds = %87
  %98 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %99 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %98, i32 0, i32 0
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @msecs_to_jiffies(i64 %100)
  %102 = call i64 @wait_for_completion_timeout(i32* %99, i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %106 = load i32, i32* @COMP_BT_COEXIST, align 4
  %107 = load i32, i32* @DBG_DMESG, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  store i32 0, i32* %6, align 4
  br label %111

110:                                              ; preds = %97
  store i32 1, i32* %6, align 4
  br label %111

111:                                              ; preds = %110, %104, %96, %86, %18
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @halbtc_is_hw_mailbox_exist(%struct.btc_coexist*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
