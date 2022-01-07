; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_send_blocking_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_send_blocking_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.ipr_ioa_cfg* }
%struct.ipr_ioa_cfg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type opaque
%struct.timer_list.0 = type opaque

@ipr_internal_cmd_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*, void (%struct.timer_list*)*, i32)* @ipr_send_blocking_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_send_blocking_cmd(%struct.ipr_cmnd* %0, void (%struct.timer_list*)* %1, i32 %2) #0 {
  %4 = alloca %struct.ipr_cmnd*, align 8
  %5 = alloca void (%struct.timer_list*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipr_ioa_cfg*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %4, align 8
  store void (%struct.timer_list*)* %1, void (%struct.timer_list*)** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %9 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %8, i32 0, i32 1
  %10 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %9, align 8
  store %struct.ipr_ioa_cfg* %10, %struct.ipr_ioa_cfg** %7, align 8
  %11 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %11, i32 0, i32 0
  %13 = call i32 @init_completion(i32* %12)
  %14 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %15 = load i32, i32* @ipr_internal_cmd_done, align 4
  %16 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %5, align 8
  %17 = bitcast void (%struct.timer_list*)* %16 to void (%struct.timer_list.0*)*
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ipr_do_req(%struct.ipr_cmnd* %14, i32 %15, void (%struct.timer_list.0*)* %17, i32 %18)
  %20 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %7, align 8
  %21 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @spin_unlock_irq(i32 %24)
  %26 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %27 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %26, i32 0, i32 0
  %28 = call i32 @wait_for_completion(i32* %27)
  %29 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %7, align 8
  %30 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @spin_lock_irq(i32 %33)
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ipr_do_req(%struct.ipr_cmnd*, i32, void (%struct.timer_list.0*)*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
