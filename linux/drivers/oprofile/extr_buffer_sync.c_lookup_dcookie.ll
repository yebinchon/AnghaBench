; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_buffer_sync.c_lookup_dcookie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_buffer_sync.c_lookup_dcookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, %struct.TYPE_2__*, %struct.vm_area_struct* }
%struct.TYPE_2__ = type { i32 }

@NO_COOKIE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@INVALID_COOKIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mm_struct*, i64, i64*)* @lookup_dcookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lookup_dcookie(%struct.mm_struct* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64, i64* @NO_COOKIE, align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = call i32 @down_read(i32* %11)
  %13 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %13, i64 %14)
  store %struct.vm_area_struct* %15, %struct.vm_area_struct** %8, align 8
  br label %16

16:                                               ; preds = %59, %3
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %18 = icmp ne %struct.vm_area_struct* %17, null
  br i1 %18, label %19, label %63

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp uge i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19
  br label %59

32:                                               ; preds = %25
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i64 @fast_get_dcookie(i32* %41)
  store i64 %42, i64* %7, align 8
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PAGE_SHIFT, align 8
  %47 = shl i64 %45, %46
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %47, %48
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %49, %52
  %54 = load i64*, i64** %6, align 8
  store i64 %53, i64* %54, align 8
  br label %58

55:                                               ; preds = %32
  %56 = load i64, i64* %5, align 8
  %57 = load i64*, i64** %6, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %37
  br label %63

59:                                               ; preds = %31
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 4
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %61, align 8
  store %struct.vm_area_struct* %62, %struct.vm_area_struct** %8, align 8
  br label %16

63:                                               ; preds = %58, %16
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %65 = icmp ne %struct.vm_area_struct* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* @INVALID_COOKIE, align 8
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %70 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %69, i32 0, i32 0
  %71 = call i32 @up_read(i32* %70)
  %72 = load i64, i64* %7, align 8
  ret i64 %72
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @fast_get_dcookie(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
