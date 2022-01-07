; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_write_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_write_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, i64, %struct.acm_wb* }
%struct.acm_wb = type { %struct.acm* }
%struct.acm = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"wrote len %d/%d, status %d\0A\00", align 1
@EVENT_TTY_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @acm_write_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_write_bulk(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.acm_wb*, align 8
  %4 = alloca %struct.acm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 3
  %9 = load %struct.acm_wb*, %struct.acm_wb** %8, align 8
  store %struct.acm_wb* %9, %struct.acm_wb** %3, align 8
  %10 = load %struct.acm_wb*, %struct.acm_wb** %3, align 8
  %11 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %10, i32 0, i32 0
  %12 = load %struct.acm*, %struct.acm** %11, align 8
  store %struct.acm* %12, %struct.acm** %4, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.urb*, %struct.urb** %2, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.urb*, %struct.urb** %2, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %18, %1
  %27 = load %struct.acm*, %struct.acm** %4, align 8
  %28 = getelementptr inbounds %struct.acm, %struct.acm* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_vdbg(i32* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %26, %18
  %40 = load %struct.acm*, %struct.acm** %4, align 8
  %41 = getelementptr inbounds %struct.acm, %struct.acm* %40, i32 0, i32 2
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.acm*, %struct.acm** %4, align 8
  %45 = load %struct.acm_wb*, %struct.acm_wb** %3, align 8
  %46 = call i32 @acm_write_done(%struct.acm* %44, %struct.acm_wb* %45)
  %47 = load %struct.acm*, %struct.acm** %4, align 8
  %48 = getelementptr inbounds %struct.acm, %struct.acm* %47, i32 0, i32 2
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* @EVENT_TTY_WAKEUP, align 4
  %52 = load %struct.acm*, %struct.acm** %4, align 8
  %53 = getelementptr inbounds %struct.acm, %struct.acm* %52, i32 0, i32 1
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load %struct.acm*, %struct.acm** %4, align 8
  %56 = getelementptr inbounds %struct.acm, %struct.acm* %55, i32 0, i32 0
  %57 = call i32 @schedule_work(i32* %56)
  ret void
}

declare dso_local i32 @dev_vdbg(i32*, i8*, i64, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @acm_write_done(%struct.acm*, %struct.acm_wb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
