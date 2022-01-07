; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.mbo = type { i64, i32 }
%struct.dim2_hdm = type { %struct.hdm_channel* }
%struct.hdm_channel = type { i32, i32 }

@DMA_CHANNELS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@dim_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32, %struct.mbo*)* @enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enqueue(%struct.most_interface* %0, i32 %1, %struct.mbo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.most_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbo*, align 8
  %8 = alloca %struct.dim2_hdm*, align 8
  %9 = alloca %struct.hdm_channel*, align 8
  %10 = alloca i64, align 8
  store %struct.most_interface* %0, %struct.most_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mbo* %2, %struct.mbo** %7, align 8
  %11 = load %struct.most_interface*, %struct.most_interface** %5, align 8
  %12 = call %struct.dim2_hdm* @iface_to_hdm(%struct.most_interface* %11)
  store %struct.dim2_hdm* %12, %struct.dim2_hdm** %8, align 8
  %13 = load %struct.dim2_hdm*, %struct.dim2_hdm** %8, align 8
  %14 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %13, i32 0, i32 0
  %15 = load %struct.hdm_channel*, %struct.hdm_channel** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %15, i64 %17
  store %struct.hdm_channel* %18, %struct.hdm_channel** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DMA_CHANNELS, align 4
  %24 = icmp sge i32 %22, %23
  br label %25

25:                                               ; preds = %21, %3
  %26 = phi i1 [ true, %3 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.hdm_channel*, %struct.hdm_channel** %9, align 8
  %30 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %56

36:                                               ; preds = %25
  %37 = load %struct.mbo*, %struct.mbo** %7, align 8
  %38 = getelementptr inbounds %struct.mbo, %struct.mbo* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %56

44:                                               ; preds = %36
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @spin_lock_irqsave(i32* @dim_lock, i64 %45)
  %47 = load %struct.mbo*, %struct.mbo** %7, align 8
  %48 = getelementptr inbounds %struct.mbo, %struct.mbo* %47, i32 0, i32 1
  %49 = load %struct.hdm_channel*, %struct.hdm_channel** %9, align 8
  %50 = getelementptr inbounds %struct.hdm_channel, %struct.hdm_channel* %49, i32 0, i32 0
  %51 = call i32 @list_add_tail(i32* %48, i32* %50)
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* @dim_lock, i64 %52)
  %54 = load %struct.hdm_channel*, %struct.hdm_channel** %9, align 8
  %55 = call i32 @try_start_dim_transfer(%struct.hdm_channel* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %44, %41, %33
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.dim2_hdm* @iface_to_hdm(%struct.most_interface*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @try_start_dim_transfer(%struct.hdm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
