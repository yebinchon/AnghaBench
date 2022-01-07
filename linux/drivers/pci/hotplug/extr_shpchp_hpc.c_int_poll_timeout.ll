; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_int_poll_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_int_poll_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }
%struct.timer_list = type { i32 }

@poll_timer = common dso_local global i32 0, align 4
@shpchp_poll_time = common dso_local global i32 0, align 4
@ctrl = common dso_local global %struct.controller* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @int_poll_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_poll_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.controller*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.controller*, %struct.controller** %3, align 8
  %5 = ptrtoint %struct.controller* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @poll_timer, align 4
  %8 = call %struct.controller* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.controller* %8, %struct.controller** %3, align 8
  %9 = load %struct.controller*, %struct.controller** %3, align 8
  %10 = call i32 @shpc_isr(i32 0, %struct.controller* %9)
  %11 = load i32, i32* @shpchp_poll_time, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 2, i32* @shpchp_poll_time, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.controller*, %struct.controller** %3, align 8
  %16 = load i32, i32* @shpchp_poll_time, align 4
  %17 = call i32 @start_int_poll_timer(%struct.controller* %15, i32 %16)
  ret void
}

declare dso_local %struct.controller* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @shpc_isr(i32, %struct.controller*) #1

declare dso_local i32 @start_int_poll_timer(%struct.controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
