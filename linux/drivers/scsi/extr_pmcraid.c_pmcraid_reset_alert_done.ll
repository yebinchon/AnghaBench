; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_reset_alert_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_reset_alert_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { i64, %struct.TYPE_4__, %struct.pmcraid_instance* }
%struct.TYPE_4__ = type { i64, void (%struct.timer_list*)* }
%struct.timer_list = type { i32 }
%struct.pmcraid_instance = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@timer = common dso_local global i32 0, align 4
@INTRS_CRITICAL_OP_IN_PROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"critical op is reset proceeding with reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"critical op is not yet reset waiting again\0A\00", align 1
@PMCRAID_CHECK_FOR_RESET_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@cmd = common dso_local global %struct.pmcraid_cmd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pmcraid_reset_alert_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_reset_alert_done(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pmcraid_cmd*, align 8
  %4 = alloca %struct.pmcraid_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %8 = ptrtoint %struct.pmcraid_cmd* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @timer, align 4
  %11 = call %struct.pmcraid_cmd* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.pmcraid_cmd* %11, %struct.pmcraid_cmd** %3, align 8
  %12 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %12, i32 0, i32 2
  %14 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %13, align 8
  store %struct.pmcraid_instance* %14, %struct.pmcraid_instance** %4, align 8
  %15 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %16 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ioread32(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @INTRS_CRITICAL_OP_IN_PROGRESS, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %23, %1
  %29 = call i32 @pmcraid_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %31 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_lock_irqsave(i32 %34, i64 %35)
  %37 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %38 = call i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd* %37)
  %39 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %4, align 8
  %40 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32 %43, i64 %44)
  br label %65

46:                                               ; preds = %23
  %47 = call i32 @pmcraid_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i64, i64* @PMCRAID_CHECK_FOR_RESET_TIMEOUT, align 8
  %49 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %50 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i64, i64* @PMCRAID_CHECK_FOR_RESET_TIMEOUT, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %57 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %60 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store void (%struct.timer_list*)* @pmcraid_reset_alert_done, void (%struct.timer_list*)** %61, align 8
  %62 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %63 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %62, i32 0, i32 1
  %64 = call i32 @add_timer(%struct.TYPE_4__* %63)
  br label %65

65:                                               ; preds = %46, %28
  ret void
}

declare dso_local %struct.pmcraid_cmd* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @pmcraid_info(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
