; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_credit_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_credit_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { i32 }
%struct.timer_list = type { i32 }

@credit_timeout = common dso_local global i32 0, align 4
@queue = common dso_local global %struct.xenvif_queue* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xenvif_tx_credit_callback(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.xenvif_queue*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %5 = ptrtoint %struct.xenvif_queue* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @credit_timeout, align 4
  %8 = call %struct.xenvif_queue* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.xenvif_queue* %8, %struct.xenvif_queue** %3, align 8
  %9 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %10 = call i32 @tx_add_credit(%struct.xenvif_queue* %9)
  %11 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %12 = call i32 @xenvif_napi_schedule_or_enable_events(%struct.xenvif_queue* %11)
  ret void
}

declare dso_local %struct.xenvif_queue* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @tx_add_credit(%struct.xenvif_queue*) #1

declare dso_local i32 @xenvif_napi_schedule_or_enable_events(%struct.xenvif_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
