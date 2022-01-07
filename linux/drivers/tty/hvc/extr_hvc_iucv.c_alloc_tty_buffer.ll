; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_alloc_tty_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_alloc_tty_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_tty_buffer = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@hvc_iucv_mempool = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@MSG_VERSION = common dso_local global i32 0, align 4
@MSG_TYPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iucv_tty_buffer* (i64, i32)* @alloc_tty_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iucv_tty_buffer* @alloc_tty_buffer(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.iucv_tty_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iucv_tty_buffer*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @hvc_iucv_mempool, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.iucv_tty_buffer* @mempool_alloc(i32 %7, i32 %8)
  store %struct.iucv_tty_buffer* %9, %struct.iucv_tty_buffer** %6, align 8
  %10 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  %11 = icmp ne %struct.iucv_tty_buffer* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.iucv_tty_buffer* null, %struct.iucv_tty_buffer** %3, align 8
  br label %60

13:                                               ; preds = %2
  %14 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  %15 = call i32 @memset(%struct.iucv_tty_buffer* %14, i32 0, i32 16)
  %16 = load i64, i64* %4, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @MSG_SIZE(i64 %19)
  %21 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @GFP_DMA, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.TYPE_4__* @kmalloc(i32 %27, i32 %30)
  %32 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %32, i32 0, i32 0
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %33, align 8
  %34 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %18
  %39 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  %40 = load i32, i32* @hvc_iucv_mempool, align 4
  %41 = call i32 @mempool_free(%struct.iucv_tty_buffer* %39, i32 %40)
  store %struct.iucv_tty_buffer* null, %struct.iucv_tty_buffer** %3, align 8
  br label %60

42:                                               ; preds = %18
  %43 = load i32, i32* @MSG_VERSION, align 4
  %44 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @MSG_TYPE_DATA, align 4
  %49 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  %55 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 %53, i64* %57, align 8
  br label %58

58:                                               ; preds = %42, %13
  %59 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  store %struct.iucv_tty_buffer* %59, %struct.iucv_tty_buffer** %3, align 8
  br label %60

60:                                               ; preds = %58, %38, %12
  %61 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %3, align 8
  ret %struct.iucv_tty_buffer* %61
}

declare dso_local %struct.iucv_tty_buffer* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.iucv_tty_buffer*, i32, i32) #1

declare dso_local i32 @MSG_SIZE(i64) #1

declare dso_local %struct.TYPE_4__* @kmalloc(i32, i32) #1

declare dso_local i32 @mempool_free(%struct.iucv_tty_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
