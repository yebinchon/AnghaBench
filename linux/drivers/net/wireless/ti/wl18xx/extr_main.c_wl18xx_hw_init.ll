; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.wl18xx_priv* }
%struct.wl18xx_priv = type { i64, i64 }

@WL18XX_TX_HW_BLOCK_SPARE = common dso_local global i32 0, align 4
@checksum_param = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl18xx_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_hw_init(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl18xx_priv*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %6 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  %8 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %7, align 8
  store %struct.wl18xx_priv* %8, %struct.wl18xx_priv** %5, align 8
  %9 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %5, align 8
  %10 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %5, align 8
  %12 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %14 = load i32, i32* @WL18XX_TX_HW_BLOCK_SPARE, align 4
  %15 = call i32 @wl18xx_set_host_cfg_bitmap(%struct.wl1271* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %22 = call i32 @wl18xx_acx_dynamic_fw_traces(%struct.wl1271* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %40

27:                                               ; preds = %20
  %28 = load i64, i64* @checksum_param, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %32 = call i32 @wl18xx_acx_set_checksum_state(%struct.wl1271* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %35, %25, %18
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @wl18xx_set_host_cfg_bitmap(%struct.wl1271*, i32) #1

declare dso_local i32 @wl18xx_acx_dynamic_fw_traces(%struct.wl1271*) #1

declare dso_local i32 @wl18xx_acx_set_checksum_state(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
