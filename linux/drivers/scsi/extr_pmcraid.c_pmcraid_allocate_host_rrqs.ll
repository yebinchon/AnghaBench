; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_allocate_host_rrqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_allocate_host_rrqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i32, i32*, i32*, i64*, i64*, i64*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HRRQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@PMCRAID_MAX_CMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"pci_alloc failed for hrrq vector : %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_instance*)* @pmcraid_allocate_host_rrqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_allocate_host_rrqs(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %3, align 8
  %6 = load i32, i32* @HRRQ_ENTRY_SIZE, align 4
  %7 = load i32, i32* @PMCRAID_MAX_CMD, align 4
  %8 = mul nsw i32 %6, %7
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %104, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %12 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %107

15:                                               ; preds = %9
  %16 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %17 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %16, i32 0, i32 7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %22 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i64 @dma_alloc_coherent(i32* %19, i32 %20, i32* %26, i32 %27)
  %29 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %30 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 %28, i64* %34, align 8
  %35 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %36 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %35, i32 0, i32 3
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %15
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @pmcraid_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @pmcraid_release_host_rrqs(%struct.pmcraid_instance* %46, i32 %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %108

51:                                               ; preds = %15
  %52 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %53 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %52, i32 0, i32 3
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @memset(i64 %58, i32 0, i32 %59)
  %61 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %62 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %61, i32 0, i32 3
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %69 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %68, i32 0, i32 5
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 %67, i64* %73, align 8
  %74 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %75 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @PMCRAID_MAX_CMD, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = sub nsw i64 %83, 1
  %85 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %86 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %85, i32 0, i32 4
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 %84, i64* %90, align 8
  %91 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %92 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 1, i32* %96, align 4
  %97 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %98 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = call i32 @spin_lock_init(i32* %102)
  br label %104

104:                                              ; preds = %51
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %9

107:                                              ; preds = %9
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %43
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pmcraid_err(i8*, i32) #1

declare dso_local i32 @pmcraid_release_host_rrqs(%struct.pmcraid_instance*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
