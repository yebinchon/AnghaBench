; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_detect_fem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_detect_fem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@PLT_FEM_DETECT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL1271_TM_ATTR_DATA = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.nlattr**)* @wl1271_tm_detect_fem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_tm_detect_fem(%struct.wl1271* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  %8 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %9 = load i32, i32* @PLT_FEM_DETECT, align 4
  %10 = call i32 @wl1271_plt_start(%struct.wl1271* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = call i32 @nla_total_size(i32 4)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %20 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32 %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %14
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %46

31:                                               ; preds = %14
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load i32, i32* @WL1271_TM_ATTR_DATA, align 4
  %34 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 1
  %36 = call i64 @nla_put(%struct.sk_buff* %32, i32 %33, i32 4, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %46

43:                                               ; preds = %31
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call i32 @cfg80211_testmode_reply(%struct.sk_buff* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %38, %28
  %47 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %48 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %51 = call i32 @wl1271_plt_stop(%struct.wl1271* %50)
  br label %52

52:                                               ; preds = %46, %13
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @wl1271_plt_start(%struct.wl1271*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cfg80211_testmode_reply(%struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wl1271_plt_stop(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
