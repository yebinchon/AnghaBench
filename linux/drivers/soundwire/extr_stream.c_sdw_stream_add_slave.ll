; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_stream_add_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_stream_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_slave = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sdw_stream_config = type { i32 }
%struct.sdw_port_config = type { i32 }
%struct.sdw_stream_runtime = type { i32, i32 }
%struct.sdw_slave_runtime = type { i32 }
%struct.sdw_master_runtime = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"alloc master runtime failed for stream:%s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Slave runtime config failed for stream:%s\0A\00", align 1
@SDW_STREAM_CONFIGURED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdw_stream_add_slave(%struct.sdw_slave* %0, %struct.sdw_stream_config* %1, %struct.sdw_port_config* %2, i32 %3, %struct.sdw_stream_runtime* %4) #0 {
  %6 = alloca %struct.sdw_slave*, align 8
  %7 = alloca %struct.sdw_stream_config*, align 8
  %8 = alloca %struct.sdw_port_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sdw_stream_runtime*, align 8
  %11 = alloca %struct.sdw_slave_runtime*, align 8
  %12 = alloca %struct.sdw_master_runtime*, align 8
  %13 = alloca i32, align 4
  store %struct.sdw_slave* %0, %struct.sdw_slave** %6, align 8
  store %struct.sdw_stream_config* %1, %struct.sdw_stream_config** %7, align 8
  store %struct.sdw_port_config* %2, %struct.sdw_port_config** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sdw_stream_runtime* %4, %struct.sdw_stream_runtime** %10, align 8
  %14 = load %struct.sdw_slave*, %struct.sdw_slave** %6, align 8
  %15 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.sdw_slave*, %struct.sdw_slave** %6, align 8
  %20 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %7, align 8
  %23 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %10, align 8
  %24 = call %struct.sdw_master_runtime* @sdw_alloc_master_rt(%struct.TYPE_2__* %21, %struct.sdw_stream_config* %22, %struct.sdw_stream_runtime* %23)
  store %struct.sdw_master_runtime* %24, %struct.sdw_master_runtime** %12, align 8
  %25 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %12, align 8
  %26 = icmp ne %struct.sdw_master_runtime* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %5
  %28 = load %struct.sdw_slave*, %struct.sdw_slave** %6, align 8
  %29 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %28, i32 0, i32 1
  %30 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %10, align 8
  %31 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  br label %83

36:                                               ; preds = %5
  %37 = load %struct.sdw_slave*, %struct.sdw_slave** %6, align 8
  %38 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %7, align 8
  %39 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %10, align 8
  %40 = call %struct.sdw_slave_runtime* @sdw_alloc_slave_rt(%struct.sdw_slave* %37, %struct.sdw_stream_config* %38, %struct.sdw_stream_runtime* %39)
  store %struct.sdw_slave_runtime* %40, %struct.sdw_slave_runtime** %11, align 8
  %41 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %11, align 8
  %42 = icmp ne %struct.sdw_slave_runtime* %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %36
  %44 = load %struct.sdw_slave*, %struct.sdw_slave** %6, align 8
  %45 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %44, i32 0, i32 1
  %46 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %10, align 8
  %47 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %13, align 4
  br label %79

52:                                               ; preds = %36
  %53 = load %struct.sdw_slave*, %struct.sdw_slave** %6, align 8
  %54 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %53, i32 0, i32 1
  %55 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %10, align 8
  %56 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %7, align 8
  %57 = call i32 @sdw_config_stream(i32* %54, %struct.sdw_stream_runtime* %55, %struct.sdw_stream_config* %56, i32 1)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %79

61:                                               ; preds = %52
  %62 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %11, align 8
  %63 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %62, i32 0, i32 0
  %64 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %12, align 8
  %65 = getelementptr inbounds %struct.sdw_master_runtime, %struct.sdw_master_runtime* %64, i32 0, i32 0
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  %67 = load %struct.sdw_slave*, %struct.sdw_slave** %6, align 8
  %68 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %11, align 8
  %69 = load %struct.sdw_port_config*, %struct.sdw_port_config** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @sdw_slave_port_config(%struct.sdw_slave* %67, %struct.sdw_slave_runtime* %68, %struct.sdw_port_config* %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %79

75:                                               ; preds = %61
  %76 = load i32, i32* @SDW_STREAM_CONFIGURED, align 4
  %77 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %10, align 8
  %78 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %83

79:                                               ; preds = %74, %60, %43
  %80 = load %struct.sdw_master_runtime*, %struct.sdw_master_runtime** %12, align 8
  %81 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %10, align 8
  %82 = call i32 @sdw_release_master_stream(%struct.sdw_master_runtime* %80, %struct.sdw_stream_runtime* %81)
  br label %83

83:                                               ; preds = %79, %75, %27
  %84 = load %struct.sdw_slave*, %struct.sdw_slave** %6, align 8
  %85 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %13, align 4
  ret i32 %89
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sdw_master_runtime* @sdw_alloc_master_rt(%struct.TYPE_2__*, %struct.sdw_stream_config*, %struct.sdw_stream_runtime*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.sdw_slave_runtime* @sdw_alloc_slave_rt(%struct.sdw_slave*, %struct.sdw_stream_config*, %struct.sdw_stream_runtime*) #1

declare dso_local i32 @sdw_config_stream(i32*, %struct.sdw_stream_runtime*, %struct.sdw_stream_config*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sdw_slave_port_config(%struct.sdw_slave*, %struct.sdw_slave_runtime*, %struct.sdw_port_config*, i32) #1

declare dso_local i32 @sdw_release_master_stream(%struct.sdw_master_runtime*, %struct.sdw_stream_runtime*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
