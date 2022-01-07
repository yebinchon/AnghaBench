; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_free_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_free_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_range_info = type { i32, i32, %struct.knav_acc_channel*, %struct.knav_device*, %struct.knav_acc_info }
%struct.knav_acc_channel = type { i32*, i32* }
%struct.knav_device = type { i32 }
%struct.knav_acc_info = type { i32 }

@RANGE_MULTI_QUEUE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_range_info*)* @knav_acc_free_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_acc_free_range(%struct.knav_range_info* %0) #0 {
  %2 = alloca %struct.knav_range_info*, align 8
  %3 = alloca %struct.knav_device*, align 8
  %4 = alloca %struct.knav_acc_channel*, align 8
  %5 = alloca %struct.knav_acc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.knav_range_info* %0, %struct.knav_range_info** %2, align 8
  %8 = load %struct.knav_range_info*, %struct.knav_range_info** %2, align 8
  %9 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %8, i32 0, i32 3
  %10 = load %struct.knav_device*, %struct.knav_device** %9, align 8
  store %struct.knav_device* %10, %struct.knav_device** %3, align 8
  %11 = load %struct.knav_range_info*, %struct.knav_range_info** %2, align 8
  %12 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %11, i32 0, i32 4
  store %struct.knav_acc_info* %12, %struct.knav_acc_info** %5, align 8
  %13 = load %struct.knav_range_info*, %struct.knav_range_info** %2, align 8
  %14 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RANGE_MULTI_QUEUE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.knav_range_info*, %struct.knav_range_info** %2, align 8
  %22 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %19
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %66, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %69

29:                                               ; preds = %25
  %30 = load %struct.knav_range_info*, %struct.knav_range_info** %2, align 8
  %31 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %30, i32 0, i32 2
  %32 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %32, i64 %34
  store %struct.knav_acc_channel* %35, %struct.knav_acc_channel** %4, align 8
  %36 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %4, align 8
  %37 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  br label %66

43:                                               ; preds = %29
  %44 = load %struct.knav_device*, %struct.knav_device** %3, align 8
  %45 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %4, align 8
  %48 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.knav_acc_info*, %struct.knav_acc_info** %5, align 8
  %53 = getelementptr inbounds %struct.knav_acc_info, %struct.knav_acc_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %56 = call i32 @dma_unmap_single(i32 %46, i32 %51, i32 %54, i32 %55)
  %57 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %4, align 8
  %58 = getelementptr inbounds %struct.knav_acc_channel, %struct.knav_acc_channel* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.knav_acc_info*, %struct.knav_acc_info** %5, align 8
  %63 = getelementptr inbounds %struct.knav_acc_info, %struct.knav_acc_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @free_pages_exact(i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %43, %42
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %25

69:                                               ; preds = %25
  %70 = load %struct.knav_range_info*, %struct.knav_range_info** %2, align 8
  %71 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %70, i32 0, i32 3
  %72 = load %struct.knav_device*, %struct.knav_device** %71, align 8
  %73 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.knav_range_info*, %struct.knav_range_info** %2, align 8
  %76 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %75, i32 0, i32 2
  %77 = load %struct.knav_acc_channel*, %struct.knav_acc_channel** %76, align 8
  %78 = call i32 @devm_kfree(i32 %74, %struct.knav_acc_channel* %77)
  ret i32 0
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @free_pages_exact(i32, i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.knav_acc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
