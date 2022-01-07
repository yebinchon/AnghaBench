; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_allocate_frame_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_allocate_frame_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@HP_FIRST_WORD = common dso_local global i32 0, align 4
@qman_dma_portal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"portal not available\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@pcfg = common dso_local global %struct.TYPE_3__* null, align 8
@HP_NUM_WORDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__frame_ptr = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@frame_ptr = common dso_local global i32* null, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@frame_dma = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"dma mapping failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @allocate_frame_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_frame_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @HP_FIRST_WORD, align 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @qman_dma_portal, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = call i32 @pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %63

11:                                               ; preds = %0
  %12 = load i32, i32* @qman_dma_portal, align 4
  %13 = call %struct.TYPE_3__* @qman_get_qm_portal_config(i32 %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** @pcfg, align 8
  %14 = load i32, i32* @HP_NUM_WORDS, align 4
  %15 = mul nsw i32 4, %14
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @kmalloc(i32 %15, i32 %16)
  store i32 %17, i32* @__frame_ptr, align 4
  %18 = load i32, i32* @__frame_ptr, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %1, align 4
  br label %63

23:                                               ; preds = %11
  %24 = load i32, i32* @__frame_ptr, align 4
  %25 = call i32* @PTR_ALIGN(i32 %24, i32 64)
  store i32* %25, i32** @frame_ptr, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %38, %23
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @HP_NUM_WORDS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = load i32*, i32** @frame_ptr, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @do_lfsr(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %26

41:                                               ; preds = %26
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pcfg, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** @frame_ptr, align 8
  %46 = load i32, i32* @HP_NUM_WORDS, align 4
  %47 = mul nsw i32 4, %46
  %48 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %49 = call i32 @dma_map_single(i32 %44, i32* %45, i32 %47, i32 %48)
  store i32 %49, i32* @frame_dma, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pcfg, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @frame_dma, align 4
  %54 = call i64 @dma_mapping_error(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %41
  %57 = call i32 @pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @__frame_ptr, align 4
  %59 = call i32 @kfree(i32 %58)
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %1, align 4
  br label %63

62:                                               ; preds = %41
  store i32 0, i32* %1, align 4
  br label %63

63:                                               ; preds = %62, %56, %20, %7
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local %struct.TYPE_3__* @qman_get_qm_portal_config(i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32* @PTR_ALIGN(i32, i32) #1

declare dso_local i32 @do_lfsr(i32) #1

declare dso_local i32 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
