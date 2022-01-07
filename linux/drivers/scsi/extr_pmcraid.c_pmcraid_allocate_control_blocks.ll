; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_allocate_control_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_allocate_control_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { %struct.TYPE_6__**, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"pmcraid_control_pool_%d\00", align 1
@PMCRAID_IOARCB_ALIGNMENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PMCRAID_MAX_CMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_instance*)* @pmcraid_allocate_control_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_allocate_control_blocks(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %3, align 8
  %5 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %6 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %9 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %8, i32 0, i32 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sprintf(i32 %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %15 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %18 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* @PMCRAID_IOARCB_ALIGNMENT, align 4
  %22 = call i32 @dma_pool_create(i32 %16, i32* %20, i32 4, i32 %21, i32 0)
  %23 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %24 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %26 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %90

32:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %86, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PMCRAID_MAX_CMD, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %89

37:                                               ; preds = %33
  %38 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %39 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %43 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %44, i64 %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = call i32 @dma_pool_alloc(i32 %40, i32 %41, i32* %49)
  %51 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %52 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %50, i32* %58, align 4
  %59 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %60 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %37
  %70 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @pmcraid_release_control_blocks(%struct.pmcraid_instance* %70, i32 %71)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %90

75:                                               ; preds = %37
  %76 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %77 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %78, i64 %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @memset(i32 %84, i32 0, i32 4)
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %33

89:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %69, %29
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @dma_pool_create(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @pmcraid_release_control_blocks(%struct.pmcraid_instance*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
