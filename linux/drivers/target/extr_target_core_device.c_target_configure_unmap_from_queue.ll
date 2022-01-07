; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_target_configure_unmap_from_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_target_configure_unmap_from_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_dev_attrib = type { i32, i32, i32, i32, i32 }
%struct.request_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_configure_unmap_from_queue(%struct.se_dev_attrib* %0, %struct.request_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_dev_attrib*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.se_dev_attrib* %0, %struct.se_dev_attrib** %4, align 8
  store %struct.request_queue* %1, %struct.request_queue** %5, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %8 = call i32 @queue_logical_block_size(%struct.request_queue* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %10 = call i32 @blk_queue_discard(%struct.request_queue* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %15 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ilog2(i32 %18)
  %20 = sub nsw i32 %19, 9
  %21 = ashr i32 %17, %20
  %22 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %4, align 8
  %23 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %4, align 8
  %25 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %27 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %29, %30
  %32 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %4, align 8
  %33 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %35 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %37, %38
  %40 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %4, align 8
  %41 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %43 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %4, align 8
  %47 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %13, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @queue_logical_block_size(%struct.request_queue*) #1

declare dso_local i32 @blk_queue_discard(%struct.request_queue*) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
