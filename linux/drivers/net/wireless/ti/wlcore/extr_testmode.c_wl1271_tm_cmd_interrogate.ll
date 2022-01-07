; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd_interrogate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd_interrogate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.wl1271_command = type { i32 }
%struct.sk_buff = type { i32 }

@DEBUG_TESTMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"testmode cmd interrogate\00", align 1
@WL1271_TM_ATTR_IE_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"testmode cmd interrogate failed: %d\00", align 1
@WL1271_TM_ATTR_DATA = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.nlattr**)* @wl1271_tm_cmd_interrogate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_tm_cmd_interrogate(%struct.wl1271* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271_command*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %10 = load i32, i32* @DEBUG_TESTMODE, align 4
  %11 = call i32 @wl1271_debug(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %13 = load i64, i64* @WL1271_TM_ATTR_IE_ID, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %117

20:                                               ; preds = %2
  %21 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %22 = load i64, i64* @WL1271_TM_ATTR_IE_ID, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = call i32 @nla_get_u8(%struct.nlattr* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WLCORE_STATE_ON, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %112

40:                                               ; preds = %20
  %41 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %42 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pm_runtime_get_sync(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %49 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pm_runtime_put_noidle(i32 %50)
  br label %112

52:                                               ; preds = %40
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.wl1271_command* @kzalloc(i32 4, i32 %53)
  store %struct.wl1271_command* %54, %struct.wl1271_command** %7, align 8
  %55 = load %struct.wl1271_command*, %struct.wl1271_command** %7, align 8
  %56 = icmp ne %struct.wl1271_command* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %103

60:                                               ; preds = %52
  %61 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.wl1271_command*, %struct.wl1271_command** %7, align 8
  %64 = call i32 @wl1271_cmd_interrogate(%struct.wl1271* %61, i32 %62, %struct.wl1271_command* %63, i32 4, i32 4)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @wl1271_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %100

70:                                               ; preds = %60
  %71 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %72 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32 %75, i32 4)
  store %struct.sk_buff* %76, %struct.sk_buff** %8, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %70
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %100

82:                                               ; preds = %70
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = load i32, i32* @WL1271_TM_ATTR_DATA, align 4
  %85 = load %struct.wl1271_command*, %struct.wl1271_command** %7, align 8
  %86 = call i64 @nla_put(%struct.sk_buff* %83, i32 %84, i32 4, %struct.wl1271_command* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = call i32 @kfree_skb(%struct.sk_buff* %89)
  %91 = load i32, i32* @EMSGSIZE, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %100

93:                                               ; preds = %82
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = call i32 @cfg80211_testmode_reply(%struct.sk_buff* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %100

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %98, %88, %79, %67
  %101 = load %struct.wl1271_command*, %struct.wl1271_command** %7, align 8
  %102 = call i32 @kfree(%struct.wl1271_command* %101)
  br label %103

103:                                              ; preds = %100, %57
  %104 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %105 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @pm_runtime_mark_last_busy(i32 %106)
  %108 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %109 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pm_runtime_put_autosuspend(i32 %110)
  br label %112

112:                                              ; preds = %103, %47, %37
  %113 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %114 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %113, i32 0, i32 1
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %112, %17
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local %struct.wl1271_command* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_interrogate(%struct.wl1271*, i32, %struct.wl1271_command*, i32, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.wl1271_command*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cfg80211_testmode_reply(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.wl1271_command*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
