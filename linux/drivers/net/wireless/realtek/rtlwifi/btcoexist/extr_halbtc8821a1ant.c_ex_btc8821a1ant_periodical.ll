; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_periodical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_periodical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btc_coexist = type { i32, i32 (%struct.btc_coexist*, i32, i32*)*, %struct.btc_stack_info, %struct.btc_board_info, %struct.rtl_priv* }
%struct.btc_stack_info = type { i32, i64 }
%struct.btc_board_info = type { i32, i32, i32 }
%struct.rtl_priv = type { i32 }

@ex_btc8821a1ant_periodical.dis_ver_info_cnt = internal global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"[BTCoex], ==========================Periodical===========================\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"[BTCoex], ****************************************************************\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"[BTCoex], Ant PG Num/ Ant Mech/ Ant Pos = %d/ %d/ %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"[BTCoex], BT stack/ hci ext ver = %s / %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@BTC_GET_U4_BT_PATCH_VER = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_FW_VER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"[BTCoex], CoexVer/ FwVer/ PatchVer = %d_%x/ 0x%x/ 0x%x(%d)\0A\00", align 1
@glcoex_ver_date_8821a_1ant = common dso_local global i32 0, align 4
@glcoex_ver_8821a_1ant = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a1ant_periodical(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.btc_board_info*, align 8
  %7 = alloca %struct.btc_stack_info*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %8, i32 0, i32 4
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %12 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %11, i32 0, i32 3
  store %struct.btc_board_info* %12, %struct.btc_board_info** %6, align 8
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 2
  store %struct.btc_stack_info* %14, %struct.btc_stack_info** %7, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = load i32, i32* @COMP_BT_COEXIST, align 4
  %17 = load i32, i32* @DBG_LOUD, align 4
  %18 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %15, i32 %16, i32 %17, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ex_btc8821a1ant_periodical.dis_ver_info_cnt, align 4
  %20 = icmp sle i32 %19, 5
  br i1 %20, label %21, label %79

21:                                               ; preds = %1
  %22 = load i32, i32* @ex_btc8821a1ant_periodical.dis_ver_info_cnt, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @ex_btc8821a1ant_periodical.dis_ver_info_cnt, align 4
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = load i32, i32* @COMP_BT_COEXIST, align 4
  %26 = load i32, i32* @DBG_LOUD, align 4
  %27 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i32, i32* @COMP_BT_COEXIST, align 4
  %30 = load i32, i32* @DBG_LOUD, align 4
  %31 = load %struct.btc_board_info*, %struct.btc_board_info** %6, align 8
  %32 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.btc_board_info*, %struct.btc_board_info** %6, align 8
  %35 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.btc_board_info*, %struct.btc_board_info** %6, align 8
  %38 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = load i32, i32* @COMP_BT_COEXIST, align 4
  %43 = load i32, i32* @DBG_LOUD, align 4
  %44 = load %struct.btc_stack_info*, %struct.btc_stack_info** %7, align 8
  %45 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %50 = load %struct.btc_stack_info*, %struct.btc_stack_info** %7, align 8
  %51 = getelementptr inbounds %struct.btc_stack_info, %struct.btc_stack_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %49, i32 %52)
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %55 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %54, i32 0, i32 1
  %56 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %55, align 8
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %58 = load i32, i32* @BTC_GET_U4_BT_PATCH_VER, align 4
  %59 = call i32 %56(%struct.btc_coexist* %57, i32 %58, i32* %5)
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %61 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %60, i32 0, i32 1
  %62 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %61, align 8
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %64 = load i32, i32* @BTC_GET_U4_WIFI_FW_VER, align 4
  %65 = call i32 %62(%struct.btc_coexist* %63, i32 %64, i32* %4)
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %67 = load i32, i32* @COMP_BT_COEXIST, align 4
  %68 = load i32, i32* @DBG_LOUD, align 4
  %69 = load i32, i32* @glcoex_ver_date_8821a_1ant, align 4
  %70 = load i32, i32* @glcoex_ver_8821a_1ant, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %76 = load i32, i32* @COMP_BT_COEXIST, align 4
  %77 = load i32, i32* @DBG_LOUD, align 4
  %78 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %75, i32 %76, i32 %77, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %21, %1
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %81 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %86 = call i32 @btc8821a1ant_query_bt_info(%struct.btc_coexist* %85)
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %88 = call i32 @btc8821a1ant_monitor_bt_ctr(%struct.btc_coexist* %87)
  br label %94

89:                                               ; preds = %79
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %84
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @btc8821a1ant_query_bt_info(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_monitor_bt_ctr(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
