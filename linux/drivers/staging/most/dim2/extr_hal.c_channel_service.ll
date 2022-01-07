; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_channel_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_channel_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim_channel = type { i32, %struct.int_ch_state }
%struct.int_ch_state = type { i64, i64, i64 }

@DIM_ERR_UNDERFLOW = common dso_local global i32 0, align 4
@DIM_NO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dim_channel*)* @channel_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_service(%struct.dim_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dim_channel*, align 8
  %4 = alloca %struct.int_ch_state*, align 8
  store %struct.dim_channel* %0, %struct.dim_channel** %3, align 8
  %5 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %6 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %5, i32 0, i32 1
  store %struct.int_ch_state* %6, %struct.int_ch_state** %4, align 8
  %7 = load %struct.int_ch_state*, %struct.int_ch_state** %4, align 8
  %8 = getelementptr inbounds %struct.int_ch_state, %struct.int_ch_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.int_ch_state*, %struct.int_ch_state** %4, align 8
  %11 = getelementptr inbounds %struct.int_ch_state, %struct.int_ch_state* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.int_ch_state*, %struct.int_ch_state** %4, align 8
  %16 = getelementptr inbounds %struct.int_ch_state, %struct.int_ch_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.int_ch_state*, %struct.int_ch_state** %4, align 8
  %20 = getelementptr inbounds %struct.int_ch_state, %struct.int_ch_state* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @DIM_ERR_UNDERFLOW, align 4
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %14
  %26 = load %struct.int_ch_state*, %struct.int_ch_state** %4, align 8
  %27 = getelementptr inbounds %struct.int_ch_state, %struct.int_ch_state* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %31 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %25, %1
  %35 = load i32, i32* @DIM_NO_ERROR, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %23
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
