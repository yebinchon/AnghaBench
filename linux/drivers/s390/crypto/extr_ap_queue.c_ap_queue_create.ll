; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_queue_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_queue_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ap_queue_device_release = common dso_local global i32 0, align 4
@ap_queue_type = common dso_local global i32 0, align 4
@AP_STATE_RESET_START = common dso_local global i32 0, align 4
@AP_INTR_DISABLED = common dso_local global i32 0, align 4
@ap_request_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ap_queue* @ap_queue_create(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.ap_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ap_queue*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ap_queue* @kzalloc(i32 56, i32 %7)
  store %struct.ap_queue* %8, %struct.ap_queue** %6, align 8
  %9 = load %struct.ap_queue*, %struct.ap_queue** %6, align 8
  %10 = icmp ne %struct.ap_queue* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.ap_queue* null, %struct.ap_queue** %3, align 8
  br label %52

12:                                               ; preds = %2
  %13 = load i32, i32* @ap_queue_device_release, align 4
  %14 = load %struct.ap_queue*, %struct.ap_queue** %6, align 8
  %15 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 8
  %18 = load %struct.ap_queue*, %struct.ap_queue** %6, align 8
  %19 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* @ap_queue_type, i32** %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ap_queue*, %struct.ap_queue** %6, align 8
  %24 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ap_queue*, %struct.ap_queue** %6, align 8
  %28 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @AP_STATE_RESET_START, align 4
  %30 = load %struct.ap_queue*, %struct.ap_queue** %6, align 8
  %31 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @AP_INTR_DISABLED, align 4
  %33 = load %struct.ap_queue*, %struct.ap_queue** %6, align 8
  %34 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ap_queue*, %struct.ap_queue** %6, align 8
  %36 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %35, i32 0, i32 4
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.ap_queue*, %struct.ap_queue** %6, align 8
  %39 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %38, i32 0, i32 3
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.ap_queue*, %struct.ap_queue** %6, align 8
  %42 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %41, i32 0, i32 2
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.ap_queue*, %struct.ap_queue** %6, align 8
  %45 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %44, i32 0, i32 1
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.ap_queue*, %struct.ap_queue** %6, align 8
  %48 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %47, i32 0, i32 0
  %49 = load i32, i32* @ap_request_timeout, align 4
  %50 = call i32 @timer_setup(i32* %48, i32 %49, i32 0)
  %51 = load %struct.ap_queue*, %struct.ap_queue** %6, align 8
  store %struct.ap_queue* %51, %struct.ap_queue** %3, align 8
  br label %52

52:                                               ; preds = %12, %11
  %53 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  ret %struct.ap_queue* %53
}

declare dso_local %struct.ap_queue* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
