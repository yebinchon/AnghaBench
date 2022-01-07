; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iommu_iova_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iommu_iova_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.vfio_iova = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i8*, i8*)* @vfio_iommu_iova_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_iommu_iova_insert(%struct.list_head* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vfio_iova*, align 8
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vfio_iova* @kmalloc(i32 24, i32 %9)
  store %struct.vfio_iova* %10, %struct.vfio_iova** %8, align 8
  %11 = load %struct.vfio_iova*, %struct.vfio_iova** %8, align 8
  %12 = icmp ne %struct.vfio_iova* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load %struct.vfio_iova*, %struct.vfio_iova** %8, align 8
  %18 = getelementptr inbounds %struct.vfio_iova, %struct.vfio_iova* %17, i32 0, i32 0
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.vfio_iova*, %struct.vfio_iova** %8, align 8
  %22 = getelementptr inbounds %struct.vfio_iova, %struct.vfio_iova* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.vfio_iova*, %struct.vfio_iova** %8, align 8
  %25 = getelementptr inbounds %struct.vfio_iova, %struct.vfio_iova* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.vfio_iova*, %struct.vfio_iova** %8, align 8
  %27 = getelementptr inbounds %struct.vfio_iova, %struct.vfio_iova* %26, i32 0, i32 0
  %28 = load %struct.list_head*, %struct.list_head** %5, align 8
  %29 = call i32 @list_add_tail(i32* %27, %struct.list_head* %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %16, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.vfio_iova* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
