; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_init_iov_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_init_iov_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { i32 }
%struct.iov_iter = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vhost_virtqueue*, %struct.iov_iter*, i64, i32)* @init_iov_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_iov_iter(%struct.vhost_virtqueue* %0, %struct.iov_iter* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.vhost_virtqueue*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %11 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @iov_length(i32 %12, i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %16 = load i32, i32* @WRITE, align 4
  %17 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %18 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @iov_iter_init(%struct.iov_iter* %15, i32 %16, i32 %19, i32 %20, i64 %21)
  %23 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @iov_iter_advance(%struct.iov_iter* %23, i64 %24)
  %26 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %27 = call i64 @iov_iter_count(%struct.iov_iter* %26)
  ret i64 %27
}

declare dso_local i64 @iov_length(i32, i32) #1

declare dso_local i32 @iov_iter_init(%struct.iov_iter*, i32, i32, i32, i64) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i64) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
