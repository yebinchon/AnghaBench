; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_init_ctrl_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_init_ctrl_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dim_channel = type { i64, i64, i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DIM_ERR_DRIVER_NOT_INITIALIZED = common dso_local global i32 0, align 4
@DIM_INIT_ERR_CHANNEL_ADDRESS = common dso_local global i32 0, align 4
@DBR_BLOCK_SIZE = common dso_local global i32 0, align 4
@DBR_SIZE = common dso_local global i64 0, align 8
@DIM_INIT_ERR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@DIM_NO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dim_channel*, i32, i32, i32, i32)* @init_ctrl_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_ctrl_async(%struct.dim_channel* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dim_channel* %0, %struct.dim_channel** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load %struct.dim_channel*, %struct.dim_channel** %7, align 8
  %16 = icmp ne %struct.dim_channel* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %5
  %18 = load i32, i32* @DIM_ERR_DRIVER_NOT_INITIALIZED, align 4
  store i32 %18, i32* %6, align 4
  br label %68

19:                                               ; preds = %14
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @check_channel_address(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @DIM_INIT_ERR_CHANNEL_ADDRESS, align 4
  store i32 %24, i32* %6, align 4
  br label %68

25:                                               ; preds = %19
  %26 = load %struct.dim_channel*, %struct.dim_channel** %7, align 8
  %27 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @DBR_BLOCK_SIZE, align 4
  %33 = call i64 @ROUND_UP_TO(i32 %31, i32 %32)
  %34 = load %struct.dim_channel*, %struct.dim_channel** %7, align 8
  %35 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.dim_channel*, %struct.dim_channel** %7, align 8
  %38 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @alloc_dbr(i64 %39)
  %41 = load %struct.dim_channel*, %struct.dim_channel** %7, align 8
  %42 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.dim_channel*, %struct.dim_channel** %7, align 8
  %44 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DBR_SIZE, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* @DIM_INIT_ERR_OUT_OF_MEMORY, align 4
  store i32 %49, i32* %6, align 4
  br label %68

50:                                               ; preds = %36
  %51 = load %struct.dim_channel*, %struct.dim_channel** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sdiv i32 %52, 2
  %54 = call i32 @channel_init(%struct.dim_channel* %51, i32 %53)
  %55 = load %struct.dim_channel*, %struct.dim_channel** %7, align 8
  %56 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.dim_channel*, %struct.dim_channel** %7, align 8
  %61 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.dim_channel*, %struct.dim_channel** %7, align 8
  %64 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dim2_configure_channel(i32 %57, i32 %58, i32 %59, i64 %62, i64 %65, i32 0)
  %67 = load i32, i32* @DIM_NO_ERROR, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %50, %48, %23, %17
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @check_channel_address(i32) #1

declare dso_local i64 @ROUND_UP_TO(i32, i32) #1

declare dso_local i64 @alloc_dbr(i64) #1

declare dso_local i32 @channel_init(%struct.dim_channel*, i32) #1

declare dso_local i32 @dim2_configure_channel(i32, i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
