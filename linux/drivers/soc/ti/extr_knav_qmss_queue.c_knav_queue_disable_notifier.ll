; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_disable_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_disable_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_queue = type { i32, %struct.knav_queue_inst* }
%struct.knav_queue_inst = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_queue*)* @knav_queue_disable_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_queue_disable_notifier(%struct.knav_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.knav_queue*, align 8
  %4 = alloca %struct.knav_queue_inst*, align 8
  %5 = alloca i32, align 4
  store %struct.knav_queue* %0, %struct.knav_queue** %3, align 8
  %6 = load %struct.knav_queue*, %struct.knav_queue** %3, align 8
  %7 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %6, i32 0, i32 1
  %8 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  store %struct.knav_queue_inst* %8, %struct.knav_queue_inst** %4, align 8
  %9 = load %struct.knav_queue*, %struct.knav_queue** %3, align 8
  %10 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %9, i32 0, i32 0
  %11 = call i64 @atomic_dec_return(i32* %10)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %4, align 8
  %19 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %18, i32 0, i32 0
  %20 = call i64 @atomic_dec_return(i32* %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %4, align 8
  %27 = call i32 @knav_queue_set_notify(%struct.knav_queue_inst* %26, i32 0)
  br label %28

28:                                               ; preds = %25, %17
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @knav_queue_set_notify(%struct.knav_queue_inst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
