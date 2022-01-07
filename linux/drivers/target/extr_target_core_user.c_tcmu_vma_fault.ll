; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_vma_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_vma_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, %struct.page*, %struct.TYPE_4__* }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { %struct.tcmu_dev* }
%struct.tcmu_dev = type { i64, %struct.uio_info }
%struct.uio_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@DATA_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @tcmu_vma_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_vma_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.tcmu_dev*, align 8
  %5 = alloca %struct.uio_info*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %11 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %12 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.tcmu_dev*, %struct.tcmu_dev** %14, align 8
  store %struct.tcmu_dev* %15, %struct.tcmu_dev** %4, align 8
  %16 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %17 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %16, i32 0, i32 1
  store %struct.uio_info* %17, %struct.uio_info** %5, align 8
  %18 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %19 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @tcmu_find_mem_index(%struct.TYPE_4__* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %25, i32* %2, align 4
  br label %76

26:                                               ; preds = %1
  %27 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %28 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %37 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %26
  %41 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %42 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr i8, i8* %49, i64 %50
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call %struct.page* @vmalloc_to_page(i8* %52)
  store %struct.page* %53, %struct.page** %6, align 8
  br label %70

54:                                               ; preds = %26
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %57 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %55, %58
  %60 = load i64, i64* @DATA_BLOCK_SIZE, align 8
  %61 = udiv i64 %59, %60
  store i64 %61, i64* %10, align 8
  %62 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call %struct.page* @tcmu_try_get_block_page(%struct.tcmu_dev* %62, i64 %63)
  store %struct.page* %64, %struct.page** %6, align 8
  %65 = load %struct.page*, %struct.page** %6, align 8
  %66 = icmp ne %struct.page* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %54
  %68 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %68, i32* %2, align 4
  br label %76

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %40
  %71 = load %struct.page*, %struct.page** %6, align 8
  %72 = call i32 @get_page(%struct.page* %71)
  %73 = load %struct.page*, %struct.page** %6, align 8
  %74 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %75 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %74, i32 0, i32 1
  store %struct.page* %73, %struct.page** %75, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %70, %67, %24
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @tcmu_find_mem_index(%struct.TYPE_4__*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local %struct.page* @tcmu_try_get_block_page(%struct.tcmu_dev*, i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
