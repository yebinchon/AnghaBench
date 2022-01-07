; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_set_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_set_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_queue = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.knav_queue_notify_config = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RANGE_HAS_ACCUMULATOR = common dso_local global i32 0, align 4
@RANGE_HAS_IRQ = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_queue*, %struct.knav_queue_notify_config*)* @knav_queue_set_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_queue_set_notifier(%struct.knav_queue* %0, %struct.knav_queue_notify_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knav_queue*, align 8
  %5 = alloca %struct.knav_queue_notify_config*, align 8
  %6 = alloca i64, align 8
  store %struct.knav_queue* %0, %struct.knav_queue** %4, align 8
  store %struct.knav_queue_notify_config* %1, %struct.knav_queue_notify_config** %5, align 8
  %7 = load %struct.knav_queue*, %struct.knav_queue** %4, align 8
  %8 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.knav_queue_notify_config*, %struct.knav_queue_notify_config** %5, align 8
  %11 = icmp ne %struct.knav_queue_notify_config* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %64

15:                                               ; preds = %2
  %16 = load %struct.knav_queue*, %struct.knav_queue** %4, align 8
  %17 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RANGE_HAS_ACCUMULATOR, align 4
  %24 = load i32, i32* @RANGE_HAS_IRQ, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %15
  %29 = load i32, i32* @ENOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %64

31:                                               ; preds = %15
  %32 = load %struct.knav_queue_notify_config*, %struct.knav_queue_notify_config** %5, align 8
  %33 = getelementptr inbounds %struct.knav_queue_notify_config, %struct.knav_queue_notify_config* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.knav_queue*, %struct.knav_queue** %4, align 8
  %41 = call i32 @knav_queue_disable_notifier(%struct.knav_queue* %40)
  br label %42

42:                                               ; preds = %39, %36, %31
  %43 = load %struct.knav_queue_notify_config*, %struct.knav_queue_notify_config** %5, align 8
  %44 = getelementptr inbounds %struct.knav_queue_notify_config, %struct.knav_queue_notify_config* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.knav_queue*, %struct.knav_queue** %4, align 8
  %47 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.knav_queue_notify_config*, %struct.knav_queue_notify_config** %5, align 8
  %49 = getelementptr inbounds %struct.knav_queue_notify_config, %struct.knav_queue_notify_config* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.knav_queue*, %struct.knav_queue** %4, align 8
  %52 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.knav_queue_notify_config*, %struct.knav_queue_notify_config** %5, align 8
  %54 = getelementptr inbounds %struct.knav_queue_notify_config, %struct.knav_queue_notify_config* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %42
  %58 = load i64, i64* %6, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load %struct.knav_queue*, %struct.knav_queue** %4, align 8
  %62 = call i32 @knav_queue_enable_notifier(%struct.knav_queue* %61)
  br label %63

63:                                               ; preds = %60, %57, %42
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %28, %12
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @knav_queue_disable_notifier(%struct.knav_queue*) #1

declare dso_local i32 @knav_queue_enable_notifier(%struct.knav_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
