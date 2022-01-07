; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd.c_mmap_gfn_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd.c_mmap_gfn_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.privcmd_mmap_entry = type { i32, i64, i32 }
%struct.mmap_gfn_state = type { i64, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32 }

@LONG_MAX = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @mmap_gfn_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_gfn_range(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.privcmd_mmap_entry*, align 8
  %7 = alloca %struct.mmap_gfn_state*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.privcmd_mmap_entry*
  store %struct.privcmd_mmap_entry* %11, %struct.privcmd_mmap_entry** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.mmap_gfn_state*
  store %struct.mmap_gfn_state* %13, %struct.mmap_gfn_state** %7, align 8
  %14 = load %struct.mmap_gfn_state*, %struct.mmap_gfn_state** %7, align 8
  %15 = getelementptr inbounds %struct.mmap_gfn_state, %struct.mmap_gfn_state* %14, i32 0, i32 2
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  store %struct.vm_area_struct* %16, %struct.vm_area_struct** %8, align 8
  %17 = load %struct.privcmd_mmap_entry*, %struct.privcmd_mmap_entry** %6, align 8
  %18 = getelementptr inbounds %struct.privcmd_mmap_entry, %struct.privcmd_mmap_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @LONG_MAX, align 4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %2
  %25 = load %struct.privcmd_mmap_entry*, %struct.privcmd_mmap_entry** %6, align 8
  %26 = getelementptr inbounds %struct.privcmd_mmap_entry, %struct.privcmd_mmap_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PAGE_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = load %struct.mmap_gfn_state*, %struct.mmap_gfn_state** %7, align 8
  %32 = getelementptr inbounds %struct.mmap_gfn_state, %struct.mmap_gfn_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 0, %33
  %35 = icmp uge i64 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24, %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %103

39:                                               ; preds = %24
  %40 = load %struct.privcmd_mmap_entry*, %struct.privcmd_mmap_entry** %6, align 8
  %41 = getelementptr inbounds %struct.privcmd_mmap_entry, %struct.privcmd_mmap_entry* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.mmap_gfn_state*, %struct.mmap_gfn_state** %7, align 8
  %44 = getelementptr inbounds %struct.mmap_gfn_state, %struct.mmap_gfn_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %39
  %48 = load %struct.privcmd_mmap_entry*, %struct.privcmd_mmap_entry** %6, align 8
  %49 = getelementptr inbounds %struct.privcmd_mmap_entry, %struct.privcmd_mmap_entry* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.privcmd_mmap_entry*, %struct.privcmd_mmap_entry** %6, align 8
  %52 = getelementptr inbounds %struct.privcmd_mmap_entry, %struct.privcmd_mmap_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PAGE_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = add i64 %50, %56
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ugt i64 %57, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %47, %39
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %103

66:                                               ; preds = %47
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %68 = load %struct.privcmd_mmap_entry*, %struct.privcmd_mmap_entry** %6, align 8
  %69 = getelementptr inbounds %struct.privcmd_mmap_entry, %struct.privcmd_mmap_entry* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @PAGE_MASK, align 4
  %72 = sext i32 %71 to i64
  %73 = and i64 %70, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.privcmd_mmap_entry*, %struct.privcmd_mmap_entry** %6, align 8
  %76 = getelementptr inbounds %struct.privcmd_mmap_entry, %struct.privcmd_mmap_entry* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.privcmd_mmap_entry*, %struct.privcmd_mmap_entry** %6, align 8
  %79 = getelementptr inbounds %struct.privcmd_mmap_entry, %struct.privcmd_mmap_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mmap_gfn_state*, %struct.mmap_gfn_state** %7, align 8
  %85 = getelementptr inbounds %struct.mmap_gfn_state, %struct.mmap_gfn_state* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @xen_remap_domain_gfn_range(%struct.vm_area_struct* %67, i32 %74, i32 %77, i32 %80, i32 %83, i32 %86, i32* null)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %66
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %103

92:                                               ; preds = %66
  %93 = load %struct.privcmd_mmap_entry*, %struct.privcmd_mmap_entry** %6, align 8
  %94 = getelementptr inbounds %struct.privcmd_mmap_entry, %struct.privcmd_mmap_entry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @PAGE_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = load %struct.mmap_gfn_state*, %struct.mmap_gfn_state** %7, align 8
  %100 = getelementptr inbounds %struct.mmap_gfn_state, %struct.mmap_gfn_state* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %98
  store i64 %102, i64* %100, align 8
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %92, %90, %63, %36
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @xen_remap_domain_gfn_range(%struct.vm_area_struct*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
