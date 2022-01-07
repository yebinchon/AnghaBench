; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_bt_enable_disable_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_bt_enable_disable_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@hal_coex_8723 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"8723A BT is enabled !!\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"8723A bt all counters=0, %d times!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"8723A BT is disabled !!\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"8723A BT is from %s to %s!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723e_dm_bt_bt_enable_disable_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_bt_bt_enable_disable_check(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  store i32 1, i32* %4, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 0), align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 1), align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 2), align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 3), align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %15, %12, %9, %1
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 0), align 4
  %21 = icmp eq i32 %20, 60138
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 1), align 4
  %24 = icmp eq i32 %23, 60138
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 2), align 4
  %27 = icmp eq i32 %26, 60138
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 3), align 4
  %30 = icmp eq i32 %29, 60138
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %28, %25, %22, %19
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 0), align 4
  %34 = icmp eq i32 %33, 65535
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 1), align 4
  %37 = icmp eq i32 %36, 65535
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 2), align 4
  %40 = icmp eq i32 %39, 65535
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 3), align 4
  %43 = icmp eq i32 %42, 65535
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %41, %38, %35, %32
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %53 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = load i32, i32* @COMP_BT_COEXIST, align 4
  %57 = load i32, i32* @DBG_TRACE, align 4
  %58 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %87

59:                                               ; preds = %45
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %66 = load i32, i32* @COMP_BT_COEXIST, align 4
  %67 = load i32, i32* @DBG_TRACE, align 4
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %69 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 2
  br i1 %77, label %78, label %86

78:                                               ; preds = %59
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %83 = load i32, i32* @COMP_BT_COEXIST, align 4
  %84 = load i32, i32* @DBG_TRACE, align 4
  %85 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %82, i32 %83, i32 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %78, %59
  br label %87

87:                                               ; preds = %86, %48
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %89 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %93 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %91, %95
  br i1 %96, label %97, label %123

97:                                               ; preds = %87
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %99 = load i32, i32* @COMP_BT_COEXIST, align 4
  %100 = load i32, i32* @DBG_TRACE, align 4
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %102 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %109 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %115 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %107, i8* %114)
  %116 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %117 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %121 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %97, %87
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
