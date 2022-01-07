; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_empty_response_queue_large.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_empty_response_queue_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@PCI_DEVICE_ID_3WARE_9000 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@TW_9550SX_DRAIN_COMPLETED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @twa_empty_response_queue_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_empty_response_queue_large(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %5, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCI_DEVICE_ID_3WARE_9000, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %35, %13
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @TW_9550SX_DRAIN_COMPLETED, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @TW_9550SX_DRAIN_COMPLETED, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = call i32 @TW_RESPONSE_QUEUE_REG_ADDR_LARGE(%struct.TYPE_6__* %22)
  %24 = call i32 @readl(i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = call i32 @msleep(i32 1)
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 %28, 30
  %30 = sext i32 %29 to i64
  %31 = add i64 %27, %30
  %32 = call i64 @time_after(i64 %26, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %40

35:                                               ; preds = %21
  br label %15

36:                                               ; preds = %15
  %37 = call i32 @msleep(i32 500)
  store i32 0, i32* %5, align 4
  br label %39

38:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %36
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @TW_RESPONSE_QUEUE_REG_ADDR_LARGE(%struct.TYPE_6__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
