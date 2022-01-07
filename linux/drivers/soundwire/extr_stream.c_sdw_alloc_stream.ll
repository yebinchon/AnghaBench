; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_alloc_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_alloc_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_stream_runtime = type { i8*, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SDW_STREAM_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sdw_stream_runtime* @sdw_alloc_stream(i8* %0) #0 {
  %2 = alloca %struct.sdw_stream_runtime*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sdw_stream_runtime*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.sdw_stream_runtime* @kzalloc(i32 24, i32 %5)
  store %struct.sdw_stream_runtime* %6, %struct.sdw_stream_runtime** %4, align 8
  %7 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %4, align 8
  %8 = icmp ne %struct.sdw_stream_runtime* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.sdw_stream_runtime* null, %struct.sdw_stream_runtime** %2, align 8
  br label %23

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %4, align 8
  %15 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %14, i32 0, i32 3
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load i32, i32* @SDW_STREAM_ALLOCATED, align 4
  %18 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %4, align 8
  %19 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %4, align 8
  %21 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %4, align 8
  store %struct.sdw_stream_runtime* %22, %struct.sdw_stream_runtime** %2, align 8
  br label %23

23:                                               ; preds = %10, %9
  %24 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %2, align 8
  ret %struct.sdw_stream_runtime* %24
}

declare dso_local %struct.sdw_stream_runtime* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
