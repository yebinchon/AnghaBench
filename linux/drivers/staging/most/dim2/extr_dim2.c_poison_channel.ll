; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_poison_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_poison_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.dim2_hdm = type { i32, %struct.hdm_channel* }
%struct.hdm_channel = type { i32, i64*, i32, i32, i32, i32 }

@DMA_CHANNELS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@dim2_tasklet = common dso_local global i32 0, align 4
@dim_lock = common dso_local global i32 0, align 4
@DIM_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"HAL Failed to close channel %s\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32)* @poison_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poison_channel(%struct.most_interface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.most_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dim2_hdm*, align 8
  %7 = alloca %struct.hdm_channel*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.most_interface* %0, %struct.most_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.most_interface*, %struct.most_interface** %4, align 8
  %12 = call %struct.dim2_hdm* @iface_to_hdm(%struct.most_interface* %11)
  store %struct.dim2_hdm* %12, %struct.dim2_hdm** %6, align 8
  %13 = load %struct.dim2_hdm*, %struct.dim2_hdm** %6, align 8
  %14 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %13, i32 0, i32 1
  %15 = load %struct.hdm_channel*, %struct.hdm_channel** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %15, i64 %17
  store %struct.hdm_channel* %18, %struct.hdm_channel** %7, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @DMA_CHANNELS, align 4
  %24 = icmp sge i32 %22, %23
  br label %25

25:                                               ; preds = %21, %2
  %26 = phi i1 [ true, %2 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.hdm_channel*, %struct.hdm_channel** %7, align 8
  %30 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %84

36:                                               ; preds = %25
  %37 = call i32 @tasklet_disable(i32* @dim2_tasklet)
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_lock_irqsave(i32* @dim_lock, i64 %38)
  %40 = load %struct.hdm_channel*, %struct.hdm_channel** %7, align 8
  %41 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %40, i32 0, i32 5
  %42 = call i64 @dim_destroy_channel(i32* %41)
  store i64 %42, i64* %9, align 8
  %43 = load %struct.hdm_channel*, %struct.hdm_channel** %7, align 8
  %44 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.dim2_hdm*, %struct.dim2_hdm** %6, align 8
  %47 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load %struct.dim2_hdm*, %struct.dim2_hdm** %6, align 8
  %52 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %36
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* @dim_lock, i64 %54)
  %56 = call i32 @tasklet_enable(i32* @dim2_tasklet)
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @DIM_NO_ERROR, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.hdm_channel*, %struct.hdm_channel** %7, align 8
  %62 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EFAULT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.hdm_channel*, %struct.hdm_channel** %7, align 8
  %69 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %68, i32 0, i32 3
  %70 = call i32 @complete_all_mbos(i32* %69)
  %71 = load %struct.hdm_channel*, %struct.hdm_channel** %7, align 8
  %72 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %71, i32 0, i32 2
  %73 = call i32 @complete_all_mbos(i32* %72)
  %74 = load %struct.hdm_channel*, %struct.hdm_channel** %7, align 8
  %75 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load %struct.hdm_channel*, %struct.hdm_channel** %7, align 8
  %80 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %67
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %33
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.dim2_hdm* @iface_to_hdm(%struct.most_interface*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @dim_destroy_channel(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @complete_all_mbos(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
