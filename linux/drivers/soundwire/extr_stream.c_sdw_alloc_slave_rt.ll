; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_alloc_slave_rt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_alloc_slave_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_slave_runtime = type { %struct.sdw_slave*, i32, i32, i32 }
%struct.sdw_slave = type { i32 }
%struct.sdw_stream_config = type { i32, i32 }
%struct.sdw_stream_runtime = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdw_slave_runtime* (%struct.sdw_slave*, %struct.sdw_stream_config*, %struct.sdw_stream_runtime*)* @sdw_alloc_slave_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdw_slave_runtime* @sdw_alloc_slave_rt(%struct.sdw_slave* %0, %struct.sdw_stream_config* %1, %struct.sdw_stream_runtime* %2) #0 {
  %4 = alloca %struct.sdw_slave_runtime*, align 8
  %5 = alloca %struct.sdw_slave*, align 8
  %6 = alloca %struct.sdw_stream_config*, align 8
  %7 = alloca %struct.sdw_stream_runtime*, align 8
  %8 = alloca %struct.sdw_slave_runtime*, align 8
  store %struct.sdw_slave* %0, %struct.sdw_slave** %5, align 8
  store %struct.sdw_stream_config* %1, %struct.sdw_stream_config** %6, align 8
  store %struct.sdw_stream_runtime* %2, %struct.sdw_stream_runtime** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sdw_slave_runtime* @kzalloc(i32 24, i32 %9)
  store %struct.sdw_slave_runtime* %10, %struct.sdw_slave_runtime** %8, align 8
  %11 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %8, align 8
  %12 = icmp ne %struct.sdw_slave_runtime* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.sdw_slave_runtime* null, %struct.sdw_slave_runtime** %4, align 8
  br label %32

14:                                               ; preds = %3
  %15 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %8, align 8
  %16 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %15, i32 0, i32 3
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %6, align 8
  %19 = getelementptr inbounds %struct.sdw_stream_config, %struct.sdw_stream_config* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %8, align 8
  %22 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %6, align 8
  %24 = getelementptr inbounds %struct.sdw_stream_config, %struct.sdw_stream_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %8, align 8
  %27 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %29 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %8, align 8
  %30 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %29, i32 0, i32 0
  store %struct.sdw_slave* %28, %struct.sdw_slave** %30, align 8
  %31 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %8, align 8
  store %struct.sdw_slave_runtime* %31, %struct.sdw_slave_runtime** %4, align 8
  br label %32

32:                                               ; preds = %14, %13
  %33 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %4, align 8
  ret %struct.sdw_slave_runtime* %33
}

declare dso_local %struct.sdw_slave_runtime* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
