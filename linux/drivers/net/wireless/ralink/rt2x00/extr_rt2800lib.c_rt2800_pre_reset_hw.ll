; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_pre_reset_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_pre_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.data_queue*, %struct.rt2800_drv_data* }
%struct.data_queue = type { i32, %struct.queue_entry* }
%struct.queue_entry = type { i32 }
%struct.rt2800_drv_data = type { i32, i32** }

@WCID_START = common dso_local global i32 0, align 4
@WCID_END = common dso_local global i32 0, align 4
@ENTRY_BCN_ASSIGNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_pre_reset_hw(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.rt2800_drv_data*, align 8
  %4 = alloca %struct.data_queue*, align 8
  %5 = alloca %struct.queue_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 1
  %10 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  store %struct.rt2800_drv_data* %10, %struct.rt2800_drv_data** %3, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %11, i32 0, i32 0
  %13 = load %struct.data_queue*, %struct.data_queue** %12, align 8
  store %struct.data_queue* %13, %struct.data_queue** %4, align 8
  %14 = load i32, i32* @WCID_START, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %35, %1
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @WCID_END, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %21 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @WCID_START, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %22, i64 %26
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @WCID_START, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %3, align 8
  %32 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @__clear_bit(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %15

38:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %42 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.data_queue*, %struct.data_queue** %4, align 8
  %47 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %46, i32 0, i32 1
  %48 = load %struct.queue_entry*, %struct.queue_entry** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %48, i64 %50
  store %struct.queue_entry* %51, %struct.queue_entry** %5, align 8
  %52 = load i32, i32* @ENTRY_BCN_ASSIGNED, align 4
  %53 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %54 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %53, i32 0, i32 0
  %55 = call i32 @clear_bit(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %39

59:                                               ; preds = %39
  ret void
}

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
