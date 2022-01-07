; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.uio_listener* }
%struct.uio_listener = type { i64, %struct.uio_device* }
%struct.uio_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @uio_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.uio_listener*, align 8
  %7 = alloca %struct.uio_device*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.uio_listener*, %struct.uio_listener** %10, align 8
  store %struct.uio_listener* %11, %struct.uio_listener** %6, align 8
  %12 = load %struct.uio_listener*, %struct.uio_listener** %6, align 8
  %13 = getelementptr inbounds %struct.uio_listener, %struct.uio_listener* %12, i32 0, i32 1
  %14 = load %struct.uio_device*, %struct.uio_device** %13, align 8
  store %struct.uio_device* %14, %struct.uio_device** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %16 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %19 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %24 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22, %2
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %34 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %33, i32 0, i32 2
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %58

40:                                               ; preds = %32
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %43 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %42, i32 0, i32 1
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @poll_wait(%struct.file* %41, i32* %43, i32* %44)
  %46 = load %struct.uio_listener*, %struct.uio_listener** %6, align 8
  %47 = getelementptr inbounds %struct.uio_listener, %struct.uio_listener* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  %50 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %49, i32 0, i32 0
  %51 = call i64 @atomic_read(i32* %50)
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load i32, i32* @EPOLLIN, align 4
  %55 = load i32, i32* @EPOLLRDNORM, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %53, %38
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
