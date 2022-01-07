; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_timer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_timer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32 (%struct.ipr_cmnd*)*, i32, %struct.ipr_ioa_cfg* }
%struct.ipr_ioa_cfg = type { %struct.TYPE_2__*, %struct.ipr_cmnd* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@ipr_cmd = common dso_local global %struct.ipr_cmnd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ipr_reset_timer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_reset_timer_done(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %7 = ptrtoint %struct.ipr_cmnd* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.ipr_cmnd* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.ipr_cmnd* %10, %struct.ipr_cmnd** %3, align 8
  %11 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %11, i32 0, i32 2
  %13 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %12, align 8
  store %struct.ipr_ioa_cfg* %13, %struct.ipr_ioa_cfg** %4, align 8
  store i64 0, i64* %5, align 8
  %14 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32 %18, i64 %19)
  %21 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %21, i32 0, i32 1
  %23 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %22, align 8
  %24 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %25 = icmp eq %struct.ipr_cmnd* %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %28 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %27, i32 0, i32 1
  %29 = call i32 @list_del(i32* %28)
  %30 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %31 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %30, i32 0, i32 0
  %32 = load i32 (%struct.ipr_cmnd*)*, i32 (%struct.ipr_cmnd*)** %31, align 8
  %33 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %34 = call i32 %32(%struct.ipr_cmnd* %33)
  br label %35

35:                                               ; preds = %26, %1
  %36 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %37 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32 %40, i64 %41)
  ret void
}

declare dso_local %struct.ipr_cmnd* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
