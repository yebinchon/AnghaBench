; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf.c_rtl88eu_phy_rf6052_set_ofdm_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf.c_rtl88eu_phy_rf6052_set_ofdm_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88eu_phy_rf6052_set_ofdm_txpower(%struct.adapter* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i64], align 16
  %12 = alloca [2 x i64], align 16
  %13 = alloca [2 x i64], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.adapter*, %struct.adapter** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %24 = call i32 @getpowerbase88e(%struct.adapter* %17, i32* %18, i32* %19, i32* %20, i32 %21, i64* %22, i64* %23)
  %25 = load %struct.adapter*, %struct.adapter** %6, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @rtl88eu_dm_txpower_track_adjust(i32* %28, i32 0, i32* %15, i64* %14)
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %70, %5
  %31 = load i32, i32* %16, align 4
  %32 = icmp slt i32 %31, 6
  br i1 %32, label %33, label %73

33:                                               ; preds = %30
  %34 = load %struct.adapter*, %struct.adapter** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %16, align 4
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %40 = call i32 @get_rx_power_val_by_reg(%struct.adapter* %34, i32 %35, i32 %36, i64* %37, i64* %38, i64* %39)
  %41 = load i32, i32* %15, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %46 = load i64, i64* %45, align 16
  %47 = add nsw i64 %46, %44
  store i64 %47, i64* %45, align 16
  %48 = load i64, i64* %14, align 8
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %48
  store i64 %51, i64* %49, align 8
  br label %65

52:                                               ; preds = %33
  %53 = load i32, i32* %15, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i64, i64* %14, align 8
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %58 = load i64, i64* %57, align 16
  %59 = sub nsw i64 %58, %56
  store i64 %59, i64* %57, align 16
  %60 = load i64, i64* %14, align 8
  %61 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, %60
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %55, %52
  br label %65

65:                                               ; preds = %64, %43
  %66 = load %struct.adapter*, %struct.adapter** %6, align 8
  %67 = load i32, i32* %16, align 4
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %69 = call i32 @write_ofdm_pwr_reg(%struct.adapter* %66, i32 %67, i64* %68)
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  br label %30

73:                                               ; preds = %30
  ret void
}

declare dso_local i32 @getpowerbase88e(%struct.adapter*, i32*, i32*, i32*, i32, i64*, i64*) #1

declare dso_local i32 @rtl88eu_dm_txpower_track_adjust(i32*, i32, i32*, i64*) #1

declare dso_local i32 @get_rx_power_val_by_reg(%struct.adapter*, i32, i32, i64*, i64*, i64*) #1

declare dso_local i32 @write_ofdm_pwr_reg(%struct.adapter*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
