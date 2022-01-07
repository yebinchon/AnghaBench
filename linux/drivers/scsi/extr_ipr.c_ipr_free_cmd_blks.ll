; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_free_cmd_blks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_free_cmd_blks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i32*, i32**, i32** }

@IPR_NUM_CMD_BLKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*)* @ipr_free_cmd_blks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_free_cmd_blks(%struct.ipr_ioa_cfg* %0) #0 {
  %2 = alloca %struct.ipr_ioa_cfg*, align 8
  %3 = alloca i32, align 4
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %2, align 8
  %4 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %5 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %4, i32 0, i32 2
  %6 = load i32**, i32*** %5, align 8
  %7 = icmp ne i32** %6, null
  br i1 %7, label %8, label %52

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %48, %8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @IPR_NUM_CMD_BLKS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %15 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %14, i32 0, i32 2
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %13
  %23 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %24 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %27 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %26, i32 0, i32 2
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %34 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @dma_pool_free(i32* %25, i32* %32, i32* %39)
  br label %41

41:                                               ; preds = %22, %13
  %42 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %43 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %42, i32 0, i32 2
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %9

51:                                               ; preds = %9
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %54 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %59 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @dma_pool_destroy(i32* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %64 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %63, i32 0, i32 2
  %65 = load i32**, i32*** %64, align 8
  %66 = call i32 @kfree(i32** %65)
  %67 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %68 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = call i32 @kfree(i32** %69)
  %71 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %72 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %71, i32 0, i32 2
  store i32** null, i32*** %72, align 8
  %73 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %74 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %73, i32 0, i32 1
  store i32** null, i32*** %74, align 8
  %75 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %76 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  ret void
}

declare dso_local i32 @dma_pool_free(i32*, i32*, i32*) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
