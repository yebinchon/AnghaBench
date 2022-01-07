; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_sta_handle_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_sta_handle_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__*, %struct.wl12xx_vif* }
%struct.TYPE_2__ = type { i32 (%struct.wl1271*, %struct.wl12xx_vif*)* }
%struct.wl12xx_vif = type { i32 }

@WLVIF_FLAG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*, i32)* @wl1271_sta_handle_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_sta_handle_idle(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @WLVIF_FLAG_ACTIVE, align 4
  %9 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %10 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %9, i32 0, i32 0
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %47

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @WLVIF_FLAG_ACTIVE, align 4
  %24 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %25 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  br label %47

27:                                               ; preds = %19
  %28 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %29 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %28, i32 0, i32 1
  %30 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %29, align 8
  %31 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %32 = icmp eq %struct.wl12xx_vif* %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.wl1271*, %struct.wl12xx_vif*)*, i32 (%struct.wl1271*, %struct.wl12xx_vif*)** %37, align 8
  %39 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %40 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %41 = call i32 %38(%struct.wl1271* %39, %struct.wl12xx_vif* %40)
  br label %42

42:                                               ; preds = %33, %27
  %43 = load i32, i32* @WLVIF_FLAG_ACTIVE, align 4
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %45 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %44, i32 0, i32 0
  %46 = call i32 @set_bit(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %18, %42, %22
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
