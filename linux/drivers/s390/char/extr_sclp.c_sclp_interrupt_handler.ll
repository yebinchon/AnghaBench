; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext_code = type { i32 }
%struct.sclp_req = type { i32, i32 (%struct.sclp_req*, i32)*, i32, i32 }

@IRQEXT_SCP = common dso_local global i32 0, align 4
@sclp_lock = common dso_local global i32 0, align 4
@sclp_request_timer = common dso_local global i32 0, align 4
@sclp_running_state_reset_pending = common dso_local global i32 0, align 4
@sclp_running_state = common dso_local global i32 0, align 4
@SCLP_REQ_DONE = common dso_local global i32 0, align 4
@sclp_running_state_idle = common dso_local global i32 0, align 4
@sclp_activation_state = common dso_local global i64 0, align 8
@sclp_activation_state_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @sclp_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_interrupt_handler(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ext_code, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sclp_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ext_code, %struct.ext_code* %4, i32 0, i32 0
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @IRQEXT_SCP, align 4
  %12 = call i32 @inc_irq_stat(i32 %11)
  %13 = call i32 @spin_lock(i32* @sclp_lock)
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, -8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 3
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %3
  %21 = call i32 @del_timer(i32* @sclp_request_timer)
  %22 = load i32, i32* @sclp_running_state_reset_pending, align 4
  store i32 %22, i32* @sclp_running_state, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.sclp_req* @__sclp_find_req(i32 %23)
  store %struct.sclp_req* %24, %struct.sclp_req** %7, align 8
  %25 = load %struct.sclp_req*, %struct.sclp_req** %7, align 8
  %26 = icmp ne %struct.sclp_req* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %20
  %28 = load %struct.sclp_req*, %struct.sclp_req** %7, align 8
  %29 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %28, i32 0, i32 3
  %30 = call i32 @list_del(i32* %29)
  %31 = load i32, i32* @SCLP_REQ_DONE, align 4
  %32 = load %struct.sclp_req*, %struct.sclp_req** %7, align 8
  %33 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sclp_req*, %struct.sclp_req** %7, align 8
  %35 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %34, i32 0, i32 1
  %36 = load i32 (%struct.sclp_req*, i32)*, i32 (%struct.sclp_req*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.sclp_req*, i32)* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %27
  %39 = call i32 @spin_unlock(i32* @sclp_lock)
  %40 = load %struct.sclp_req*, %struct.sclp_req** %7, align 8
  %41 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %40, i32 0, i32 1
  %42 = load i32 (%struct.sclp_req*, i32)*, i32 (%struct.sclp_req*, i32)** %41, align 8
  %43 = load %struct.sclp_req*, %struct.sclp_req** %7, align 8
  %44 = load %struct.sclp_req*, %struct.sclp_req** %7, align 8
  %45 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %42(%struct.sclp_req* %43, i32 %46)
  %48 = call i32 @spin_lock(i32* @sclp_lock)
  br label %49

49:                                               ; preds = %38, %27
  br label %50

50:                                               ; preds = %49, %20
  %51 = load i32, i32* @sclp_running_state_idle, align 4
  store i32 %51, i32* @sclp_running_state, align 4
  br label %52

52:                                               ; preds = %50, %3
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i64, i64* @sclp_activation_state, align 8
  %57 = load i64, i64* @sclp_activation_state_active, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 (...) @__sclp_queue_read_req()
  br label %61

61:                                               ; preds = %59, %55, %52
  %62 = call i32 @spin_unlock(i32* @sclp_lock)
  %63 = call i32 (...) @sclp_process_queue()
  ret void
}

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local %struct.sclp_req* @__sclp_find_req(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__sclp_queue_read_req(...) #1

declare dso_local i32 @sclp_process_queue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
