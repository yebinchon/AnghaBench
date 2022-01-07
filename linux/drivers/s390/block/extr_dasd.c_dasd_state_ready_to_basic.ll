; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_state_ready_to_basic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_state_ready_to_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, %struct.dasd_block* }
%struct.dasd_block = type { i64, i64, i64 }

@DASD_STATE_BASIC = common dso_local global i32 0, align 4
@DASD_STATE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_state_ready_to_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_state_ready_to_basic(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dasd_block*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %6 = load i32, i32* @DASD_STATE_BASIC, align 4
  %7 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 1
  %11 = load %struct.dasd_block*, %struct.dasd_block** %10, align 8
  %12 = icmp ne %struct.dasd_block* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %15 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %14, i32 0, i32 1
  %16 = load %struct.dasd_block*, %struct.dasd_block** %15, align 8
  store %struct.dasd_block* %16, %struct.dasd_block** %5, align 8
  %17 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %18 = call i32 @dasd_flush_block_queue(%struct.dasd_block* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i32, i32* @DASD_STATE_READY, align 4
  %23 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %24 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %36

26:                                               ; preds = %13
  %27 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %28 = call i32 @dasd_destroy_partitions(%struct.dasd_block* %27)
  %29 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %30 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %32 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %34 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %26, %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @dasd_flush_block_queue(%struct.dasd_block*) #1

declare dso_local i32 @dasd_destroy_partitions(%struct.dasd_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
