; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_req_queue_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_req_queue_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }
%struct.sclp_req = type { i32, i32 (%struct.sclp_req*, i32)* }

@sclp_lock = common dso_local global i32 0, align 4
@sclp_queue_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sclp_req_queue_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_req_queue_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sclp_req*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  br label %6

6:                                                ; preds = %25, %1
  %7 = call %struct.sclp_req* (...) @__sclp_req_queue_remove_expired_req()
  store %struct.sclp_req* %7, %struct.sclp_req** %5, align 8
  %8 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %9 = icmp ne %struct.sclp_req* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %12 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %11, i32 0, i32 1
  %13 = load i32 (%struct.sclp_req*, i32)*, i32 (%struct.sclp_req*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.sclp_req*, i32)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %17 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %16, i32 0, i32 1
  %18 = load i32 (%struct.sclp_req*, i32)*, i32 (%struct.sclp_req*, i32)** %17, align 8
  %19 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %20 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %21 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %18(%struct.sclp_req* %19, i32 %22)
  br label %24

24:                                               ; preds = %15, %10, %6
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.sclp_req*, %struct.sclp_req** %5, align 8
  %27 = icmp ne %struct.sclp_req* %26, null
  br i1 %27, label %6, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %29)
  %31 = call i64 (...) @__sclp_req_queue_find_next_timeout()
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @mod_timer(i32* @sclp_queue_timer, i64 %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %38)
  ret void
}

declare dso_local %struct.sclp_req* @__sclp_req_queue_remove_expired_req(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @__sclp_req_queue_find_next_timeout(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
