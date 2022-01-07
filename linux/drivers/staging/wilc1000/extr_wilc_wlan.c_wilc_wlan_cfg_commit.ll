; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_cfg_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_cfg_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { %struct.wilc* }
%struct.wilc = type { i32, i32, %struct.wilc_cfg_frame }
%struct.wilc_cfg_frame = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i32, i32, i32 }

@WILC_CFG_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc_vif*, i32, i32)* @wilc_wlan_cfg_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_wlan_cfg_commit(%struct.wilc_vif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wilc*, align 8
  %9 = alloca %struct.wilc_cfg_frame*, align 8
  %10 = alloca i32, align 4
  store %struct.wilc_vif* %0, %struct.wilc_vif** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %12 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %11, i32 0, i32 0
  %13 = load %struct.wilc*, %struct.wilc** %12, align 8
  store %struct.wilc* %13, %struct.wilc** %8, align 8
  %14 = load %struct.wilc*, %struct.wilc** %8, align 8
  %15 = getelementptr inbounds %struct.wilc, %struct.wilc* %14, i32 0, i32 2
  store %struct.wilc_cfg_frame* %15, %struct.wilc_cfg_frame** %9, align 8
  %16 = load %struct.wilc*, %struct.wilc** %8, align 8
  %17 = getelementptr inbounds %struct.wilc, %struct.wilc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @WILC_CFG_SET, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.wilc_cfg_frame*, %struct.wilc_cfg_frame** %9, align 8
  %27 = getelementptr inbounds %struct.wilc_cfg_frame, %struct.wilc_cfg_frame* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8 87, i8* %28, align 4
  br label %33

29:                                               ; preds = %3
  %30 = load %struct.wilc_cfg_frame*, %struct.wilc_cfg_frame** %9, align 8
  %31 = getelementptr inbounds %struct.wilc_cfg_frame, %struct.wilc_cfg_frame* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8 81, i8* %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.wilc*, %struct.wilc** %8, align 8
  %35 = getelementptr inbounds %struct.wilc, %struct.wilc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = srem i32 %36, 256
  %38 = load %struct.wilc_cfg_frame*, %struct.wilc_cfg_frame** %9, align 8
  %39 = getelementptr inbounds %struct.wilc_cfg_frame, %struct.wilc_cfg_frame* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @cpu_to_le16(i32 %41)
  %43 = load %struct.wilc_cfg_frame*, %struct.wilc_cfg_frame** %9, align 8
  %44 = getelementptr inbounds %struct.wilc_cfg_frame, %struct.wilc_cfg_frame* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = load %struct.wilc_cfg_frame*, %struct.wilc_cfg_frame** %9, align 8
  %49 = getelementptr inbounds %struct.wilc_cfg_frame, %struct.wilc_cfg_frame* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.wilc_cfg_frame*, %struct.wilc_cfg_frame** %9, align 8
  %52 = getelementptr inbounds %struct.wilc_cfg_frame, %struct.wilc_cfg_frame* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wilc*, %struct.wilc** %8, align 8
  %56 = getelementptr inbounds %struct.wilc, %struct.wilc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %58 = load %struct.wilc_cfg_frame*, %struct.wilc_cfg_frame** %9, align 8
  %59 = getelementptr inbounds %struct.wilc_cfg_frame, %struct.wilc_cfg_frame* %58, i32 0, i32 0
  %60 = bitcast %struct.TYPE_2__* %59 to i32*
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @wilc_wlan_txq_add_cfg_pkt(%struct.wilc_vif* %57, i32* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %66

65:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wilc_wlan_txq_add_cfg_pkt(%struct.wilc_vif*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
