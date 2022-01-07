; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpci_hotplug_core.c_cpci_start_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpci_hotplug_core.c_cpci_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@controller = common dso_local global %struct.TYPE_2__* null, align 8
@event_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cpci_hp_eventd\00", align 1
@cpci_thread = common dso_local global i32 0, align 4
@poll_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"cpci_hp_polld\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't start up our thread\00", align 1
@thread_finished = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpci_start_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpci_start_thread() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @controller, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @event_thread, align 4
  %8 = call i32 @kthread_run(i32 %7, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* @cpci_thread, align 4
  br label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @poll_thread, align 4
  %11 = call i32 @kthread_run(i32 %10, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* @cpci_thread, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* @cpci_thread, align 4
  %14 = call i64 @IS_ERR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = call i32 @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @cpci_thread, align 4
  %19 = call i32 @PTR_ERR(i32 %18)
  store i32 %19, i32* %1, align 4
  br label %21

20:                                               ; preds = %12
  store i64 0, i64* @thread_finished, align 8
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @kthread_run(i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
