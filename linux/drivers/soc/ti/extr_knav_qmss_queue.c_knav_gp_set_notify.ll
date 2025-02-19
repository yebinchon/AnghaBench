; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_gp_set_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_gp_set_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_range_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.knav_queue_inst = type { i32 }

@RANGE_HAS_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_range_info*, %struct.knav_queue_inst*, i32)* @knav_gp_set_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_gp_set_notify(%struct.knav_range_info* %0, %struct.knav_queue_inst* %1, i32 %2) #0 {
  %4 = alloca %struct.knav_range_info*, align 8
  %5 = alloca %struct.knav_queue_inst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.knav_range_info* %0, %struct.knav_range_info** %4, align 8
  store %struct.knav_queue_inst* %1, %struct.knav_queue_inst** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %9 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @RANGE_HAS_IRQ, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %3
  %15 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %5, align 8
  %16 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %19 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %26 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @enable_irq(i32 %32)
  br label %44

34:                                               ; preds = %14
  %35 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %36 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @disable_irq_nosync(i32 %42)
  br label %44

44:                                               ; preds = %34, %24
  br label %45

45:                                               ; preds = %44, %3
  ret i32 0
}

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
