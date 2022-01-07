; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_gp_close_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_gp_close_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_range_info = type { i32 }
%struct.knav_queue_inst = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_range_info*, %struct.knav_queue_inst*)* @knav_gp_close_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_gp_close_queue(%struct.knav_range_info* %0, %struct.knav_queue_inst* %1) #0 {
  %3 = alloca %struct.knav_range_info*, align 8
  %4 = alloca %struct.knav_queue_inst*, align 8
  store %struct.knav_range_info* %0, %struct.knav_range_info** %3, align 8
  store %struct.knav_queue_inst* %1, %struct.knav_queue_inst** %4, align 8
  %5 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %4, align 8
  %6 = call i32 @knav_queue_free_irq(%struct.knav_queue_inst* %5)
  ret i32 0
}

declare dso_local i32 @knav_queue_free_irq(%struct.knav_queue_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
