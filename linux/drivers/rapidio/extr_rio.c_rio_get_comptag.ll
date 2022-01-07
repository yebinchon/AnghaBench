; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_get_comptag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_get_comptag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.rio_dev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_head* }

@rio_global_list_lock = common dso_local global i32 0, align 4
@rio_devices = common dso_local global %struct.list_head zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rio_dev* @rio_get_comptag(i64 %0, %struct.rio_dev* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rio_dev*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.rio_dev*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.rio_dev* %1, %struct.rio_dev** %4, align 8
  %7 = call i32 @spin_lock(i32* @rio_global_list_lock)
  %8 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %9 = icmp ne %struct.rio_dev* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @rio_devices, i32 0, i32 0), align 8
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi %struct.list_head* [ %14, %10 ], [ %16, %15 ]
  store %struct.list_head* %18, %struct.list_head** %5, align 8
  br label %19

19:                                               ; preds = %36, %17
  %20 = load %struct.list_head*, %struct.list_head** %5, align 8
  %21 = icmp ne %struct.list_head* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.list_head*, %struct.list_head** %5, align 8
  %24 = icmp ne %struct.list_head* %23, @rio_devices
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ]
  br i1 %26, label %27, label %40

27:                                               ; preds = %25
  %28 = load %struct.list_head*, %struct.list_head** %5, align 8
  %29 = call %struct.rio_dev* @rio_dev_g(%struct.list_head* %28)
  store %struct.rio_dev* %29, %struct.rio_dev** %6, align 8
  %30 = load %struct.rio_dev*, %struct.rio_dev** %6, align 8
  %31 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %41

36:                                               ; preds = %27
  %37 = load %struct.list_head*, %struct.list_head** %5, align 8
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %37, i32 0, i32 0
  %39 = load %struct.list_head*, %struct.list_head** %38, align 8
  store %struct.list_head* %39, %struct.list_head** %5, align 8
  br label %19

40:                                               ; preds = %25
  store %struct.rio_dev* null, %struct.rio_dev** %6, align 8
  br label %41

41:                                               ; preds = %40, %35
  %42 = call i32 @spin_unlock(i32* @rio_global_list_lock)
  %43 = load %struct.rio_dev*, %struct.rio_dev** %6, align 8
  ret %struct.rio_dev* %43
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.rio_dev* @rio_dev_g(%struct.list_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
