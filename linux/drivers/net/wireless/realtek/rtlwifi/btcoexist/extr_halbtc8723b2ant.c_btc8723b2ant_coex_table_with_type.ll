; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_coex_table_with_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_coex_table_with_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32)* @btc8723b2ant_coex_table_with_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.btc_coexist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %72 [
    i32 0, label %8
    i32 1, label %12
    i32 2, label %16
    i32 3, label %20
    i32 4, label %24
    i32 5, label %28
    i32 6, label %32
    i32 7, label %36
    i32 8, label %40
    i32 9, label %44
    i32 10, label %48
    i32 11, label %52
    i32 12, label %56
    i32 13, label %60
    i32 14, label %64
    i32 15, label %68
  ]

8:                                                ; preds = %3
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %9, i32 %10, i32 1431655765, i32 1431655765, i32 16777215, i32 3)
  br label %73

12:                                               ; preds = %3
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %13, i32 %14, i32 1431655765, i32 1526356730, i32 16777215, i32 3)
  br label %73

16:                                               ; preds = %3
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %17, i32 %18, i32 1524259546, i32 1524259546, i32 16777215, i32 3)
  br label %73

20:                                               ; preds = %3
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %21, i32 %22, i32 -1431655766, i32 -1431655766, i32 16777215, i32 3)
  br label %73

24:                                               ; preds = %3
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %25, i32 %26, i32 -1, i32 -1, i32 16777215, i32 3)
  br label %73

28:                                               ; preds = %3
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %29, i32 %30, i32 1610571775, i32 1610571775, i32 16777215, i32 3)
  br label %73

32:                                               ; preds = %3
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %33, i32 %34, i32 1442797055, i32 1515870810, i32 16777215, i32 3)
  br label %73

36:                                               ; preds = %3
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %37, i32 %38, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %73

40:                                               ; preds = %3
  %41 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %41, i32 %42, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %73

44:                                               ; preds = %3
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %45, i32 %46, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %73

48:                                               ; preds = %3
  %49 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %49, i32 %50, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %73

52:                                               ; preds = %3
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %53, i32 %54, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %73

56:                                               ; preds = %3
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %57, i32 %58, i32 1440568797, i32 1524259546, i32 16777215, i32 3)
  br label %73

60:                                               ; preds = %3
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %61, i32 %62, i32 1610571775, i32 -1431655766, i32 16777215, i32 3)
  br label %73

64:                                               ; preds = %3
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %65, i32 %66, i32 1610571775, i32 1524259546, i32 16777215, i32 3)
  br label %73

68:                                               ; preds = %3
  %69 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @btc8723b2ant_coex_table(%struct.btc_coexist* %69, i32 %70, i32 1440568797, i32 -1431655766, i32 16777215, i32 3)
  br label %73

72:                                               ; preds = %3
  br label %73

73:                                               ; preds = %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12, %8
  ret void
}

declare dso_local i32 @btc8723b2ant_coex_table(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
