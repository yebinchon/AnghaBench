; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd.c_mmap_batch_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd.c_mmap_batch_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmap_batch_state = type { i64, i32, i32, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, %struct.page** }
%struct.page = type { i32 }

@XENFEAT_auto_translated_physmap = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@XEN_PFN_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @mmap_batch_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_batch_fn(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mmap_batch_state*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca %struct.page**, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.mmap_batch_state*
  store %struct.mmap_batch_state* %16, %struct.mmap_batch_state** %8, align 8
  %17 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %8, align 8
  %18 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %17, i32 0, i32 4
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  store %struct.vm_area_struct* %19, %struct.vm_area_struct** %9, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load %struct.page**, %struct.page*** %21, align 8
  store %struct.page** %22, %struct.page*** %10, align 8
  store %struct.page** null, %struct.page*** %11, align 8
  %23 = load i32, i32* @XENFEAT_auto_translated_physmap, align 4
  %24 = call i64 @xen_feature(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.page**, %struct.page*** %10, align 8
  %28 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %8, align 8
  %29 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.page*, %struct.page** %27, i64 %30
  store %struct.page** %31, %struct.page*** %11, align 8
  br label %32

32:                                               ; preds = %26, %3
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %8, align 8
  %38 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %37, i32 0, i32 4
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %38, align 8
  %40 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %8, align 8
  %41 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PAGE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %8, align 8
  %49 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %48, i32 0, i32 4
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %49, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %8, align 8
  %54 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.page**, %struct.page*** %11, align 8
  %57 = call i32 @xen_remap_domain_gfn_array(%struct.vm_area_struct* %39, i32 %44, i32* %45, i32 %46, i32* %47, i32 %52, i32 %55, %struct.page** %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %32
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  %69 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %8, align 8
  %70 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %80

71:                                               ; preds = %61
  %72 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %8, align 8
  %73 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %8, align 8
  %78 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %77, i32 0, i32 2
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79, %66
  br label %81

81:                                               ; preds = %80, %32
  %82 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %83 = load i32, i32* %5, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %8, align 8
  %86 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @XEN_PFN_PER_PAGE, align 4
  %91 = sdiv i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = load %struct.mmap_batch_state*, %struct.mmap_batch_state** %8, align 8
  %94 = getelementptr inbounds %struct.mmap_batch_state, %struct.mmap_batch_state* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, %92
  store i64 %96, i64* %94, align 8
  ret i32 0
}

declare dso_local i64 @xen_feature(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @xen_remap_domain_gfn_array(%struct.vm_area_struct*, i32, i32*, i32, i32*, i32, i32, %struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
