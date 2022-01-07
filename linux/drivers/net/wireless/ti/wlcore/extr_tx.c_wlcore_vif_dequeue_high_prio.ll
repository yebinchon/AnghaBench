; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wlcore_vif_dequeue_high_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wlcore_vif_dequeue_high_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.wl1271*, %struct.wl12xx_vif*, i32, i32*, i32*)* @wlcore_vif_dequeue_high_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @wlcore_vif_dequeue_high_prio(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %16 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %20 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = srem i32 %18, %21
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %57, %5
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %26 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %23
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %30, %31
  %33 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = srem i32 %32, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %39 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @test_bit(i32 %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  br label %57

44:                                               ; preds = %29
  %45 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = call %struct.sk_buff* @wlcore_lnk_dequeue_high_prio(%struct.wl1271* %45, i32 %46, i32 %47, i32* %48)
  store %struct.sk_buff* %49, %struct.sk_buff** %11, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %57

53:                                               ; preds = %44
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %56 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %60

57:                                               ; preds = %52, %43
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %23

60:                                               ; preds = %53, %23
  %61 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %65 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %68 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  ret %struct.sk_buff* %71
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local %struct.sk_buff* @wlcore_lnk_dequeue_high_prio(%struct.wl1271*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
