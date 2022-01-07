; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_sta_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_sta_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_sta_hw_init(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %8 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %9 = call i32 @wl12xx_acx_config_ps(%struct.wl1271* %7, %struct.wl12xx_vif* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %16 = call i32 @wl1271_acx_fm_coex(%struct.wl1271* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %14
  %22 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %23 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %24 = call i32 @wl1271_acx_sta_rate_policies(%struct.wl1271* %22, %struct.wl12xx_vif* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %27, %19, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @wl12xx_acx_config_ps(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_acx_fm_coex(%struct.wl1271*) #1

declare dso_local i32 @wl1271_acx_sta_rate_policies(%struct.wl1271*, %struct.wl12xx_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
