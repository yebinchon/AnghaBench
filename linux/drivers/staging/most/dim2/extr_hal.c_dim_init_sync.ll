; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim_init_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim_init_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.dim_channel = type { i32, i64, i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DIM_ERR_DRIVER_NOT_INITIALIZED = common dso_local global i32 0, align 4
@DIM_INIT_ERR_CHANNEL_ADDRESS = common dso_local global i32 0, align 4
@DIM_ERR_BAD_CONFIG = common dso_local global i32 0, align 4
@DBR_SIZE = common dso_local global i64 0, align 8
@DIM_INIT_ERR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CAT_CT_VAL_SYNC = common dso_local global i32 0, align 4
@DIM_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dim_init_sync(%struct.dim_channel* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dim_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dim_channel* %0, %struct.dim_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %12 = add nsw i32 %11, 2
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %17 = icmp ne %struct.dim_channel* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @DIM_ERR_DRIVER_NOT_INITIALIZED, align 4
  store i32 %19, i32* %5, align 4
  br label %83

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @check_channel_address(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @DIM_INIT_ERR_CHANNEL_ADDRESS, align 4
  store i32 %25, i32* %5, align 4
  br label %83

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @check_bytes_per_frame(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @DIM_ERR_BAD_CONFIG, align 4
  store i32 %31, i32* %5, align 4
  br label %83

32:                                               ; preds = %26
  %33 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %34 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = shl i32 %38, %39
  %41 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %42 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %45 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @alloc_dbr(i32 %46)
  %48 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %49 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %51 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DBR_SIZE, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @DIM_INIT_ERR_OUT_OF_MEMORY, align 4
  store i32 %56, i32* %5, align 4
  br label %83

57:                                               ; preds = %43
  %58 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sdiv i32 %59, 2
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @sync_init(%struct.dim_channel* %58, i32 %60, i32 %61)
  %63 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %64 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %67 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dim2_clear_dbr(i64 %65, i32 %68)
  %70 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %71 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CAT_CT_VAL_SYNC, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %76 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %79 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dim2_configure_channel(i32 %72, i32 %73, i32 %74, i64 %77, i32 %80, i32 0)
  %82 = load i32, i32* @DIM_NO_ERROR, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %57, %55, %30, %24, %18
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @check_channel_address(i32) #1

declare dso_local i32 @check_bytes_per_frame(i32) #1

declare dso_local i64 @alloc_dbr(i32) #1

declare dso_local i32 @sync_init(%struct.dim_channel*, i32, i32) #1

declare dso_local i32 @dim2_clear_dbr(i64, i32) #1

declare dso_local i32 @dim2_configure_channel(i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
