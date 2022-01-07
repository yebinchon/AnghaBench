; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_build_null_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_build_null_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i32, i32 }
%struct.sk_buff = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@BSS_TYPE_IBSS = common dso_local global i64 0, align 8
@CMD_TEMPL_NULL_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cmd buld null data failed %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_build_null_data(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %12 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  store i8* null, i8** %7, align 8
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %22 = call i32 @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %21)
  %23 = call %struct.sk_buff* @ieee80211_nullfunc_get(i32 %20, i32 %22, i32 0)
  store %struct.sk_buff* %23, %struct.sk_buff** %5, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %46

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %27, %16
  %35 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %36 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %37 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CMD_TEMPL_NULL_DATA, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %43 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %35, i32 %38, i32 %39, i8* %40, i32 %41, i32 0, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %34, %26
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @dev_kfree_skb(%struct.sk_buff* %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @wl1271_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local %struct.sk_buff* @ieee80211_nullfunc_get(i32, i32, i32) #1

declare dso_local i32 @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_cmd_template_set(%struct.wl1271*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
