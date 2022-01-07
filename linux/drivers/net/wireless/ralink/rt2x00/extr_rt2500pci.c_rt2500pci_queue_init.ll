; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, i32, i32, i8*, i8* }

@DATA_FRAME_SIZE = common dso_local global i8* null, align 8
@RXD_DESC_SIZE = common dso_local global i8* null, align 8
@TXD_DESC_SIZE = common dso_local global i8* null, align 8
@MGMT_FRAME_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_queue*)* @rt2500pci_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500pci_queue_init(%struct.data_queue* %0) #0 {
  %2 = alloca %struct.data_queue*, align 8
  store %struct.data_queue* %0, %struct.data_queue** %2, align 8
  %3 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %4 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %50 [
    i32 128, label %6
    i32 131, label %17
    i32 132, label %17
    i32 134, label %17
    i32 133, label %17
    i32 129, label %28
    i32 130, label %39
  ]

6:                                                ; preds = %1
  %7 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %8 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %7, i32 0, i32 1
  store i32 32, i32* %8, align 4
  %9 = load i8*, i8** @DATA_FRAME_SIZE, align 8
  %10 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %11 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %10, i32 0, i32 4
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @RXD_DESC_SIZE, align 8
  %13 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %14 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %16 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %15, i32 0, i32 2
  store i32 4, i32* %16, align 8
  br label %52

17:                                               ; preds = %1, %1, %1, %1
  %18 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %19 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %18, i32 0, i32 1
  store i32 32, i32* %19, align 4
  %20 = load i8*, i8** @DATA_FRAME_SIZE, align 8
  %21 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %22 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @TXD_DESC_SIZE, align 8
  %24 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %25 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %27 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %26, i32 0, i32 2
  store i32 4, i32* %27, align 8
  br label %52

28:                                               ; preds = %1
  %29 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %30 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load i8*, i8** @MGMT_FRAME_SIZE, align 8
  %32 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %33 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @TXD_DESC_SIZE, align 8
  %35 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %36 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %38 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %37, i32 0, i32 2
  store i32 4, i32* %38, align 8
  br label %52

39:                                               ; preds = %1
  %40 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %41 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %40, i32 0, i32 1
  store i32 8, i32* %41, align 4
  %42 = load i8*, i8** @DATA_FRAME_SIZE, align 8
  %43 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %44 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @TXD_DESC_SIZE, align 8
  %46 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %47 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %49 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %48, i32 0, i32 2
  store i32 4, i32* %49, align 8
  br label %52

50:                                               ; preds = %1
  %51 = call i32 (...) @BUG()
  br label %52

52:                                               ; preds = %50, %39, %28, %17, %6
  ret void
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
