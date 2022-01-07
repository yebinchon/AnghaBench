; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_read_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_req = type { i64, i64 }
%struct.sccb_header = type { i32 }

@SCLP_REQ_DONE = common dso_local global i64 0, align 8
@sclp_lock = common dso_local global i32 0, align 4
@sclp_reading_state_idle = common dso_local global i32 0, align 4
@sclp_reading_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sclp_req*, i8*)* @sclp_read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_read_cb(%struct.sclp_req* %0, i8* %1) #0 {
  %3 = alloca %struct.sclp_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sccb_header*, align 8
  store %struct.sclp_req* %0, %struct.sclp_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %8 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.sccb_header*
  store %struct.sccb_header* %10, %struct.sccb_header** %6, align 8
  %11 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %12 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SCLP_REQ_DONE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.sccb_header*, %struct.sccb_header** %6, align 8
  %18 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.sccb_header*, %struct.sccb_header** %6, align 8
  %23 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 544
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %16
  %27 = load %struct.sccb_header*, %struct.sccb_header** %6, align 8
  %28 = call i32 @sclp_dispatch_evbufs(%struct.sccb_header* %27)
  br label %29

29:                                               ; preds = %26, %21, %2
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %30)
  %32 = load i32, i32* @sclp_reading_state_idle, align 4
  store i32 %32, i32* @sclp_reading_state, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %33)
  ret void
}

declare dso_local i32 @sclp_dispatch_evbufs(%struct.sccb_header*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
