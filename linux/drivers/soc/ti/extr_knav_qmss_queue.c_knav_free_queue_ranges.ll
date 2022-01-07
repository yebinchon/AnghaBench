; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_free_queue_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_free_queue_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_device = type { i32 }
%struct.knav_range_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knav_device*)* @knav_free_queue_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knav_free_queue_ranges(%struct.knav_device* %0) #0 {
  %2 = alloca %struct.knav_device*, align 8
  %3 = alloca %struct.knav_range_info*, align 8
  store %struct.knav_device* %0, %struct.knav_device** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.knav_device*, %struct.knav_device** %2, align 8
  %6 = call %struct.knav_range_info* @first_queue_range(%struct.knav_device* %5)
  store %struct.knav_range_info* %6, %struct.knav_range_info** %3, align 8
  %7 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %8 = icmp ne %struct.knav_range_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  br label %14

10:                                               ; preds = %4
  %11 = load %struct.knav_device*, %struct.knav_device** %2, align 8
  %12 = load %struct.knav_range_info*, %struct.knav_range_info** %3, align 8
  %13 = call i32 @knav_free_queue_range(%struct.knav_device* %11, %struct.knav_range_info* %12)
  br label %4

14:                                               ; preds = %9
  ret void
}

declare dso_local %struct.knav_range_info* @first_queue_range(%struct.knav_device*) #1

declare dso_local i32 @knav_free_queue_range(%struct.knav_device*, %struct.knav_range_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
