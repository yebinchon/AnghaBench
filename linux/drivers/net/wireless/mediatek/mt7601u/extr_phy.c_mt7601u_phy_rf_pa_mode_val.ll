; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_phy_rf_pa_mode_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_phy_rf_pa_mode_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32* }

@mt7601u_phy_rf_pa_mode_val.decode_tb = internal constant [4 x i32] [i32 0, i32 8847, i32 -5734, i32 -5734], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*, i32, i32)* @mt7601u_phy_rf_pa_mode_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_phy_rf_pa_mode_val(%struct.mt7601u_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %18 [
    i32 128, label %9
    i32 129, label %12
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 4
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %3, %9
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %20 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 2
  %28 = ashr i32 %25, %27
  %29 = and i32 %28, 3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* @mt7601u_phy_rf_pa_mode_val.decode_tb, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
