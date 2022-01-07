; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_sch_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_sch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, i32, i32 }
%struct.eadm_private = type { i64 }

@SCH_TODO_UNREG = common dso_local global i32 0, align 4
@EADM_NOT_OPER = common dso_local global i64 0, align 8
@EADM_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*, i32)* @eadm_subchannel_sch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eadm_subchannel_sch_event(%struct.subchannel* %0, i32 %1) #0 {
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eadm_private*, align 8
  %6 = alloca i64, align 8
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %8 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32 %9, i64 %10)
  %12 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %13 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %12, i32 0, i32 2
  %14 = call i32 @device_is_registered(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %19 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %18, i32 0, i32 1
  %20 = call i64 @work_pending(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %44

23:                                               ; preds = %17
  %24 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %25 = call i64 @cio_update_schib(%struct.subchannel* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %29 = load i32, i32* @SCH_TODO_UNREG, align 4
  %30 = call i32 @css_sched_sch_todo(%struct.subchannel* %28, i32 %29)
  br label %44

31:                                               ; preds = %23
  %32 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %33 = call %struct.eadm_private* @get_eadm_private(%struct.subchannel* %32)
  store %struct.eadm_private* %33, %struct.eadm_private** %5, align 8
  %34 = load %struct.eadm_private*, %struct.eadm_private** %5, align 8
  %35 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EADM_NOT_OPER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i64, i64* @EADM_IDLE, align 8
  %41 = load %struct.eadm_private*, %struct.eadm_private** %5, align 8
  %42 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %31
  br label %44

44:                                               ; preds = %43, %27, %22, %16
  %45 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %46 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32 %47, i64 %48)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local i64 @work_pending(i32*) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @css_sched_sch_todo(%struct.subchannel*, i32) #1

declare dso_local %struct.eadm_private* @get_eadm_private(%struct.subchannel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
