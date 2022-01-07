; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_vma_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_vma_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, %struct.page*, %struct.TYPE_6__* }
%struct.page = type { i32 }
%struct.TYPE_6__ = type { %struct.uio_device* }
%struct.uio_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@UIO_MEM_LOGICAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @uio_vma_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_vma_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.uio_device*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.uio_device*, %struct.uio_device** %12, align 8
  store %struct.uio_device* %13, %struct.uio_device** %3, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %15 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %18 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %22, i32* %7, align 4
  br label %78

23:                                               ; preds = %1
  %24 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %25 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i32 @uio_find_mem_index(%struct.TYPE_6__* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %31, i32* %7, align 4
  br label %78

32:                                               ; preds = %23
  %33 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %34 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %5, align 8
  %41 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %42 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr i8, i8* %51, i64 %52
  store i8* %53, i8** %6, align 8
  %54 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %55 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @UIO_MEM_LOGICAL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %32
  %67 = load i8*, i8** %6, align 8
  %68 = call %struct.page* @virt_to_page(i8* %67)
  store %struct.page* %68, %struct.page** %4, align 8
  br label %72

69:                                               ; preds = %32
  %70 = load i8*, i8** %6, align 8
  %71 = call %struct.page* @vmalloc_to_page(i8* %70)
  store %struct.page* %71, %struct.page** %4, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.page*, %struct.page** %4, align 8
  %74 = call i32 @get_page(%struct.page* %73)
  %75 = load %struct.page*, %struct.page** %4, align 8
  %76 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %77 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %76, i32 0, i32 1
  store %struct.page* %75, %struct.page** %77, align 8
  br label %78

78:                                               ; preds = %72, %30, %21
  %79 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %80 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uio_find_mem_index(%struct.TYPE_6__*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
