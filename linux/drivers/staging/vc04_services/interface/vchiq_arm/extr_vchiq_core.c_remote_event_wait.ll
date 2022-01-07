; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_remote_event_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_remote_event_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_event = type { i32, i64 }

@sy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.remote_event*)* @remote_event_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_event_wait(i32* %0, %struct.remote_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.remote_event*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.remote_event* %1, %struct.remote_event** %5, align 8
  %6 = load %struct.remote_event*, %struct.remote_event** %5, align 8
  %7 = getelementptr inbounds %struct.remote_event, %struct.remote_event* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = load %struct.remote_event*, %struct.remote_event** %5, align 8
  %12 = getelementptr inbounds %struct.remote_event, %struct.remote_event* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i32, i32* @sy, align 4
  %14 = call i32 @dsb(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.remote_event*, %struct.remote_event** %5, align 8
  %18 = getelementptr inbounds %struct.remote_event, %struct.remote_event* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @wait_event_interruptible(i32 %16, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = load %struct.remote_event*, %struct.remote_event** %5, align 8
  %24 = getelementptr inbounds %struct.remote_event, %struct.remote_event* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  store i32 0, i32* %3, align 4
  br label %32

25:                                               ; preds = %10
  %26 = load %struct.remote_event*, %struct.remote_event** %5, align 8
  %27 = getelementptr inbounds %struct.remote_event, %struct.remote_event* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = call i32 (...) @wmb()
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.remote_event*, %struct.remote_event** %5, align 8
  %31 = getelementptr inbounds %struct.remote_event, %struct.remote_event* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @dsb(i32) #1

declare dso_local i64 @wait_event_interruptible(i32, i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
