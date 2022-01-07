; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_get_txwi_rxwi_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_get_txwi_rxwi_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TXWI_DESC_SIZE_4WORDS = common dso_local global i16 0, align 2
@RXWI_DESC_SIZE_5WORDS = common dso_local global i16 0, align 2
@TXWI_DESC_SIZE_5WORDS = common dso_local global i16 0, align 2
@RXWI_DESC_SIZE_6WORDS = common dso_local global i16 0, align 2
@RXWI_DESC_SIZE_4WORDS = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_get_txwi_rxwi_size(%struct.rt2x00_dev* %0, i16* %1, i16* %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %8 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %21 [
    i32 131, label %11
    i32 130, label %11
    i32 129, label %16
    i32 128, label %16
  ]

11:                                               ; preds = %3, %3
  %12 = load i16, i16* @TXWI_DESC_SIZE_4WORDS, align 2
  %13 = load i16*, i16** %5, align 8
  store i16 %12, i16* %13, align 2
  %14 = load i16, i16* @RXWI_DESC_SIZE_5WORDS, align 2
  %15 = load i16*, i16** %6, align 8
  store i16 %14, i16* %15, align 2
  br label %26

16:                                               ; preds = %3, %3
  %17 = load i16, i16* @TXWI_DESC_SIZE_5WORDS, align 2
  %18 = load i16*, i16** %5, align 8
  store i16 %17, i16* %18, align 2
  %19 = load i16, i16* @RXWI_DESC_SIZE_6WORDS, align 2
  %20 = load i16*, i16** %6, align 8
  store i16 %19, i16* %20, align 2
  br label %26

21:                                               ; preds = %3
  %22 = load i16, i16* @TXWI_DESC_SIZE_4WORDS, align 2
  %23 = load i16*, i16** %5, align 8
  store i16 %22, i16* %23, align 2
  %24 = load i16, i16* @RXWI_DESC_SIZE_4WORDS, align 2
  %25 = load i16*, i16** %6, align 8
  store i16 %24, i16* %25, align 2
  br label %26

26:                                               ; preds = %21, %16, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
