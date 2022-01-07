; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32 }
%struct.eadm_private = type { i64, i32* }

@completion = common dso_local global i32 0, align 4
@EADM_BUSY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*)* @eadm_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eadm_quiesce(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.eadm_private*, align 8
  %4 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %5 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %6 = call %struct.eadm_private* @get_eadm_private(%struct.subchannel* %5)
  store %struct.eadm_private* %6, %struct.eadm_private** %3, align 8
  %7 = load i32, i32* @completion, align 4
  %8 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %7)
  %9 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %10 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @spin_lock_irq(i32 %11)
  %13 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %14 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EADM_BUSY, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %38

19:                                               ; preds = %1
  %20 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %21 = call i64 @eadm_subchannel_clear(%struct.subchannel* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %38

24:                                               ; preds = %19
  %25 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %26 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %25, i32 0, i32 1
  store i32* @completion, i32** %26, align 8
  %27 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %28 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @spin_unlock_irq(i32 %29)
  %31 = call i32 @wait_for_completion_io(i32* @completion)
  %32 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %33 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @spin_lock_irq(i32 %34)
  %36 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %37 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %24, %23, %18
  %39 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %40 = call i32 @eadm_subchannel_set_timeout(%struct.subchannel* %39, i32 0)
  br label %41

41:                                               ; preds = %44, %38
  %42 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %43 = call i32 @cio_disable_subchannel(%struct.subchannel* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %41, label %49

49:                                               ; preds = %44
  %50 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %51 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @spin_unlock_irq(i32 %52)
  ret void
}

declare dso_local %struct.eadm_private* @get_eadm_private(%struct.subchannel*) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i64 @eadm_subchannel_clear(%struct.subchannel*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_for_completion_io(i32*) #1

declare dso_local i32 @eadm_subchannel_set_timeout(%struct.subchannel*, i32) #1

declare dso_local i32 @cio_disable_subchannel(%struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
