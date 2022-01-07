; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_open_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_open_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_queue = type { i32 }
%struct.knav_queue_inst = type { i32 }

@knav_dev_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@KNAV_QUEUE_SHARED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.knav_queue* (i8*, i32, i32)* @knav_queue_open_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.knav_queue* @knav_queue_open_by_id(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.knav_queue_inst*, align 8
  %8 = alloca %struct.knav_queue*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @mutex_lock(i32* @knav_dev_lock)
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.knav_queue* @ERR_PTR(i32 %11)
  store %struct.knav_queue* %12, %struct.knav_queue** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.knav_queue_inst* @knav_queue_find_by_id(i32 %13)
  store %struct.knav_queue_inst* %14, %struct.knav_queue_inst** %7, align 8
  %15 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %16 = icmp ne %struct.knav_queue_inst* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %53

18:                                               ; preds = %3
  %19 = load i32, i32* @EEXIST, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.knav_queue* @ERR_PTR(i32 %20)
  store %struct.knav_queue* %21, %struct.knav_queue** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @KNAV_QUEUE_SHARED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %28 = call i64 @knav_queue_is_busy(%struct.knav_queue_inst* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %53

31:                                               ; preds = %26, %18
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.knav_queue* @ERR_PTR(i32 %33)
  store %struct.knav_queue* %34, %struct.knav_queue** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @KNAV_QUEUE_SHARED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %41 = call i64 @knav_queue_is_busy(%struct.knav_queue_inst* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %45 = call i32 @knav_queue_is_shared(%struct.knav_queue_inst* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %53

48:                                               ; preds = %43, %39, %31
  %49 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.knav_queue* @__knav_queue_open(%struct.knav_queue_inst* %49, i8* %50, i32 %51)
  store %struct.knav_queue* %52, %struct.knav_queue** %8, align 8
  br label %53

53:                                               ; preds = %48, %47, %30, %17
  %54 = call i32 @mutex_unlock(i32* @knav_dev_lock)
  %55 = load %struct.knav_queue*, %struct.knav_queue** %8, align 8
  ret %struct.knav_queue* %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.knav_queue* @ERR_PTR(i32) #1

declare dso_local %struct.knav_queue_inst* @knav_queue_find_by_id(i32) #1

declare dso_local i64 @knav_queue_is_busy(%struct.knav_queue_inst*) #1

declare dso_local i32 @knav_queue_is_shared(%struct.knav_queue_inst*) #1

declare dso_local %struct.knav_queue* @__knav_queue_open(%struct.knav_queue_inst*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
