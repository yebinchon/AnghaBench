; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_allocate_hcams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_allocate_hcams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32*, i32, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@PMCRAID_AEN_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_instance*)* @pmcraid_allocate_hcams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_allocate_hcams(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca %struct.pmcraid_instance*, align 8
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %2, align 8
  %3 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %4 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* @PMCRAID_AEN_HDR_SIZE, align 4
  %8 = sext i32 %7 to i64
  %9 = add i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %12 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @dma_alloc_coherent(i32* %6, i32 %10, i32* %13, i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %18 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32* %16, i32** %19, align 8
  %20 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %21 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* @PMCRAID_AEN_HDR_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %29 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @dma_alloc_coherent(i32* %23, i32 %27, i32* %30, i32 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %35 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32* %33, i32** %36, align 8
  %37 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %38 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %1
  %43 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %44 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %1
  %49 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %50 = call i32 @pmcraid_release_hcams(%struct.pmcraid_instance* %49)
  br label %82

51:                                               ; preds = %42
  %52 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %53 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load i32, i32* @PMCRAID_AEN_HDR_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr i8, i8* %56, i64 %58
  %60 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %61 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i8* %59, i8** %62, align 8
  %63 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %64 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to i8*
  %68 = load i32, i32* @PMCRAID_AEN_HDR_SIZE, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %67, i64 %69
  %71 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %72 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  %74 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %75 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = call i32 @atomic_set(i32* %76, i32 0)
  %78 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %79 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = call i32 @atomic_set(i32* %80, i32 0)
  br label %82

82:                                               ; preds = %51, %48
  %83 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %84 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  br label %92

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi i32 [ %90, %88 ], [ 0, %91 ]
  ret i32 %93
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pmcraid_release_hcams(%struct.pmcraid_instance*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
