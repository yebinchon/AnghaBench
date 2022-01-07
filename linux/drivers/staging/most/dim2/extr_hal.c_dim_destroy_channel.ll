; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim_destroy_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim_destroy_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.dim_channel = type { i64, i64, i32 }

@g = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@DIM_ERR_DRIVER_NOT_INITIALIZED = common dso_local global i32 0, align 4
@DBR_SIZE = common dso_local global i64 0, align 8
@DIM_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dim_destroy_channel(%struct.dim_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dim_channel*, align 8
  store %struct.dim_channel* %0, %struct.dim_channel** %3, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g, i32 0, i32 2), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %8 = icmp ne %struct.dim_channel* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @DIM_ERR_DRIVER_NOT_INITIALIZED, align 4
  store i32 %10, i32* %2, align 4
  br label %44

11:                                               ; preds = %6
  %12 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %13 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g, i32 0, i32 0, i32 0), align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g, i32 0, i32 1), align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @writel(i32 0, i32* %19)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g, i32 0, i32 0, i32 0), align 8
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %23 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dim2_clear_channel(i64 %24)
  %26 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %27 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DBR_SIZE, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %33 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %36 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @free_dbr(i64 %34, i32 %37)
  br label %39

39:                                               ; preds = %31, %21
  %40 = load i64, i64* @DBR_SIZE, align 8
  %41 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %42 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @DIM_NO_ERROR, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dim2_clear_channel(i64) #1

declare dso_local i32 @free_dbr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
