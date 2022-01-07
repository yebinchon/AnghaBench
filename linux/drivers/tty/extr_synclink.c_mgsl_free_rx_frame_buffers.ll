; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_free_rx_frame_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_free_rx_frame_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMABUFFERSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*, i32, i32)* @mgsl_free_rx_frame_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgsl_free_rx_frame_buffers(%struct.mgsl_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mgsl_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %9, align 4
  br label %11

11:                                               ; preds = %39, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load %struct.mgsl_struct*, %struct.mgsl_struct** %4, align 8
  %17 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i64, i64* @DMABUFFERSIZE, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast i32* %29 to i64*
  store i64 %27, i64* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.mgsl_struct*, %struct.mgsl_struct** %4, align 8
  %35 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %26
  br label %11

40:                                               ; preds = %11
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.mgsl_struct*, %struct.mgsl_struct** %4, align 8
  %43 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
