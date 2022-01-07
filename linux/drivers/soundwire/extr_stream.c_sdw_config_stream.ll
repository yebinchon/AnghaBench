; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_config_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_config_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdw_stream_runtime = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.sdw_stream_config = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"rate not matching, stream:%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"bps not matching, stream:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sdw_stream_runtime*, %struct.sdw_stream_config*, i32)* @sdw_config_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_config_stream(%struct.device* %0, %struct.sdw_stream_runtime* %1, %struct.sdw_stream_config* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.sdw_stream_runtime*, align 8
  %8 = alloca %struct.sdw_stream_config*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.sdw_stream_runtime* %1, %struct.sdw_stream_runtime** %7, align 8
  store %struct.sdw_stream_config* %2, %struct.sdw_stream_config** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %7, align 8
  %11 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %4
  %16 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %7, align 8
  %17 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %8, align 8
  %21 = getelementptr inbounds %struct.sdw_stream_config, %struct.sdw_stream_config* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %7, align 8
  %27 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %87

32:                                               ; preds = %15, %4
  %33 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %7, align 8
  %34 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %7, align 8
  %40 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %8, align 8
  %44 = getelementptr inbounds %struct.sdw_stream_config, %struct.sdw_stream_config* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %7, align 8
  %50 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %87

55:                                               ; preds = %38, %32
  %56 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %8, align 8
  %57 = getelementptr inbounds %struct.sdw_stream_config, %struct.sdw_stream_config* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %7, align 8
  %60 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %8, align 8
  %62 = getelementptr inbounds %struct.sdw_stream_config, %struct.sdw_stream_config* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %7, align 8
  %65 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %8, align 8
  %68 = getelementptr inbounds %struct.sdw_stream_config, %struct.sdw_stream_config* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %7, align 8
  %71 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %55
  %76 = load %struct.sdw_stream_config*, %struct.sdw_stream_config** %8, align 8
  %77 = getelementptr inbounds %struct.sdw_stream_config, %struct.sdw_stream_config* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.sdw_stream_runtime*, %struct.sdw_stream_runtime** %7, align 8
  %80 = getelementptr inbounds %struct.sdw_stream_runtime, %struct.sdw_stream_runtime* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %78
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 8
  br label %86

86:                                               ; preds = %75, %55
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %47, %24
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
