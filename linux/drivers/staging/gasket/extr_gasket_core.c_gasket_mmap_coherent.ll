; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_mmap_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_mmap_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.gasket_driver_desc* }
%struct.gasket_driver_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.vm_area_struct = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Permission checking failed.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Error remapping PFN range err=%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_dev*, %struct.vm_area_struct*)* @gasket_mmap_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_mmap_coherent(%struct.gasket_dev* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gasket_dev*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.gasket_driver_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %11 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %13, align 8
  store %struct.gasket_driver_desc* %14, %struct.gasket_driver_desc** %6, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %27 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %25, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @trace_gasket_mmap_exit(i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %101

37:                                               ; preds = %24
  %38 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %39 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  %42 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @gasket_mmap_has_permissions(%struct.gasket_dev* %42, %struct.vm_area_struct* %43, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %37
  %48 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %49 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EPERM, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32 @trace_gasket_mmap_exit(i32 %53)
  %55 = load i32, i32* @EPERM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %101

57:                                               ; preds = %37
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pgprot_noncached(i32 %60)
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %69 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @remap_pfn_range(%struct.vm_area_struct* %64, i64 %67, i32 %73, i64 %74, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %57
  %82 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %83 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i32, i8*, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @trace_gasket_mmap_exit(i32 %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %101

90:                                               ; preds = %57
  %91 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %94 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @gasket_set_user_virt(%struct.gasket_dev* %91, i64 %92, i32 %96, i64 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %90, %81, %47, %31
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @trace_gasket_mmap_exit(i32) #1

declare dso_local i32 @gasket_mmap_has_permissions(%struct.gasket_dev*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

declare dso_local i32 @gasket_set_user_virt(%struct.gasket_dev*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
