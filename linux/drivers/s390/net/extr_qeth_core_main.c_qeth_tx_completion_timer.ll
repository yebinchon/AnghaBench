; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_tx_completion_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_tx_completion_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i32 }
%struct.timer_list = type { i32 }

@completion_timer = common dso_local global i32 0, align 4
@queue = common dso_local global %struct.qeth_qdio_out_q* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @qeth_tx_completion_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_tx_completion_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.qeth_qdio_out_q*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %5 = ptrtoint %struct.qeth_qdio_out_q* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = call %struct.qeth_qdio_out_q* @from_timer(i32 %5, %struct.timer_list* %6, %struct.timer_list* %7)
  store %struct.qeth_qdio_out_q* %8, %struct.qeth_qdio_out_q** %3, align 8
  %9 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %10 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %9, i32 0, i32 0
  %11 = call i32 @napi_schedule(i32* %10)
  %12 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %13 = load i32, i32* @completion_timer, align 4
  %14 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %12, i32 %13)
  ret void
}

declare dso_local %struct.qeth_qdio_out_q* @from_timer(i32, %struct.timer_list*, %struct.timer_list*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
