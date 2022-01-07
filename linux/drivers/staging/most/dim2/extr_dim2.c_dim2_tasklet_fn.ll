; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_dim2_tasklet_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_dim2_tasklet_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim2_hdm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_CHANNELS = common dso_local global i32 0, align 4
@dim_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dim2_tasklet_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dim2_tasklet_fn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dim2_hdm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.dim2_hdm*
  store %struct.dim2_hdm* %7, %struct.dim2_hdm** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %51, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DMA_CHANNELS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  %13 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %14 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %51

23:                                               ; preds = %12
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @dim_lock, i64 %24)
  %26 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %27 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @dim_service_channel(i32* %32)
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @dim_lock, i64 %34)
  %36 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @service_done_flag(%struct.dim2_hdm* %36, i32 %37)
  br label %39

39:                                               ; preds = %49, %23
  %40 = load %struct.dim2_hdm*, %struct.dim2_hdm** %3, align 8
  %41 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = call i32 @try_start_dim_transfer(%struct.TYPE_2__* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %39

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %22
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %8

54:                                               ; preds = %8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dim_service_channel(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @service_done_flag(%struct.dim2_hdm*, i32) #1

declare dso_local i32 @try_start_dim_transfer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
