; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_coex_table_with_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_coex_table_with_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.btc_coexist = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32)* @halbtc8723b1ant_coex_table_with_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %0, i32 %1, i32 %2) #0 {
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
  switch i32 %10, label %90 [
    i32 0, label %11
    i32 1, label %15
    i32 2, label %19
    i32 3, label %23
    i32 4, label %27
    i32 5, label %46
    i32 6, label %50
    i32 7, label %54
    i32 8, label %58
    i32 9, label %62
    i32 10, label %66
    i32 11, label %70
    i32 12, label %74
    i32 13, label %78
    i32 14, label %82
    i32 15, label %86
  ]

11:                                               ; preds = %3
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %12, i32 %13, i32 1431655765, i32 1431655765, i32 16777215, i32 3)
  br label %91

15:                                               ; preds = %3
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %16, i32 %17, i32 1431655765, i32 1515870810, i32 16777215, i32 3)
  br label %91

19:                                               ; preds = %3
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %20, i32 %21, i32 1515870810, i32 1515870810, i32 16777215, i32 3)
  br label %91

23:                                               ; preds = %3
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %24, i32 %25, i32 1431655765, i32 1515870810, i32 16777215, i32 3)
  br label %91

27:                                               ; preds = %3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %35, 5
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %38, i32 %39, i32 1431655765, i32 -1431676326, i32 16777215, i32 3)
  br label %45

41:                                               ; preds = %32, %27
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %42, i32 %43, i32 1431655765, i32 1515870810, i32 16777215, i32 3)
  br label %45

45:                                               ; preds = %41, %37
  br label %91

46:                                               ; preds = %3
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %47, i32 %48, i32 1515870810, i32 1521113690, i32 16777215, i32 3)
  br label %91

50:                                               ; preds = %3
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %51, i32 %52, i32 1431655765, i32 -1431655766, i32 16777215, i32 3)
  br label %91

54:                                               ; preds = %3
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %55, i32 %56, i32 -1431655766, i32 -1431655766, i32 16777215, i32 3)
  br label %91

58:                                               ; preds = %3
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %59, i32 %60, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %91

62:                                               ; preds = %3
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %63, i32 %64, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %91

66:                                               ; preds = %3
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %67, i32 %68, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %91

70:                                               ; preds = %3
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %71, i32 %72, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %91

74:                                               ; preds = %3
  %75 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %75, i32 %76, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %91

78:                                               ; preds = %3
  %79 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %79, i32 %80, i32 1610571775, i32 -1431655766, i32 16777215, i32 3)
  br label %91

82:                                               ; preds = %3
  %83 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %83, i32 %84, i32 1610571775, i32 1524259546, i32 16777215, i32 3)
  br label %91

86:                                               ; preds = %3
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist* %87, i32 %88, i32 1440568797, i32 -1431655766, i32 16777215, i32 3)
  br label %91

90:                                               ; preds = %3
  br label %91

91:                                               ; preds = %90, %86, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %45, %23, %19, %15, %11
  ret void
}

declare dso_local i32 @halbtc8723b1ant_coex_table(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
