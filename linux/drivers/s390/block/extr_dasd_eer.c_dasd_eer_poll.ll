; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eer.c_dasd_eer_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eer.c_dasd_eer_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.eerbuffer = type { i64, i64 }

@dasd_eer_read_wait_queue = common dso_local global i32 0, align 4
@bufferlock = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @dasd_eer_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eer_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.eerbuffer*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.eerbuffer*
  store %struct.eerbuffer* %11, %struct.eerbuffer** %7, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @poll_wait(%struct.file* %12, i32* @dasd_eer_read_wait_queue, i32* %13)
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @bufferlock, i64 %15)
  %17 = load %struct.eerbuffer*, %struct.eerbuffer** %7, align 8
  %18 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.eerbuffer*, %struct.eerbuffer** %7, align 8
  %21 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @EPOLLIN, align 4
  %26 = load i32, i32* @EPOLLRDNORM, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %5, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @bufferlock, i64 %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
