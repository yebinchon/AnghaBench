; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_start_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@ipr_reset_ioa_job = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ipr_reset_timer_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*, i64)* @ipr_reset_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_reset_start_timer(%struct.ipr_cmnd* %0, i64 %1) #0 {
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca i64, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @ENTER, align 4
  %6 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %7 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %6, i32 0, i32 3
  %8 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %9 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @list_add_tail(i32* %7, i32* %11)
  %13 = load i32, i32* @ipr_reset_ioa_job, align 4
  %14 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %15 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %16, %17
  %19 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %20 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i64 %18, i64* %21, align 8
  %22 = load i32, i32* @ipr_reset_timer_done, align 4
  %23 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %24 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %27 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %26, i32 0, i32 0
  %28 = call i32 @add_timer(%struct.TYPE_4__* %27)
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
