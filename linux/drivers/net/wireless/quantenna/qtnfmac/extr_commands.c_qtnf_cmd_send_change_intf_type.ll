; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_change_intf_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_change_intf_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wiphy = type { i32* }

@QLINK_CMD_CHANGE_INTF = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_change_intf_type(%struct.qtnf_vif* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.qtnf_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wiphy*, align 8
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @QLINK_CMD_CHANGE_INTF, align 4
  %17 = call i32 @qtnf_cmd_send_add_change_intf(%struct.qtnf_vif* %12, i32 %13, i32 %14, i32* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %4
  %21 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %22 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %20
  %28 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %29 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.wiphy* @priv_to_wiphy(i32 %30)
  store %struct.wiphy* %31, %struct.wiphy** %11, align 8
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %58, %27
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %38 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %58

46:                                               ; preds = %36
  %47 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %48 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %51 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @qtnf_cmd_band_info_get(i32 %49, i32 %56)
  br label %58

58:                                               ; preds = %46, %45
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %32

61:                                               ; preds = %32
  br label %62

62:                                               ; preds = %61, %20, %4
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @qtnf_cmd_send_add_change_intf(%struct.qtnf_vif*, i32, i32, i32*, i32) #1

declare dso_local %struct.wiphy* @priv_to_wiphy(i32) #1

declare dso_local i32 @qtnf_cmd_band_info_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
