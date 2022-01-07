; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_devmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_devmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.vm_area_struct = type { i64, i32, i32, i32 }
%struct.dax_ctx = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"len=0x%lx, flags=0x%lx\00", align 1
@current = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"devmap called from wrong thread\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DAX_MMAP_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"len(%lu) != DAX_MMAP_LEN(%d)\00", align 1
@VM_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"mmapped completion area at uva 0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @dax_devmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_devmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.dax_ctx*, align 8
  %7 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.dax_ctx*
  store %struct.dax_ctx* %11, %struct.dax_ctx** %6, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 %14, %18
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @dax_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %23)
  %25 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @current, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = call i32 (i8*, ...) @dax_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %84

34:                                               ; preds = %2
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @DAX_MMAP_LEN, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @DAX_MMAP_LEN, align 8
  %41 = call i32 (i8*, ...) @dax_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %39, i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %84

44:                                               ; preds = %34
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @VM_WRITE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @EPERM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %84

54:                                               ; preds = %44
  %55 = load i32, i32* @VM_MAYWRITE, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dax_ctx*, %struct.dax_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PAGE_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @remap_pfn_range(%struct.vm_area_struct* %61, i32 %64, i32 %69, i64 %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %54
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %84

79:                                               ; preds = %54
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %81 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @dax_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %76, %51, %38, %30
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @dax_dbg(i8*, ...) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
