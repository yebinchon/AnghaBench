; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_alloc_master_rt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_alloc_master_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_master_runtime = type { i32, %struct.sdw_stream_runtime*, %struct.sdw_bus*, i32, i32, i32, i32, i32 }
%struct.sdw_bus = type { i32 }
%struct.sdw_stream_config = type { i32, i32 }
%struct.sdw_stream_runtime = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdw_master_runtime* (%struct.sdw_bus*, %struct.sdw_stream_config*, %struct.sdw_stream_runtime*)* @sdw_alloc_master_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdw_master_runtime* @sdw_alloc_master_rt(%struct.sdw_bus* %0, %struct.sdw_stream_config* %1, %struct.sdw_stream_runtime* %2) #0 {
  %4 = alloca %struct.sdw_master_runtime*, align 8
  %5 = alloca %struct.sdw_bus*, align 8
  %6 = alloca %struct.sdw_stream_config*, align 8
  %7 = alloca %struct.sdw_stream_runtime*, align 8
  %8 = alloca %struct.sdw_master_runtime*, align 8
  store %struct.sdw_bus* %0, %struct.sdw_bus** %5, align 8
  store %struct.sdw_stream_config* %1, %struct.sdw_stream_config** %6, align 8
  store %struct.sdw_stream_runtime* %2, %struct.sdw_stream_runtime** %7, align 8
  %9 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %10 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %7, align 8
  %11 = call %struct.sdw_master_runtime* @sdw_find_master_rt(%struct.sdw_bus* %9, %struct.sdw_stream_runtime* %10)
  store %struct.sdw_master_runtime* %11, %struct.sdw_master_runtime** %8, align 8
  %12 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %8, align 8
  %13 = icmp ne %struct.sdw_master_runtime* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %38

15:                                               ; preds = %3
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sdw_master_runtime* @kzalloc(i32 48, i32 %16)
  store %struct.sdw_master_runtime* %17, %struct.sdw_master_runtime** %8, align 8
  %18 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %8, align 8
  %19 = icmp ne %struct.sdw_master_runtime* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store %struct.sdw_master_runtime* null, %struct.sdw_master_runtime** %4, align 8
  br label %56

21:                                               ; preds = %15
  %22 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %8, align 8
  %23 = getelementptr inbounds %struct.sdw_master_runtime, %struct.sdw_master_runtime* %22, i32 0, i32 7
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %8, align 8
  %26 = getelementptr inbounds %struct.sdw_master_runtime, %struct.sdw_master_runtime* %25, i32 0, i32 6
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %8, align 8
  %29 = getelementptr inbounds %struct.sdw_master_runtime, %struct.sdw_master_runtime* %28, i32 0, i32 5
  %30 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %7, align 8
  %31 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %30, i32 0, i32 0
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %8, align 8
  %34 = getelementptr inbounds %struct.sdw_master_runtime, %struct.sdw_master_runtime* %33, i32 0, i32 4
  %35 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %36 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %35, i32 0, i32 0
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  br label %38

38:                                               ; preds = %21, %14
  %39 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %6, align 8
  %40 = getelementptr inbounds %struct.sdw_stream_config, %struct.sdw_stream_config* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %8, align 8
  %43 = getelementptr inbounds %struct.sdw_master_runtime, %struct.sdw_master_runtime* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %45 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %8, align 8
  %46 = getelementptr inbounds %struct.sdw_master_runtime, %struct.sdw_master_runtime* %45, i32 0, i32 2
  store %struct.sdw_bus* %44, %struct.sdw_bus** %46, align 8
  %47 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %7, align 8
  %48 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %8, align 8
  %49 = getelementptr inbounds %struct.sdw_master_runtime, %struct.sdw_master_runtime* %48, i32 0, i32 1
  store %struct.sdw_stream_runtime* %47, %struct.sdw_stream_runtime** %49, align 8
  %50 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %6, align 8
  %51 = getelementptr inbounds %struct.sdw_stream_config, %struct.sdw_stream_config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %8, align 8
  %54 = getelementptr inbounds %struct.sdw_master_runtime, %struct.sdw_master_runtime* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %8, align 8
  store %struct.sdw_master_runtime* %55, %struct.sdw_master_runtime** %4, align 8
  br label %56

56:                                               ; preds = %38, %20
  %57 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %4, align 8
  ret %struct.sdw_master_runtime* %57
}

declare dso_local %struct.sdw_master_runtime* @sdw_find_master_rt(%struct.sdw_bus*, %struct.sdw_stream_runtime*) #1

declare dso_local %struct.sdw_master_runtime* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
