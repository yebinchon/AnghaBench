; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c___sclp_start_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c___sclp_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_req = type { i32, i32, i32, i32 }

@sclp_running_state = common dso_local global i64 0, align 8
@sclp_running_state_idle = common dso_local global i64 0, align 8
@sclp_request_timer = common dso_local global i32 0, align 4
@SCLP_REQ_RUNNING = common dso_local global i32 0, align 4
@sclp_running_state_running = common dso_local global i64 0, align 8
@SCLP_RETRY_INTERVAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@sclp_request_timeout_restart = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SCLP_BUSY_INTERVAL = common dso_local global i32 0, align 4
@sclp_request_timeout_normal = common dso_local global i32 0, align 4
@SCLP_REQ_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sclp_req*)* @__sclp_start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sclp_start_request(%struct.sclp_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sclp_req*, align 8
  %4 = alloca i32, align 4
  store %struct.sclp_req* %0, %struct.sclp_req** %3, align 8
  %5 = load i64, i64* @sclp_running_state, align 8
  %6 = load i64, i64* @sclp_running_state_idle, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

9:                                                ; preds = %1
  %10 = call i32 @del_timer(i32* @sclp_request_timer)
  %11 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %12 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %15 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sclp_service_call(i32 %13, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %19 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %9
  %25 = load i32, i32* @SCLP_REQ_RUNNING, align 4
  %26 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %27 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i64, i64* @sclp_running_state_running, align 8
  store i64 %28, i64* @sclp_running_state, align 8
  %29 = load i32, i32* @SCLP_RETRY_INTERVAL, align 4
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* @sclp_request_timeout_restart, align 4
  %33 = call i32 @__sclp_set_request_timer(i32 %31, i32 %32)
  store i32 0, i32* %2, align 4
  br label %51

34:                                               ; preds = %9
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @SCLP_BUSY_INTERVAL, align 4
  %41 = load i32, i32* @HZ, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* @sclp_request_timeout_normal, align 4
  %44 = call i32 @__sclp_set_request_timer(i32 %42, i32 %43)
  store i32 0, i32* %2, align 4
  br label %51

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* @SCLP_REQ_FAILED, align 4
  %48 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %49 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %39, %24, %8
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @sclp_service_call(i32, i32) #1

declare dso_local i32 @__sclp_set_request_timer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
