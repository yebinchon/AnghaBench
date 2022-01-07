; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_region_create_ns_seed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_region_create_ns_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32, i32 }

@ND_DEVICE_NAMESPACE_IO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"failed to create %s namespace\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"blk\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pmem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd_region_create_ns_seed(%struct.nd_region* %0) #0 {
  %2 = alloca %struct.nd_region*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %2, align 8
  %3 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %4 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %3, i32 0, i32 1
  %5 = call i32 @is_nvdimm_bus_locked(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %11 = call i64 @nd_region_to_nstype(%struct.nd_region* %10)
  %12 = load i64, i64* @ND_DEVICE_NAMESPACE_IO, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %17 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %16, i32 0, i32 1
  %18 = call i64 @is_nd_blk(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %22 = call i32 @nd_namespace_blk_create(%struct.nd_region* %21)
  %23 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %24 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %30

25:                                               ; preds = %15
  %26 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %27 = call i32 @nd_namespace_pmem_create(%struct.nd_region* %26)
  %28 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %29 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %32 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %37 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %36, i32 0, i32 1
  %38 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %39 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %38, i32 0, i32 1
  %40 = call i64 @is_nd_blk(i32* %39)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %50

45:                                               ; preds = %30
  %46 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %47 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nd_device_register(i32 %48)
  br label %50

50:                                               ; preds = %14, %45, %35
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_nvdimm_bus_locked(i32*) #1

declare dso_local i64 @nd_region_to_nstype(%struct.nd_region*) #1

declare dso_local i64 @is_nd_blk(i32*) #1

declare dso_local i32 @nd_namespace_blk_create(%struct.nd_region*) #1

declare dso_local i32 @nd_namespace_pmem_create(%struct.nd_region*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @nd_device_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
