; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_port_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_port_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns_dma_data = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdw_cdns_dma_data*)* @intel_port_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_port_cleanup(%struct.sdw_cdns_dma_data* %0) #0 {
  %2 = alloca %struct.sdw_cdns_dma_data*, align 8
  %3 = alloca i32, align 4
  store %struct.sdw_cdns_dma_data* %0, %struct.sdw_cdns_dma_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %53, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %2, align 8
  %7 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %56

10:                                               ; preds = %4
  %11 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %2, align 8
  %12 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %13, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %10
  %20 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %2, align 8
  %21 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %2, align 8
  %31 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %37, align 8
  %38 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %2, align 8
  %39 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %2, align 8
  %47 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %50
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %51, align 8
  br label %52

52:                                               ; preds = %19, %10
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %4

56:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
