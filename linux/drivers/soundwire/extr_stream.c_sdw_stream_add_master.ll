; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_stream_add_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_stream_add_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { i32, i32, i32, i32 }
%struct.sdw_stream_config = type { i32 }
%struct.sdw_port_config = type { i32 }
%struct.sdw_stream_runtime = type { i64, i32 }
%struct.sdw_master_runtime = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Multilink not supported, link %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Master runtime config failed for stream:%s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdw_stream_add_master(%struct.sdw_bus* %0, %struct.sdw_stream_config* %1, %struct.sdw_port_config* %2, i32 %3, %struct.sdw_stream_runtime* %4) #0 {
  %6 = alloca %struct.sdw_bus*, align 8
  %7 = alloca %struct.sdw_stream_config*, align 8
  %8 = alloca %struct.sdw_port_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sdw_stream_runtime*, align 8
  %11 = alloca %struct.sdw_master_runtime*, align 8
  %12 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %6, align 8
  store %struct.sdw_stream_config* %1, %struct.sdw_stream_config** %7, align 8
  store %struct.sdw_port_config* %2, %struct.sdw_port_config** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sdw_stream_runtime* %4, %struct.sdw_stream_runtime** %10, align 8
  %13 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %14 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %17 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %5
  %21 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %10, align 8
  %22 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %27 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %30 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %80

35:                                               ; preds = %20, %5
  %36 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %37 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %7, align 8
  %38 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %10, align 8
  %39 = call %struct.sdw_master_runtime* @sdw_alloc_master_rt(%struct.sdw_bus* %36, %struct.sdw_stream_config* %37, %struct.sdw_stream_runtime* %38)
  store %struct.sdw_master_runtime* %39, %struct.sdw_master_runtime** %11, align 8
  %40 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %11, align 8
  %41 = icmp ne %struct.sdw_master_runtime* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %35
  %43 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %44 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %10, align 8
  %47 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %80

52:                                               ; preds = %35
  %53 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %54 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %10, align 8
  %57 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %7, align 8
  %58 = call i32 @sdw_config_stream(i32 %55, %struct.sdw_stream_runtime* %56, %struct.sdw_stream_config* %57, i32 0)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %76

62:                                               ; preds = %52
  %63 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %64 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %11, align 8
  %65 = load %struct.sdw_port_config*, %struct.sdw_port_config** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @sdw_master_port_config(%struct.sdw_bus* %63, %struct.sdw_master_runtime* %64, %struct.sdw_port_config* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %76

71:                                               ; preds = %62
  %72 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %10, align 8
  %73 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  br label %80

76:                                               ; preds = %70, %61
  %77 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %11, align 8
  %78 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %10, align 8
  %79 = call i32 @sdw_release_master_stream(%struct.sdw_master_runtime* %77, %struct.sdw_stream_runtime* %78)
  br label %80

80:                                               ; preds = %76, %71, %42, %25
  %81 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %82 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %12, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.sdw_master_runtime* @sdw_alloc_master_rt(%struct.sdw_bus*, %struct.sdw_stream_config*, %struct.sdw_stream_runtime*) #1

declare dso_local i32 @sdw_config_stream(i32, %struct.sdw_stream_runtime*, %struct.sdw_stream_config*, i32) #1

declare dso_local i32 @sdw_master_port_config(%struct.sdw_bus*, %struct.sdw_master_runtime*, %struct.sdw_port_config*, i32) #1

declare dso_local i32 @sdw_release_master_stream(%struct.sdw_master_runtime*, %struct.sdw_stream_runtime*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
