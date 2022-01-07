; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_test.c_vhost_test_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_test.c_vhost_test_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_test = type { %struct.TYPE_2__, %struct.vhost_virtqueue* }
%struct.TYPE_2__ = type { i32 }
%struct.vhost_virtqueue = type { i32, i32 }

@VHOST_F_LOG_ALL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VHOST_TEST_VQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_test*, i32)* @vhost_test_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_test_set_features(%struct.vhost_test* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vhost_virtqueue*, align 8
  store %struct.vhost_test* %0, %struct.vhost_test** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %8 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VHOST_F_LOG_ALL, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %18 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %17, i32 0, i32 0
  %19 = call i32 @vhost_log_access_ok(%struct.TYPE_2__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %23 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* @EFAULT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %47

28:                                               ; preds = %16, %2
  %29 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %30 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %29, i32 0, i32 1
  %31 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %30, align 8
  %32 = load i64, i64* @VHOST_TEST_VQ, align 8
  %33 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %31, i64 %32
  store %struct.vhost_virtqueue* %33, %struct.vhost_virtqueue** %6, align 8
  %34 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %35 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %39 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %41 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %44 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %28, %21
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vhost_log_access_ok(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
