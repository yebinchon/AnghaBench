; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_mm_vma_bar_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_mm_vma_bar_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.gasket_driver_desc* }
%struct.gasket_driver_desc = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.vm_area_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unable to find matching bar for address 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_dev*, %struct.vm_area_struct*, i64*)* @gasket_mm_vma_bar_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_mm_vma_bar_offset(%struct.gasket_dev* %0, %struct.vm_area_struct* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gasket_dev*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gasket_driver_desc*, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %12 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %14, align 8
  store %struct.gasket_driver_desc* %15, %struct.gasket_driver_desc** %10, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %10, align 8
  %23 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  store i64 %25, i64* %8, align 8
  %26 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @gasket_get_bar_index(%struct.gasket_dev* %26, i64 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %3
  %32 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %33 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @trace_gasket_mmap_exit(i32 %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %52

40:                                               ; preds = %3
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %10, align 8
  %43 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %41, %49
  %51 = load i64*, i64** %7, align 8
  store i64 %50, i64* %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %40, %31
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @gasket_get_bar_index(%struct.gasket_dev*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @trace_gasket_mmap_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
