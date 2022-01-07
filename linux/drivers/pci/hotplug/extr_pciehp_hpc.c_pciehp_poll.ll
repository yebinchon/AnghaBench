; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pciehp_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pciehp_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }

@HZ = common dso_local global i32 0, align 4
@IRQ_NOTCONNECTED = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i64 0, align 8
@pciehp_poll_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pciehp_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pciehp_poll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.controller*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.controller*
  store %struct.controller* %5, %struct.controller** %3, align 8
  %6 = load i32, i32* @HZ, align 4
  %7 = mul nsw i32 10, %6
  %8 = call i32 @schedule_timeout_idle(i32 %7)
  br label %9

9:                                                ; preds = %38, %1
  %10 = call i32 (...) @kthread_should_stop()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %43

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32, i32* @IRQ_NOTCONNECTED, align 4
  %16 = load %struct.controller*, %struct.controller** %3, align 8
  %17 = call i64 @pciehp_isr(i32 %15, %struct.controller* %16)
  %18 = load i64, i64* @IRQ_WAKE_THREAD, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.controller*, %struct.controller** %3, align 8
  %22 = getelementptr inbounds %struct.controller, %struct.controller* %21, i32 0, i32 0
  %23 = call i64 @atomic_read(i32* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi i1 [ true, %14 ], [ %24, %20 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = load i32, i32* @IRQ_NOTCONNECTED, align 4
  %29 = load %struct.controller*, %struct.controller** %3, align 8
  %30 = call i32 @pciehp_ist(i32 %28, %struct.controller* %29)
  br label %14

31:                                               ; preds = %25
  %32 = load i32, i32* @pciehp_poll_time, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @pciehp_poll_time, align 4
  %36 = icmp sgt i32 %35, 60
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31
  store i32 2, i32* @pciehp_poll_time, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* @pciehp_poll_time, align 4
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @schedule_timeout_idle(i32 %41)
  br label %9

43:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @schedule_timeout_idle(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i64 @pciehp_isr(i32, %struct.controller*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pciehp_ist(i32, %struct.controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
