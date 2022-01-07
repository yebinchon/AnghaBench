; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_to_nstype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_to_nstype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i64, i32, %struct.nd_mapping* }
%struct.nd_mapping = type { %struct.nvdimm* }
%struct.nvdimm = type { i32 }

@NDD_ALIASING = common dso_local global i32 0, align 4
@ND_DEVICE_NAMESPACE_PMEM = common dso_local global i32 0, align 4
@ND_DEVICE_NAMESPACE_IO = common dso_local global i32 0, align 4
@ND_DEVICE_NAMESPACE_BLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_region_to_nstype(%struct.nd_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nd_mapping*, align 8
  %7 = alloca %struct.nvdimm*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  %8 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %9 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %8, i32 0, i32 1
  %10 = call i64 @is_memory(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %16 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %21 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %20, i32 0, i32 2
  %22 = load %struct.nd_mapping*, %struct.nd_mapping** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %22, i64 %23
  store %struct.nd_mapping* %24, %struct.nd_mapping** %6, align 8
  %25 = load %struct.nd_mapping*, %struct.nd_mapping** %6, align 8
  %26 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %25, i32 0, i32 0
  %27 = load %struct.nvdimm*, %struct.nvdimm** %26, align 8
  store %struct.nvdimm* %27, %struct.nvdimm** %7, align 8
  %28 = load i32, i32* @NDD_ALIASING, align 4
  %29 = load %struct.nvdimm*, %struct.nvdimm** %7, align 8
  %30 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %33, %19
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %4, align 8
  br label %13

40:                                               ; preds = %13
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @ND_DEVICE_NAMESPACE_PMEM, align 4
  store i32 %44, i32* %2, align 4
  br label %56

45:                                               ; preds = %40
  %46 = load i32, i32* @ND_DEVICE_NAMESPACE_IO, align 4
  store i32 %46, i32* %2, align 4
  br label %56

47:                                               ; preds = %1
  %48 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %49 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %48, i32 0, i32 1
  %50 = call i64 @is_nd_blk(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @ND_DEVICE_NAMESPACE_BLK, align 4
  store i32 %53, i32* %2, align 4
  br label %56

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %52, %45, %43
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @is_memory(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @is_nd_blk(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
