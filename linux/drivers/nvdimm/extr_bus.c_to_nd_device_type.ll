; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_to_nd_device_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_to_nd_device_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@ND_DEVICE_DIMM = common dso_local global i32 0, align 4
@ND_DEVICE_REGION_PMEM = common dso_local global i32 0, align 4
@ND_DEVICE_REGION_BLK = common dso_local global i32 0, align 4
@ND_DEVICE_DAX_PMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @to_nd_device_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_nd_device_type(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %4 = load %struct.device*, %struct.device** %3, align 8
  %5 = call i64 @is_nvdimm(%struct.device* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @ND_DEVICE_DIMM, align 4
  store i32 %8, i32* %2, align 4
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i64 @is_memory(%struct.device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @ND_DEVICE_REGION_PMEM, align 4
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %9
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i64 @is_nd_blk(%struct.device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @ND_DEVICE_REGION_BLK, align 4
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %15
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call i64 @is_nd_dax(%struct.device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @ND_DEVICE_DAX_PMEM, align 4
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %21
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @is_nd_region(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @to_nd_region(i32 %36)
  %38 = call i32 @nd_region_to_nstype(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %33, %25, %19, %13, %7
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @is_nvdimm(%struct.device*) #1

declare dso_local i64 @is_memory(%struct.device*) #1

declare dso_local i64 @is_nd_blk(%struct.device*) #1

declare dso_local i64 @is_nd_dax(%struct.device*) #1

declare dso_local i64 @is_nd_region(i32) #1

declare dso_local i32 @nd_region_to_nstype(i32) #1

declare dso_local i32 @to_nd_region(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
