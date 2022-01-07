; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_fb_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_fb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i8*, i32 }
%struct.fb_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.fb_ops* }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.fb_ops = type { i32 (%struct.fb_info.0*, %struct.vm_area_struct*)* }
%struct.fb_info.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @fb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.fb_ops*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.fb_info* @file_fb_info(%struct.file* %12)
  store %struct.fb_info* %13, %struct.fb_info** %6, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %15 = icmp ne %struct.fb_info* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %121

19:                                               ; preds = %2
  %20 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 3
  %22 = load %struct.fb_ops*, %struct.fb_ops** %21, align 8
  store %struct.fb_ops* %22, %struct.fb_ops** %7, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.fb_ops*, %struct.fb_ops** %7, align 8
  %27 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.fb_info.0*, %struct.vm_area_struct*)*, i32 (%struct.fb_info.0*, %struct.vm_area_struct*)** %27, align 8
  %29 = icmp ne i32 (%struct.fb_info.0*, %struct.vm_area_struct*)* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %19
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @pgprot_decrypted(i8* %33)
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.fb_ops*, %struct.fb_ops** %7, align 8
  %38 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %37, i32 0, i32 0
  %39 = load i32 (%struct.fb_info.0*, %struct.vm_area_struct*)*, i32 (%struct.fb_info.0*, %struct.vm_area_struct*)** %38, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %41 = bitcast %struct.fb_info* %40 to %struct.fb_info.0*
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = call i32 %39(%struct.fb_info.0* %41, %struct.vm_area_struct* %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %3, align 4
  br label %121

48:                                               ; preds = %19
  %49 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %9, align 8
  %53 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @PAGE_MASK, align 8
  %59 = xor i64 %58, -1
  %60 = and i64 %57, %59
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %60, %61
  %63 = call i64 @PAGE_ALIGN(i64 %62)
  %64 = load i64, i64* @PAGE_SHIFT, align 8
  %65 = lshr i64 %63, %64
  store i64 %65, i64* %8, align 8
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp uge i64 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %48
  %72 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %121

83:                                               ; preds = %71
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %86 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %9, align 8
  %93 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %83, %48
  %98 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %102 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @vm_get_page_prot(i32 %103)
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %106 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @pgprot_decrypted(i8* %109)
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %112 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.file*, %struct.file** %4, align 8
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @fb_pgprotect(%struct.file* %113, %struct.vm_area_struct* %114, i64 %115)
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @vm_iomap_memory(%struct.vm_area_struct* %117, i64 %118, i64 %119)
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %97, %77, %30, %16
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.fb_info* @file_fb_info(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @pgprot_decrypted(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i8* @vm_get_page_prot(i32) #1

declare dso_local i32 @fb_pgprotect(%struct.file*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @vm_iomap_memory(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
