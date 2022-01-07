; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_coda_waitfor_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_coda_waitfor_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_comm = type { i32 }
%struct.upc_req = type { i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@coda_timeout = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@CODA_REQ_WRITE = common dso_local global i32 0, align 4
@CODA_REQ_ABORT = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_comm*, %struct.upc_req*)* @coda_waitfor_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_waitfor_upcall(%struct.venus_comm* %0, %struct.upc_req* %1) #0 {
  %3 = alloca %struct.venus_comm*, align 8
  %4 = alloca %struct.upc_req*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.venus_comm* %0, %struct.venus_comm** %3, align 8
  store %struct.upc_req* %1, %struct.upc_req** %4, align 8
  %8 = load i32, i32* @wait, align 4
  %9 = load i32, i32* @current, align 4
  %10 = call i32 @DECLARE_WAITQUEUE(i32 %8, i32 %9)
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* @coda_timeout, align 8
  %13 = load i64, i64* @HZ, align 8
  %14 = mul i64 %12, %13
  %15 = add i64 %11, %14
  store i64 %15, i64* %5, align 8
  %16 = call i32 @coda_block_signals(i32* %6)
  store i32 1, i32* %7, align 4
  %17 = load %struct.upc_req*, %struct.upc_req** %4, align 8
  %18 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %17, i32 0, i32 1
  %19 = call i32 @add_wait_queue(i32* %18, i32* @wait)
  br label %20

20:                                               ; preds = %73, %2
  %21 = load %struct.upc_req*, %struct.upc_req** %4, align 8
  %22 = call i64 @CODA_INTERRUPTIBLE(%struct.upc_req* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %26 = call i32 @set_current_state(i32 %25)
  br label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %29 = call i32 @set_current_state(i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.upc_req*, %struct.upc_req** %4, align 8
  %32 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CODA_REQ_WRITE, align 4
  %35 = load i32, i32* @CODA_REQ_ABORT, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %77

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @time_after(i64 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.upc_req*, %struct.upc_req** %4, align 8
  %50 = call i64 @CODA_INTERRUPTIBLE(%struct.upc_req* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @coda_unblock_signals(i32* %6)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %48, %43, %40
  %55 = load i32, i32* @current, align 4
  %56 = call i64 @signal_pending(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.upc_req*, %struct.upc_req** %4, align 8
  %60 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %59, i32 0, i32 2
  %61 = call i32 @list_del(i32* %60)
  br label %77

62:                                               ; preds = %54
  %63 = load %struct.venus_comm*, %struct.venus_comm** %3, align 8
  %64 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i64, i64* @HZ, align 8
  %70 = call i32 @schedule_timeout(i64 %69)
  br label %73

71:                                               ; preds = %62
  %72 = call i32 (...) @schedule()
  br label %73

73:                                               ; preds = %71, %68
  %74 = load %struct.venus_comm*, %struct.venus_comm** %3, align 8
  %75 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %74, i32 0, i32 0
  %76 = call i32 @mutex_lock(i32* %75)
  br label %20

77:                                               ; preds = %58, %39
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @coda_unblock_signals(i32* %6)
  br label %82

82:                                               ; preds = %80, %77
  %83 = load %struct.upc_req*, %struct.upc_req** %4, align 8
  %84 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %83, i32 0, i32 1
  %85 = call i32 @remove_wait_queue(i32* %84, i32* @wait)
  %86 = load i32, i32* @TASK_RUNNING, align 4
  %87 = call i32 @set_current_state(i32 %86)
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @coda_block_signals(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @CODA_INTERRUPTIBLE(%struct.upc_req*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @coda_unblock_signals(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_timeout(i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
