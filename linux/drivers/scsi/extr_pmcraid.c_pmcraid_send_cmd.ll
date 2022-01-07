; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { void (%struct.pmcraid_cmd*)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { void (%struct.timer_list*)*, i64 }
%struct.timer_list = type opaque
%struct.timer_list.0 = type opaque

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*, void (%struct.pmcraid_cmd*)*, i64, void (%struct.timer_list.0*)*)* @pmcraid_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_send_cmd(%struct.pmcraid_cmd* %0, void (%struct.pmcraid_cmd*)* %1, i64 %2, void (%struct.timer_list.0*)* %3) #0 {
  %5 = alloca %struct.pmcraid_cmd*, align 8
  %6 = alloca void (%struct.pmcraid_cmd*)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca void (%struct.timer_list.0*)*, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %5, align 8
  store void (%struct.pmcraid_cmd*)* %1, void (%struct.pmcraid_cmd*)** %6, align 8
  store i64 %2, i64* %7, align 8
  store void (%struct.timer_list.0*)* %3, void (%struct.timer_list.0*)** %8, align 8
  %9 = load void (%struct.pmcraid_cmd*)*, void (%struct.pmcraid_cmd*)** %6, align 8
  %10 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %10, i32 0, i32 0
  store void (%struct.pmcraid_cmd*)* %9, void (%struct.pmcraid_cmd*)** %11, align 8
  %12 = load void (%struct.timer_list.0*)*, void (%struct.timer_list.0*)** %8, align 8
  %13 = icmp ne void (%struct.timer_list.0*)* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %15, %16
  %18 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i64 %17, i64* %20, align 8
  %21 = load void (%struct.timer_list.0*)*, void (%struct.timer_list.0*)** %8, align 8
  %22 = bitcast void (%struct.timer_list.0*)* %21 to void (%struct.timer_list*)*
  %23 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store void (%struct.timer_list*)* %22, void (%struct.timer_list*)** %25, align 8
  %26 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %26, i32 0, i32 1
  %28 = call i32 @add_timer(%struct.TYPE_2__* %27)
  br label %29

29:                                               ; preds = %14, %4
  %30 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %5, align 8
  %31 = call i32 @_pmcraid_fire_command(%struct.pmcraid_cmd* %30)
  ret void
}

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @_pmcraid_fire_command(%struct.pmcraid_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
