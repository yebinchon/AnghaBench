; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_coex_table_with_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_coex_table_with_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32)* @btc8821a1ant_coex_table_with_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.btc_coexist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %40 [
    i32 0, label %8
    i32 1, label %12
    i32 2, label %16
    i32 3, label %20
    i32 4, label %24
    i32 5, label %28
    i32 6, label %32
    i32 7, label %36
  ]

8:                                                ; preds = %3
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @btc8821a1ant_coex_table(%struct.btc_coexist* %9, i32 %10, i32 1431655765, i32 1431655765, i32 16777215, i32 3)
  br label %41

12:                                               ; preds = %3
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @btc8821a1ant_coex_table(%struct.btc_coexist* %13, i32 %14, i32 1431655765, i32 1515870810, i32 16777215, i32 3)
  br label %41

16:                                               ; preds = %3
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @btc8821a1ant_coex_table(%struct.btc_coexist* %17, i32 %18, i32 1515870810, i32 1515870810, i32 16777215, i32 3)
  br label %41

20:                                               ; preds = %3
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @btc8821a1ant_coex_table(%struct.btc_coexist* %21, i32 %22, i32 1515870810, i32 -1431655766, i32 16777215, i32 3)
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @btc8821a1ant_coex_table(%struct.btc_coexist* %25, i32 %26, i32 1431655765, i32 1515870810, i32 16777215, i32 3)
  br label %41

28:                                               ; preds = %3
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @btc8821a1ant_coex_table(%struct.btc_coexist* %29, i32 %30, i32 1515870810, i32 -1431676326, i32 16777215, i32 3)
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @btc8821a1ant_coex_table(%struct.btc_coexist* %33, i32 %34, i32 1431655765, i32 -1431676326, i32 16777215, i32 3)
  br label %41

36:                                               ; preds = %3
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @btc8821a1ant_coex_table(%struct.btc_coexist* %37, i32 %38, i32 -1431655766, i32 -1431655766, i32 16777215, i32 3)
  br label %41

40:                                               ; preds = %3
  br label %41

41:                                               ; preds = %40, %36, %32, %28, %24, %20, %16, %12, %8
  ret void
}

declare dso_local i32 @btc8821a1ant_coex_table(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
