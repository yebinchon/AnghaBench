; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_state_change_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_state_change_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.evbuf_header = type { i32 }
%struct.sclp_statechangebuf = type { i32, i64, i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@sclp_lock = common dso_local global i32 0, align 4
@sclp_receive_mask = common dso_local global i32 0, align 4
@sclp_send_mask = common dso_local global i32 0, align 4
@sclp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuf_header*)* @sclp_state_change_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_state_change_cb(%struct.evbuf_header* %0) #0 {
  %2 = alloca %struct.evbuf_header*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sclp_statechangebuf*, align 8
  store %struct.evbuf_header* %0, %struct.evbuf_header** %2, align 8
  %5 = load i32, i32* @PAGE_SIZE, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ugt i64 32, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUILD_BUG_ON(i32 %8)
  %10 = load %struct.evbuf_header*, %struct.evbuf_header** %2, align 8
  %11 = bitcast %struct.evbuf_header* %10 to %struct.sclp_statechangebuf*
  store %struct.sclp_statechangebuf* %11, %struct.sclp_statechangebuf** %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %12)
  %14 = load %struct.sclp_statechangebuf*, %struct.sclp_statechangebuf** %4, align 8
  %15 = getelementptr inbounds %struct.sclp_statechangebuf, %struct.sclp_statechangebuf* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.sclp_statechangebuf*, %struct.sclp_statechangebuf** %4, align 8
  %20 = call i32 @sccb_get_recv_mask(%struct.sclp_statechangebuf* %19)
  store i32 %20, i32* @sclp_receive_mask, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.sclp_statechangebuf*, %struct.sclp_statechangebuf** %4, align 8
  %23 = getelementptr inbounds %struct.sclp_statechangebuf, %struct.sclp_statechangebuf* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.sclp_statechangebuf*, %struct.sclp_statechangebuf** %4, align 8
  %28 = call i32 @sccb_get_send_mask(%struct.sclp_statechangebuf* %27)
  store i32 %28, i32* @sclp_send_mask, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %30)
  %32 = load %struct.sclp_statechangebuf*, %struct.sclp_statechangebuf** %4, align 8
  %33 = getelementptr inbounds %struct.sclp_statechangebuf, %struct.sclp_statechangebuf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.sclp_statechangebuf*, %struct.sclp_statechangebuf** %4, align 8
  %38 = getelementptr inbounds %struct.sclp_statechangebuf, %struct.sclp_statechangebuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sclp, i32 0, i32 0), align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = call i32 (...) @sclp_dispatch_state_change()
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sccb_get_recv_mask(%struct.sclp_statechangebuf*) #1

declare dso_local i32 @sccb_get_send_mask(%struct.sclp_statechangebuf*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sclp_dispatch_state_change(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
