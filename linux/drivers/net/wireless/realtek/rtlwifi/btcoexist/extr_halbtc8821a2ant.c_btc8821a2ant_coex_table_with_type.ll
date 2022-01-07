; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_coex_table_with_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_coex_table_with_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btc_coexist = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32)* @btc8821a2ant_coex_table_with_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.btc_coexist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %83 [
    i32 0, label %11
    i32 1, label %15
    i32 2, label %19
    i32 3, label %23
    i32 4, label %27
    i32 5, label %31
    i32 6, label %35
    i32 7, label %39
    i32 8, label %43
    i32 9, label %47
    i32 10, label %51
    i32 11, label %55
    i32 12, label %59
    i32 13, label %63
    i32 14, label %67
    i32 15, label %71
    i32 16, label %75
    i32 17, label %79
  ]

11:                                               ; preds = %3
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %12, i32 %13, i32 1431655765, i32 1431655765, i32 16777215, i32 3)
  br label %84

15:                                               ; preds = %3
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %16, i32 %17, i32 1431655765, i32 1526356730, i32 16777215, i32 3)
  br label %84

19:                                               ; preds = %3
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %20, i32 %21, i32 1524259546, i32 1524259546, i32 16777215, i32 3)
  br label %84

23:                                               ; preds = %3
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %24, i32 %25, i32 -1431655766, i32 -1431655766, i32 16777215, i32 3)
  br label %84

27:                                               ; preds = %3
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %28, i32 %29, i32 -1, i32 -1, i32 16777215, i32 3)
  br label %84

31:                                               ; preds = %3
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %32, i32 %33, i32 1610571775, i32 1610571775, i32 16777215, i32 3)
  br label %84

35:                                               ; preds = %3
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %36, i32 %37, i32 1442797055, i32 1515870810, i32 16777215, i32 3)
  br label %84

39:                                               ; preds = %3
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %40, i32 %41, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %84

43:                                               ; preds = %3
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %44, i32 %45, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %84

47:                                               ; preds = %3
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %48, i32 %49, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %84

51:                                               ; preds = %3
  %52 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %52, i32 %53, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %84

55:                                               ; preds = %3
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %56, i32 %57, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %84

59:                                               ; preds = %3
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %60, i32 %61, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %84

63:                                               ; preds = %3
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %64, i32 %65, i32 1610571775, i32 -1431655766, i32 16777215, i32 3)
  br label %84

67:                                               ; preds = %3
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %68, i32 %69, i32 1610571775, i32 1524259546, i32 16777215, i32 3)
  br label %84

71:                                               ; preds = %3
  %72 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %72, i32 %73, i32 1440568797, i32 -1431655766, i32 16777215, i32 3)
  br label %84

75:                                               ; preds = %3
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %76, i32 %77, i32 1608474591, i32 1608212443, i32 16777215, i32 3)
  br label %84

79:                                               ; preds = %3
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %80, i32 %81, i32 -84215046, i32 -84215046, i32 16777215, i32 3)
  br label %84

83:                                               ; preds = %3
  br label %84

84:                                               ; preds = %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11
  ret void
}

declare dso_local i32 @btc8821a2ant_coex_table(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
