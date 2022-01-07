; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_alloc_sglist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_alloc_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_sglist = type { i32, i32 }

@PMCRAID_MAX_IOADLS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pmcraid_sglist* (i32)* @pmcraid_alloc_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pmcraid_sglist* @pmcraid_alloc_sglist(i32 %0) #0 {
  %2 = alloca %struct.pmcraid_sglist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmcraid_sglist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PMCRAID_MAX_IOADLS, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sdiv i32 %7, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @get_order(i32 %14)
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ 0, %16 ]
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.pmcraid_sglist* @kzalloc(i32 8, i32 %19)
  store %struct.pmcraid_sglist* %20, %struct.pmcraid_sglist** %4, align 8
  %21 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %4, align 8
  %22 = icmp eq %struct.pmcraid_sglist* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.pmcraid_sglist* null, %struct.pmcraid_sglist** %2, align 8
  br label %39

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %4, align 8
  %27 = getelementptr inbounds %struct.pmcraid_sglist, %struct.pmcraid_sglist* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load i32, i32* @GFP_DMA, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @__GFP_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %4, align 8
  %36 = getelementptr inbounds %struct.pmcraid_sglist, %struct.pmcraid_sglist* %35, i32 0, i32 1
  %37 = call i32 @sgl_alloc_order(i32 %28, i32 %29, i32 0, i32 %34, i32* %36)
  %38 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %4, align 8
  store %struct.pmcraid_sglist* %38, %struct.pmcraid_sglist** %2, align 8
  br label %39

39:                                               ; preds = %24, %23
  %40 = load %struct.pmcraid_sglist*, %struct.pmcraid_sglist** %2, align 8
  ret %struct.pmcraid_sglist* %40
}

declare dso_local i32 @get_order(i32) #1

declare dso_local %struct.pmcraid_sglist* @kzalloc(i32, i32) #1

declare dso_local i32 @sgl_alloc_order(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
