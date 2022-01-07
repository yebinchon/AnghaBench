; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_free_queue_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_free_queue_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_device = type { i32 }
%struct.knav_range_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.knav_range_info*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knav_device*, %struct.knav_range_info*)* @knav_free_queue_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knav_free_queue_range(%struct.knav_device* %0, %struct.knav_range_info* %1) #0 {
  %3 = alloca %struct.knav_device*, align 8
  %4 = alloca %struct.knav_range_info*, align 8
  store %struct.knav_device* %0, %struct.knav_device** %3, align 8
  store %struct.knav_range_info* %1, %struct.knav_range_info** %4, align 8
  %5 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %6 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %11 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.knav_range_info*)*, i32 (%struct.knav_range_info*)** %13, align 8
  %15 = icmp ne i32 (%struct.knav_range_info*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %18 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.knav_range_info*)*, i32 (%struct.knav_range_info*)** %20, align 8
  %22 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %23 = call i32 %21(%struct.knav_range_info* %22)
  br label %24

24:                                               ; preds = %16, %9, %2
  %25 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %26 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %25, i32 0, i32 0
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.knav_device*, %struct.knav_device** %3, align 8
  %29 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %32 = call i32 @devm_kfree(i32 %30, %struct.knav_range_info* %31)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @devm_kfree(i32, %struct.knav_range_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
