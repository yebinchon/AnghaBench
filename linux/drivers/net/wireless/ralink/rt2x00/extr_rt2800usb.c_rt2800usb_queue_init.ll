; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800usb.c_rt2800usb_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800usb.c_rt2800usb_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, i32, i16, i32, i8*, i8*, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }

@AGGREGATION_SIZE = common dso_local global i8* null, align 8
@RXINFO_DESC_SIZE = common dso_local global i8* null, align 8
@TXINFO_DESC_SIZE = common dso_local global i8* null, align 8
@MGMT_FRAME_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_queue*)* @rt2800usb_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800usb_queue_init(%struct.data_queue* %0) #0 {
  %2 = alloca %struct.data_queue*, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.data_queue* %0, %struct.data_queue** %2, align 8
  %6 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %7 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %6, i32 0, i32 6
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  store %struct.rt2x00_dev* %8, %struct.rt2x00_dev** %3, align 8
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = call i32 @rt2800_get_txwi_rxwi_size(%struct.rt2x00_dev* %9, i16* %4, i16* %5)
  %11 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %12 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %57 [
    i32 128, label %14
    i32 131, label %28
    i32 132, label %28
    i32 134, label %28
    i32 133, label %28
    i32 129, label %42
    i32 130, label %56
  ]

14:                                               ; preds = %1
  %15 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %16 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %15, i32 0, i32 1
  store i32 128, i32* %16, align 4
  %17 = load i8*, i8** @AGGREGATION_SIZE, align 8
  %18 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %19 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %18, i32 0, i32 5
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @RXINFO_DESC_SIZE, align 8
  %21 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %22 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load i16, i16* %5, align 2
  %24 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %25 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %24, i32 0, i32 2
  store i16 %23, i16* %25, align 8
  %26 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %27 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %26, i32 0, i32 3
  store i32 4, i32* %27, align 4
  br label %59

28:                                               ; preds = %1, %1, %1, %1
  %29 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %30 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %29, i32 0, i32 1
  store i32 16, i32* %30, align 4
  %31 = load i8*, i8** @AGGREGATION_SIZE, align 8
  %32 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %33 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @TXINFO_DESC_SIZE, align 8
  %35 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %36 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i16, i16* %4, align 2
  %38 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %39 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %38, i32 0, i32 2
  store i16 %37, i16* %39, align 8
  %40 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %41 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %40, i32 0, i32 3
  store i32 4, i32* %41, align 4
  br label %59

42:                                               ; preds = %1
  %43 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %44 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %43, i32 0, i32 1
  store i32 8, i32* %44, align 4
  %45 = load i8*, i8** @MGMT_FRAME_SIZE, align 8
  %46 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %47 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @TXINFO_DESC_SIZE, align 8
  %49 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %50 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load i16, i16* %4, align 2
  %52 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %53 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %52, i32 0, i32 2
  store i16 %51, i16* %53, align 8
  %54 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %55 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %54, i32 0, i32 3
  store i32 4, i32* %55, align 4
  br label %59

56:                                               ; preds = %1
  br label %57

57:                                               ; preds = %1, %56
  %58 = call i32 (...) @BUG()
  br label %59

59:                                               ; preds = %57, %42, %28, %14
  ret void
}

declare dso_local i32 @rt2800_get_txwi_rxwi_size(%struct.rt2x00_dev*, i16*, i16*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
