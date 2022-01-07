; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_timer_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_timer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@AF2_TIMER_TICK = common dso_local global i32 0, align 4
@a = common dso_local global %struct.esas2r_adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @esas2r_timer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_timer_callback(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.esas2r_adapter*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %5 = ptrtoint %struct.esas2r_adapter* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.esas2r_adapter* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.esas2r_adapter* %8, %struct.esas2r_adapter** %3, align 8
  %9 = load i32, i32* @AF2_TIMER_TICK, align 4
  %10 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %10, i32 0, i32 0
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %14 = call i32 @esas2r_schedule_tasklet(%struct.esas2r_adapter* %13)
  %15 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %16 = call i32 @esas2r_kickoff_timer(%struct.esas2r_adapter* %15)
  ret void
}

declare dso_local %struct.esas2r_adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @esas2r_schedule_tasklet(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_kickoff_timer(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
