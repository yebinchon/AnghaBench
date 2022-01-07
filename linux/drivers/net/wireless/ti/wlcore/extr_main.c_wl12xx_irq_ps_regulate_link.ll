; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_irq_ps_regulate_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_irq_ps_regulate_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32 }
%struct.wl12xx_vif = type { i32 }

@WL1271_PS_STA_MAX_PACKETS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*, i64, i64)* @wl12xx_irq_ps_regulate_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl12xx_irq_ps_regulate_link(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 2
  %13 = call i32 @test_bit(i64 %10, i32* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @WL1271_PS_STA_MAX_PACKETS, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %4
  %21 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %22 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @wl12xx_ps_link_end(%struct.wl1271* %21, %struct.wl12xx_vif* %22, i64 %23)
  br label %48

25:                                               ; preds = %16
  %26 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 2
  %33 = add nsw i32 %32, 1
  %34 = icmp sgt i32 %28, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @WL1271_PS_STA_MAX_PACKETS, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @wl12xx_ps_link_start(%struct.wl1271* %43, %struct.wl12xx_vif* %44, i64 %45, i32 1)
  br label %47

47:                                               ; preds = %42, %38, %35, %25
  br label %48

48:                                               ; preds = %47, %20
  ret void
}

declare dso_local i32 @test_bit(i64, i32*) #1

declare dso_local i32 @wl12xx_ps_link_end(%struct.wl1271*, %struct.wl12xx_vif*, i64) #1

declare dso_local i32 @wl12xx_ps_link_start(%struct.wl1271*, %struct.wl12xx_vif*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
