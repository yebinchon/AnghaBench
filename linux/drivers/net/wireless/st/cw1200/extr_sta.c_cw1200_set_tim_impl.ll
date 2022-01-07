; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_set_tim_impl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_set_tim_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32 }
%struct.sk_buff = type { i32* }
%struct.wsm_update_ie = type { i32, i32*, i32, i32 }

@WSM_UPDATE_IE_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"[AP] mcast: %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ena\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, i32)* @cw1200_set_tim_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_set_tim_impl(%struct.cw1200_common* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wsm_update_ie, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds %struct.wsm_update_ie, %struct.wsm_update_ie* %7, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.wsm_update_ie, %struct.wsm_update_ie* %7, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.wsm_update_ie, %struct.wsm_update_ie* %7, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.wsm_update_ie, %struct.wsm_update_ie* %7, i32 0, i32 3
  %14 = load i32, i32* @WSM_UPDATE_IE_BEACON, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %21 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %24 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.sk_buff* @ieee80211_beacon_get_tim(i32 %22, i32 %25, i32* %8, i32* %9)
  store %struct.sk_buff* %26, %struct.sk_buff** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %2
  %30 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %31 = call i32 @__cw1200_flush(%struct.cw1200_common* %30, i32 1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %35 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %90

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %43, 6
  br i1 %44, label %45, label %76

45:                                               ; preds = %42
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %45
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %75

65:                                               ; preds = %45
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, -2
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %65, %55
  br label %76

76:                                               ; preds = %75, %42, %39
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = getelementptr inbounds %struct.wsm_update_ie, %struct.wsm_update_ie* %7, i32 0, i32 1
  store i32* %82, i32** %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = getelementptr inbounds %struct.wsm_update_ie, %struct.wsm_update_ie* %7, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %87 = call i32 @wsm_update_ie(%struct.cw1200_common* %86, %struct.wsm_update_ie* %7)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = call i32 @dev_kfree_skb(%struct.sk_buff* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %76, %36
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get_tim(i32, i32, i32*, i32*) #1

declare dso_local i32 @__cw1200_flush(%struct.cw1200_common*, i32) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @wsm_update_ie(%struct.cw1200_common*, %struct.wsm_update_ie*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
