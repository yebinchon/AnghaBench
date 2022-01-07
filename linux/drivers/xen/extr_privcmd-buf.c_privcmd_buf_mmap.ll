; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd-buf.c_privcmd_buf_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd-buf.c_privcmd_buf_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.privcmd_buf_private* }
%struct.privcmd_buf_private = type { i32, i32 }
%struct.vm_area_struct = type { i32, %struct.privcmd_buf_vma_private*, i32* }
%struct.privcmd_buf_vma_private = type { i64, i32, i32*, i32, %struct.privcmd_buf_private* }

@VM_SHARED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pages = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@privcmd_buf_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @privcmd_buf_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @privcmd_buf_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.privcmd_buf_private*, align 8
  %7 = alloca %struct.privcmd_buf_vma_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.privcmd_buf_private*, %struct.privcmd_buf_private** %12, align 8
  store %struct.privcmd_buf_private* %13, %struct.privcmd_buf_private** %6, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = call i64 @vma_pages(%struct.vm_area_struct* %14)
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VM_SHARED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %125

25:                                               ; preds = %2
  %26 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %7, align 8
  %27 = load i32, i32* @pages, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @struct_size(%struct.privcmd_buf_vma_private* %26, i32 %27, i64 %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.privcmd_buf_vma_private* @kzalloc(i32 %29, i32 %30)
  store %struct.privcmd_buf_vma_private* %31, %struct.privcmd_buf_vma_private** %7, align 8
  %32 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %7, align 8
  %33 = icmp ne %struct.privcmd_buf_vma_private* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %125

37:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %68, %37
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* %8, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = load i32, i32* @__GFP_ZERO, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @alloc_page(i32 %46)
  %48 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %7, align 8
  %49 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %7, align 8
  %55 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %43
  br label %71

63:                                               ; preds = %43
  %64 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %7, align 8
  %65 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %38

71:                                               ; preds = %62, %38
  %72 = load %struct.privcmd_buf_private*, %struct.privcmd_buf_private** %6, align 8
  %73 = getelementptr inbounds %struct.privcmd_buf_private, %struct.privcmd_buf_private* %72, i32 0, i32 0
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.privcmd_buf_private*, %struct.privcmd_buf_private** %6, align 8
  %76 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %7, align 8
  %77 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %76, i32 0, i32 4
  store %struct.privcmd_buf_private* %75, %struct.privcmd_buf_private** %77, align 8
  %78 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %7, align 8
  %79 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %78, i32 0, i32 1
  store i32 1, i32* %79, align 8
  %80 = load i32, i32* @VM_IO, align 4
  %81 = load i32, i32* @VM_DONTEXPAND, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 2
  store i32* @privcmd_buf_vm_ops, i32** %88, align 8
  %89 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %7, align 8
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 1
  store %struct.privcmd_buf_vma_private* %89, %struct.privcmd_buf_vma_private** %91, align 8
  %92 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %7, align 8
  %93 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %92, i32 0, i32 3
  %94 = load %struct.privcmd_buf_private*, %struct.privcmd_buf_private** %6, align 8
  %95 = getelementptr inbounds %struct.privcmd_buf_private, %struct.privcmd_buf_private* %94, i32 0, i32 1
  %96 = call i32 @list_add(i32* %93, i32* %95)
  %97 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %7, align 8
  %98 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %71
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %10, align 4
  br label %114

105:                                              ; preds = %71
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %107 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %7, align 8
  %108 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %7, align 8
  %111 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @vm_map_pages_zero(%struct.vm_area_struct* %106, i32* %109, i64 %112)
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %105, %102
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %7, align 8
  %119 = call i32 @privcmd_buf_vmapriv_free(%struct.privcmd_buf_vma_private* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.privcmd_buf_private*, %struct.privcmd_buf_private** %6, align 8
  %122 = getelementptr inbounds %struct.privcmd_buf_private, %struct.privcmd_buf_private* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %120, %34, %22
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local %struct.privcmd_buf_vma_private* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.privcmd_buf_vma_private*, i32, i64) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @vm_map_pages_zero(%struct.vm_area_struct*, i32*, i64) #1

declare dso_local i32 @privcmd_buf_vmapriv_free(%struct.privcmd_buf_vma_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
