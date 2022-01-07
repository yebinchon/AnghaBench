; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_service_aen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_service_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, i32, %struct.megasas_aen_event*, %struct.TYPE_2__*, i32* }
%struct.megasas_aen_event = type { i32, %struct.megasas_instance* }
%struct.TYPE_2__ = type { i32 }
%struct.megasas_cmd = type { i64 }

@poll_aen_lock = common dso_local global i32 0, align 4
@megasas_poll_wait_aen = common dso_local global i32 0, align 4
@megasas_poll_wait = common dso_local global i32 0, align 4
@megasas_async_queue = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"megasas_service_aen: out of memory\0A\00", align 1
@megasas_aen_polling = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*, %struct.megasas_cmd*)* @megasas_service_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_service_aen(%struct.megasas_instance* %0, %struct.megasas_cmd* %1) #0 {
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca %struct.megasas_cmd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.megasas_aen_event*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store %struct.megasas_cmd* %1, %struct.megasas_cmd** %4, align 8
  %7 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %2
  %12 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %13 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* @poll_aen_lock, i64 %17)
  store i32 1, i32* @megasas_poll_wait_aen, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @poll_aen_lock, i64 %19)
  %21 = call i32 @wake_up(i32* @megasas_poll_wait)
  %22 = load i32, i32* @SIGIO, align 4
  %23 = load i32, i32* @POLL_IN, align 4
  %24 = call i32 @kill_fasync(i32* @megasas_async_queue, i32 %22, i32 %23)
  br label %28

25:                                               ; preds = %11, %2
  %26 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %30 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %32 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %33 = call i32 @megasas_return_cmd(%struct.megasas_instance* %31, %struct.megasas_cmd* %32)
  %34 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %35 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %28
  %39 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %40 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %69

43:                                               ; preds = %38
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call %struct.megasas_aen_event* @kzalloc(i32 16, i32 %44)
  store %struct.megasas_aen_event* %45, %struct.megasas_aen_event** %6, align 8
  %46 = load %struct.megasas_aen_event*, %struct.megasas_aen_event** %6, align 8
  %47 = icmp ne %struct.megasas_aen_event* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %50 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %68

54:                                               ; preds = %43
  %55 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %56 = load %struct.megasas_aen_event*, %struct.megasas_aen_event** %6, align 8
  %57 = getelementptr inbounds %struct.megasas_aen_event, %struct.megasas_aen_event* %56, i32 0, i32 1
  store %struct.megasas_instance* %55, %struct.megasas_instance** %57, align 8
  %58 = load %struct.megasas_aen_event*, %struct.megasas_aen_event** %6, align 8
  %59 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %60 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %59, i32 0, i32 2
  store %struct.megasas_aen_event* %58, %struct.megasas_aen_event** %60, align 8
  %61 = load %struct.megasas_aen_event*, %struct.megasas_aen_event** %6, align 8
  %62 = getelementptr inbounds %struct.megasas_aen_event, %struct.megasas_aen_event* %61, i32 0, i32 0
  %63 = load i32, i32* @megasas_aen_polling, align 4
  %64 = call i32 @INIT_DELAYED_WORK(i32* %62, i32 %63)
  %65 = load %struct.megasas_aen_event*, %struct.megasas_aen_event** %6, align 8
  %66 = getelementptr inbounds %struct.megasas_aen_event, %struct.megasas_aen_event* %65, i32 0, i32 0
  %67 = call i32 @schedule_delayed_work(i32* %66, i32 0)
  br label %68

68:                                               ; preds = %54, %48
  br label %69

69:                                               ; preds = %68, %38, %28
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @megasas_return_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

declare dso_local %struct.megasas_aen_event* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
