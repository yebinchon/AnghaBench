; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_set_thread_rt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_set_thread_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, i32 }
%struct.sched_param = type { i32 }

@MAX_RT_PRIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"will run message pump with realtime priority\0A\00", align 1
@SCHED_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_controller*)* @spi_set_thread_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_set_thread_rt(%struct.spi_controller* %0) #0 {
  %2 = alloca %struct.spi_controller*, align 8
  %3 = alloca %struct.sched_param, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %2, align 8
  %4 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %3, i32 0, i32 0
  %5 = load i32, i32* @MAX_RT_PRIO, align 4
  %6 = sdiv i32 %5, 2
  store i32 %6, i32* %4, align 4
  %7 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %8 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %7, i32 0, i32 1
  %9 = call i32 @dev_info(i32* %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %11 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SCHED_FIFO, align 4
  %14 = call i32 @sched_setscheduler(i32 %12, i32 %13, %struct.sched_param* %3)
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @sched_setscheduler(i32, i32, %struct.sched_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
