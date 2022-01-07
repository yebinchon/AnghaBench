; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_evtchn.c_evtchn_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_evtchn.c_evtchn_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_evtchn = type { i32, i32, %struct.per_user_data* }
%struct.per_user_data = type { i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"Interrupt for port %d, but apparently not enabled; per-user %p\0A\00", align 1
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @evtchn_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchn_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.user_evtchn*, align 8
  %6 = alloca %struct.per_user_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.user_evtchn*
  store %struct.user_evtchn* %8, %struct.user_evtchn** %5, align 8
  %9 = load %struct.user_evtchn*, %struct.user_evtchn** %5, align 8
  %10 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %9, i32 0, i32 2
  %11 = load %struct.per_user_data*, %struct.per_user_data** %10, align 8
  store %struct.per_user_data* %11, %struct.per_user_data** %6, align 8
  %12 = load %struct.user_evtchn*, %struct.user_evtchn** %5, align 8
  %13 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load %struct.user_evtchn*, %struct.user_evtchn** %5, align 8
  %19 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %22 = call i32 @WARN(i32 %17, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.per_user_data* %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @disable_irq_nosync(i32 %23)
  %25 = load %struct.user_evtchn*, %struct.user_evtchn** %5, align 8
  %26 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %28 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %27, i32 0, i32 4
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %31 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %34 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %38 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %2
  %42 = load %struct.user_evtchn*, %struct.user_evtchn** %5, align 8
  %43 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %46 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %47 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32* @evtchn_ring_entry(%struct.per_user_data* %45, i64 %48)
  store i32 %44, i32* %49, align 4
  %50 = call i32 (...) @wmb()
  %51 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %52 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %55 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = icmp eq i64 %53, %56
  br i1 %58, label %59, label %68

59:                                               ; preds = %41
  %60 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %61 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %60, i32 0, i32 6
  %62 = call i32 @wake_up_interruptible(i32* %61)
  %63 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %64 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %63, i32 0, i32 5
  %65 = load i32, i32* @SIGIO, align 4
  %66 = load i32, i32* @POLL_IN, align 4
  %67 = call i32 @kill_fasync(i32* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %41
  br label %72

69:                                               ; preds = %2
  %70 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %71 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %70, i32 0, i32 3
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %68
  %73 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %74 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %73, i32 0, i32 4
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %76
}

declare dso_local i32 @WARN(i32, i8*, i32, %struct.per_user_data*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @evtchn_ring_entry(%struct.per_user_data*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
