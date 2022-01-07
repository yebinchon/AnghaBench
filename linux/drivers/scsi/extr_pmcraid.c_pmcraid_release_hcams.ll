; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_release_hcams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_release_hcams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32*, i32* }

@PMCRAID_AEN_HDR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_instance*)* @pmcraid_release_hcams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_release_hcams(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca %struct.pmcraid_instance*, align 8
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %2, align 8
  %3 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %4 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %10 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* @PMCRAID_AEN_HDR_SIZE, align 8
  %14 = add i64 %13, 4
  %15 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %16 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %20 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @dma_free_coherent(i32* %12, i64 %14, i32* %18, i64 %22)
  %24 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %25 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %28 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %31 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %8, %1
  %34 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %35 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %64

39:                                               ; preds = %33
  %40 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %41 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* @PMCRAID_AEN_HDR_SIZE, align 8
  %45 = add i64 %44, 4
  %46 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %47 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %51 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dma_free_coherent(i32* %43, i64 %45, i32* %49, i64 %53)
  %55 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %56 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %59 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %62 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %39, %33
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
