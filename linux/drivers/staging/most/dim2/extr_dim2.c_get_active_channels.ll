; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_get_active_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_get_active_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim2_hdm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dim_channel, i64 }
%struct.dim_channel = type { i32 }

@DMA_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dim_channel** (%struct.dim2_hdm*, %struct.dim_channel**)* @get_active_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dim_channel** @get_active_channels(%struct.dim2_hdm* %0, %struct.dim_channel** %1) #0 {
  %3 = alloca %struct.dim2_hdm*, align 8
  %4 = alloca %struct.dim_channel**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dim2_hdm* %0, %struct.dim2_hdm** %3, align 8
  store %struct.dim_channel** %1, %struct.dim_channel*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @DMA_CHANNELS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %7
  %12 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %13 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %11
  %22 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %23 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.dim_channel**, %struct.dim_channel*** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.dim_channel*, %struct.dim_channel** %29, i64 %32
  store %struct.dim_channel* %28, %struct.dim_channel** %33, align 8
  br label %34

34:                                               ; preds = %21, %11
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %7

38:                                               ; preds = %7
  %39 = load %struct.dim_channel**, %struct.dim_channel*** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds %struct.dim_channel*, %struct.dim_channel** %39, i64 %42
  store %struct.dim_channel* null, %struct.dim_channel** %43, align 8
  %44 = load %struct.dim_channel**, %struct.dim_channel*** %4, align 8
  ret %struct.dim_channel** %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
