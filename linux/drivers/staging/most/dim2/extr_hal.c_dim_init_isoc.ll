; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim_init_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim_init_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dim_channel = type { i32, i64, i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DIM_ERR_DRIVER_NOT_INITIALIZED = common dso_local global i32 0, align 4
@DIM_INIT_ERR_CHANNEL_ADDRESS = common dso_local global i32 0, align 4
@DIM_ERR_BAD_CONFIG = common dso_local global i32 0, align 4
@ISOC_DBR_FACTOR = common dso_local global i32 0, align 4
@DBR_SIZE = common dso_local global i64 0, align 8
@DIM_INIT_ERR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CAT_CT_VAL_ISOC = common dso_local global i32 0, align 4
@DIM_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dim_init_isoc(%struct.dim_channel* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dim_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dim_channel* %0, %struct.dim_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %14 = icmp ne %struct.dim_channel* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %4
  %16 = load i32, i32* @DIM_ERR_DRIVER_NOT_INITIALIZED, align 4
  store i32 %16, i32* %5, align 4
  br label %74

17:                                               ; preds = %12
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @check_channel_address(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @DIM_INIT_ERR_CHANNEL_ADDRESS, align 4
  store i32 %22, i32* %5, align 4
  br label %74

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @check_packet_length(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @DIM_ERR_BAD_CONFIG, align 4
  store i32 %28, i32* %5, align 4
  br label %74

29:                                               ; preds = %23
  %30 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %31 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ISOC_DBR_FACTOR, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %39 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %42 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @alloc_dbr(i32 %43)
  %45 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %46 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %48 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DBR_SIZE, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* @DIM_INIT_ERR_OUT_OF_MEMORY, align 4
  store i32 %53, i32* %5, align 4
  br label %74

54:                                               ; preds = %40
  %55 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sdiv i32 %56, 2
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @isoc_init(%struct.dim_channel* %55, i32 %57, i32 %58)
  %60 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %61 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CAT_CT_VAL_ISOC, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %66 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.dim_channel*, %struct.dim_channel** %6, align 8
  %69 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @dim2_configure_channel(i32 %62, i32 %63, i32 %64, i64 %67, i32 %70, i32 %71)
  %73 = load i32, i32* @DIM_NO_ERROR, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %54, %52, %27, %21, %15
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @check_channel_address(i32) #1

declare dso_local i32 @check_packet_length(i32) #1

declare dso_local i64 @alloc_dbr(i32) #1

declare dso_local i32 @isoc_init(%struct.dim_channel*, i32, i32) #1

declare dso_local i32 @dim2_configure_channel(i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
