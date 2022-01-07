; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_pruss.c_pruss_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_pruss.c_pruss_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.uio_pruss_dev = type { i32, %struct.uio_pruss_dev*, i64, i32, i32, i64, i32, %struct.uio_pruss_dev* }
%struct.uio_info = type { i32, %struct.uio_info*, i64, i32, i32, i64, i32, %struct.uio_info* }

@MAX_PRUSS_EVT = common dso_local global i32 0, align 4
@extram_pool_sz = common dso_local global i32 0, align 4
@sram_pool_sz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.uio_pruss_dev*)* @pruss_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pruss_cleanup(%struct.device* %0, %struct.uio_pruss_dev* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.uio_pruss_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uio_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.uio_pruss_dev* %1, %struct.uio_pruss_dev** %4, align 8
  %7 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %4, align 8
  %8 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %7, i32 0, i32 1
  %9 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %8, align 8
  %10 = bitcast %struct.uio_pruss_dev* %9 to %struct.uio_info*
  store %struct.uio_info* %10, %struct.uio_info** %6, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAX_PRUSS_EVT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %17 = bitcast %struct.uio_info* %16 to %struct.uio_pruss_dev*
  %18 = call i32 @uio_unregister_device(%struct.uio_pruss_dev* %17)
  %19 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %20 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %19, i32 0, i32 7
  %21 = load %struct.uio_info*, %struct.uio_info** %20, align 8
  %22 = bitcast %struct.uio_info* %21 to %struct.uio_pruss_dev*
  %23 = call i32 @kfree(%struct.uio_pruss_dev* %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %28 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %27, i32 1
  store %struct.uio_info* %28, %struct.uio_info** %6, align 8
  br label %11

29:                                               ; preds = %11
  %30 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %4, align 8
  %31 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @iounmap(i32 %32)
  %34 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %4, align 8
  %35 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load i32, i32* @extram_pool_sz, align 4
  %41 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %4, align 8
  %42 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %4, align 8
  %45 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dma_free_coherent(%struct.device* %39, i32 %40, i64 %43, i32 %46)
  br label %48

48:                                               ; preds = %38, %29
  %49 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %4, align 8
  %50 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %4, align 8
  %55 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %4, align 8
  %58 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @sram_pool_sz, align 4
  %61 = call i32 @gen_pool_free(i32 %56, i64 %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %48
  %63 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %4, align 8
  %64 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %63, i32 0, i32 1
  %65 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %64, align 8
  %66 = call i32 @kfree(%struct.uio_pruss_dev* %65)
  %67 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %4, align 8
  %68 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @clk_disable(i32 %69)
  %71 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %4, align 8
  %72 = getelementptr inbounds %struct.uio_pruss_dev, %struct.uio_pruss_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clk_put(i32 %73)
  %75 = load %struct.uio_pruss_dev*, %struct.uio_pruss_dev** %4, align 8
  %76 = call i32 @kfree(%struct.uio_pruss_dev* %75)
  ret void
}

declare dso_local i32 @uio_unregister_device(%struct.uio_pruss_dev*) #1

declare dso_local i32 @kfree(%struct.uio_pruss_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @gen_pool_free(i32, i64, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
