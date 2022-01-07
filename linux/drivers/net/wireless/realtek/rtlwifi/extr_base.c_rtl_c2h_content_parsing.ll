; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_c2h_content_parsing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_c2h_content_parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.rtl_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.rtl_hal_ops* }
%struct.rtl_hal_ops = type { i32 (...)*, i32 (%struct.ieee80211_hw.0*, i32*, i32)* }
%struct.ieee80211_hw.0 = type opaque
%struct.TYPE_3__ = type { %struct.rtl_btc_ops* }
%struct.rtl_btc_ops = type { i32 (%struct.rtl_priv*, i32*, i32)*, i32 (%struct.rtl_priv*, i32*, i32)* }

@C2H_DATA_OFFSET = common dso_local global i32 0, align 4
@COMP_FW = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"[C2H], C2H_DBG!!\0A\00", align 1
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"[C2H], C2H_TXBF!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"[C2H], C2H_BT_INFO!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"[C2H], C2H_BT_MP!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"[C2H], Unknown packet!! cmd_id(%#X)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*)* @rtl_c2h_content_parsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_c2h_content_parsing(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal_ops*, align 8
  %7 = alloca %struct.rtl_btc_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %5, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.rtl_hal_ops*, %struct.rtl_hal_ops** %16, align 8
  store %struct.rtl_hal_ops* %17, %struct.rtl_hal_ops** %6, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.rtl_btc_ops*, %struct.rtl_btc_ops** %20, align 8
  store %struct.rtl_btc_ops* %21, %struct.rtl_btc_ops** %7, align 8
  store i32* null, i32** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GET_C2H_CMD_ID(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @C2H_DATA_OFFSET, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @GET_C2H_DATA_PTR(i32 %33)
  store i32* %34, i32** %10, align 8
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %112 [
    i32 131, label %36
    i32 129, label %41
    i32 128, label %46
    i32 130, label %51
    i32 133, label %66
    i32 132, label %89
  ]

36:                                               ; preds = %2
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %38 = load i32, i32* @COMP_FW, align 4
  %39 = load i32, i32* @DBG_LOUD, align 4
  %40 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %118

41:                                               ; preds = %2
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %43 = load i32, i32* @COMP_FW, align 4
  %44 = load i32, i32* @DBG_TRACE, align 4
  %45 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %118

46:                                               ; preds = %2
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @rtl_tx_report_handler(%struct.ieee80211_hw* %47, i32* %48, i32 %49)
  br label %118

51:                                               ; preds = %2
  %52 = load %struct.rtl_hal_ops*, %struct.rtl_hal_ops** %6, align 8
  %53 = getelementptr inbounds %struct.rtl_hal_ops, %struct.rtl_hal_ops* %52, i32 0, i32 1
  %54 = load i32 (%struct.ieee80211_hw.0*, i32*, i32)*, i32 (%struct.ieee80211_hw.0*, i32*, i32)** %53, align 8
  %55 = icmp ne i32 (%struct.ieee80211_hw.0*, i32*, i32)* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.rtl_hal_ops*, %struct.rtl_hal_ops** %6, align 8
  %58 = getelementptr inbounds %struct.rtl_hal_ops, %struct.rtl_hal_ops* %57, i32 0, i32 1
  %59 = load i32 (%struct.ieee80211_hw.0*, i32*, i32)*, i32 (%struct.ieee80211_hw.0*, i32*, i32)** %58, align 8
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %61 = bitcast %struct.ieee80211_hw* %60 to %struct.ieee80211_hw.0*
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 %59(%struct.ieee80211_hw.0* %61, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %56, %51
  br label %118

66:                                               ; preds = %2
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %68 = load i32, i32* @COMP_FW, align 4
  %69 = load i32, i32* @DBG_TRACE, align 4
  %70 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.rtl_hal_ops*, %struct.rtl_hal_ops** %74, align 8
  %76 = getelementptr inbounds %struct.rtl_hal_ops, %struct.rtl_hal_ops* %75, i32 0, i32 0
  %77 = load i32 (...)*, i32 (...)** %76, align 8
  %78 = call i32 (...) %77()
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %66
  %81 = load %struct.rtl_btc_ops*, %struct.rtl_btc_ops** %7, align 8
  %82 = getelementptr inbounds %struct.rtl_btc_ops, %struct.rtl_btc_ops* %81, i32 0, i32 1
  %83 = load i32 (%struct.rtl_priv*, i32*, i32)*, i32 (%struct.rtl_priv*, i32*, i32)** %82, align 8
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 %83(%struct.rtl_priv* %84, i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %80, %66
  br label %118

89:                                               ; preds = %2
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %91 = load i32, i32* @COMP_FW, align 4
  %92 = load i32, i32* @DBG_TRACE, align 4
  %93 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %95 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.rtl_hal_ops*, %struct.rtl_hal_ops** %97, align 8
  %99 = getelementptr inbounds %struct.rtl_hal_ops, %struct.rtl_hal_ops* %98, i32 0, i32 0
  %100 = load i32 (...)*, i32 (...)** %99, align 8
  %101 = call i32 (...) %100()
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %89
  %104 = load %struct.rtl_btc_ops*, %struct.rtl_btc_ops** %7, align 8
  %105 = getelementptr inbounds %struct.rtl_btc_ops, %struct.rtl_btc_ops* %104, i32 0, i32 0
  %106 = load i32 (%struct.rtl_priv*, i32*, i32)*, i32 (%struct.rtl_priv*, i32*, i32)** %105, align 8
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 %106(%struct.rtl_priv* %107, i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %103, %89
  br label %118

112:                                              ; preds = %2
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %114 = load i32, i32* @COMP_FW, align 4
  %115 = load i32, i32* @DBG_TRACE, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %113, i32 %114, i32 %115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %112, %111, %88, %65, %46, %41, %36
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @GET_C2H_CMD_ID(i32) #1

declare dso_local i32* @GET_C2H_DATA_PTR(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_tx_report_handler(%struct.ieee80211_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
