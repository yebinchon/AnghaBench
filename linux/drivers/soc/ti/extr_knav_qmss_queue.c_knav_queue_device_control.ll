; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_device_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_device_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.knav_queue_notify_config = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @knav_queue_device_control(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.knav_queue*, align 8
  %8 = alloca %struct.knav_queue_notify_config*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.knav_queue*
  store %struct.knav_queue* %11, %struct.knav_queue** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %46 [
    i32 129, label %13
    i32 131, label %27
    i32 128, label %30
    i32 132, label %37
    i32 133, label %40
    i32 130, label %43
  ]

13:                                               ; preds = %3
  %14 = load %struct.knav_queue*, %struct.knav_queue** %7, align 8
  %15 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.knav_queue*, %struct.knav_queue** %7, align 8
  %22 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %20, %25
  store i32 %26, i32* %9, align 4
  br label %49

27:                                               ; preds = %3
  %28 = load %struct.knav_queue*, %struct.knav_queue** %7, align 8
  %29 = call i32 @knav_queue_flush(%struct.knav_queue* %28)
  store i32 %29, i32* %9, align 4
  br label %49

30:                                               ; preds = %3
  %31 = load i64, i64* %6, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.knav_queue_notify_config*
  store %struct.knav_queue_notify_config* %33, %struct.knav_queue_notify_config** %8, align 8
  %34 = load %struct.knav_queue*, %struct.knav_queue** %7, align 8
  %35 = load %struct.knav_queue_notify_config*, %struct.knav_queue_notify_config** %8, align 8
  %36 = call i32 @knav_queue_set_notifier(%struct.knav_queue* %34, %struct.knav_queue_notify_config* %35)
  store i32 %36, i32* %9, align 4
  br label %49

37:                                               ; preds = %3
  %38 = load %struct.knav_queue*, %struct.knav_queue** %7, align 8
  %39 = call i32 @knav_queue_enable_notifier(%struct.knav_queue* %38)
  store i32 %39, i32* %9, align 4
  br label %49

40:                                               ; preds = %3
  %41 = load %struct.knav_queue*, %struct.knav_queue** %7, align 8
  %42 = call i32 @knav_queue_disable_notifier(%struct.knav_queue* %41)
  store i32 %42, i32* %9, align 4
  br label %49

43:                                               ; preds = %3
  %44 = load %struct.knav_queue*, %struct.knav_queue** %7, align 8
  %45 = call i32 @knav_queue_get_count(%struct.knav_queue* %44)
  store i32 %45, i32* %9, align 4
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @ENOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %43, %40, %37, %30, %27, %13
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @knav_queue_flush(%struct.knav_queue*) #1

declare dso_local i32 @knav_queue_set_notifier(%struct.knav_queue*, %struct.knav_queue_notify_config*) #1

declare dso_local i32 @knav_queue_enable_notifier(%struct.knav_queue*) #1

declare dso_local i32 @knav_queue_disable_notifier(%struct.knav_queue*) #1

declare dso_local i32 @knav_queue_get_count(%struct.knav_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
