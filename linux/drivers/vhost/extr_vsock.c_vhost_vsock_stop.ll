; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vsock.c_vhost_vsock_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vsock.c_vhost_vsock_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_vsock = type { %struct.TYPE_2__, %struct.vhost_virtqueue* }
%struct.TYPE_2__ = type { i32 }
%struct.vhost_virtqueue = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_vsock*)* @vhost_vsock_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_vsock_stop(%struct.vhost_vsock* %0) #0 {
  %2 = alloca %struct.vhost_vsock*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vhost_virtqueue*, align 8
  store %struct.vhost_vsock* %0, %struct.vhost_vsock** %2, align 8
  %6 = load %struct.vhost_vsock*, %struct.vhost_vsock** %2, align 8
  %7 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.vhost_vsock*, %struct.vhost_vsock** %2, align 8
  %11 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %10, i32 0, i32 0
  %12 = call i32 @vhost_dev_check_owner(%struct.TYPE_2__* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %42

16:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.vhost_vsock*, %struct.vhost_vsock** %2, align 8
  %20 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %19, i32 0, i32 1
  %21 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %20, align 8
  %22 = call i64 @ARRAY_SIZE(%struct.vhost_virtqueue* %21)
  %23 = icmp ult i64 %18, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = load %struct.vhost_vsock*, %struct.vhost_vsock** %2, align 8
  %26 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %25, i32 0, i32 1
  %27 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %27, i64 %28
  store %struct.vhost_virtqueue* %29, %struct.vhost_virtqueue** %5, align 8
  %30 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %31 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %34 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %36 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  br label %38

38:                                               ; preds = %24
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %17

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41, %15
  %43 = load %struct.vhost_vsock*, %struct.vhost_vsock** %2, align 8
  %44 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vhost_dev_check_owner(%struct.TYPE_2__*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.vhost_virtqueue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
