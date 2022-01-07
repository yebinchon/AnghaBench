; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_process_incoming_rsps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_process_incoming_rsps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorhba_devdata = type { i32, i32, i32 }
%struct.uiscmdrsp = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @process_incoming_rsps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_incoming_rsps(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.visorhba_devdata*, align 8
  %5 = alloca %struct.uiscmdrsp*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.visorhba_devdata*
  store %struct.visorhba_devdata* %8, %struct.visorhba_devdata** %4, align 8
  store %struct.uiscmdrsp* null, %struct.uiscmdrsp** %5, align 8
  store i32 4, i32* %6, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.uiscmdrsp* @kmalloc(i32 4, i32 %9)
  store %struct.uiscmdrsp* %10, %struct.uiscmdrsp** %5, align 8
  %11 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %12 = icmp ne %struct.uiscmdrsp* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %41

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %21
  %18 = call i64 (...) @kthread_should_stop()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %38

21:                                               ; preds = %17
  %22 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %23 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %26 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %25, i32 0, i32 1
  %27 = call i32 @atomic_read(i32* %26)
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %31 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @msecs_to_jiffies(i32 %32)
  %34 = call i32 @wait_event_interruptible_timeout(i32 %24, i32 %29, i32 %33)
  %35 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %36 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %4, align 8
  %37 = call i32 @drain_queue(%struct.uiscmdrsp* %35, %struct.visorhba_devdata* %36)
  br label %17

38:                                               ; preds = %20
  %39 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %40 = call i32 @kfree(%struct.uiscmdrsp* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.uiscmdrsp* @kmalloc(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @drain_queue(%struct.uiscmdrsp*, %struct.visorhba_devdata*) #1

declare dso_local i32 @kfree(%struct.uiscmdrsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
