; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_region = type { i64, i32, i32, %struct.nd_mapping* }
%struct.nd_mapping = type { %struct.nvdimm* }
%struct.nvdimm = type { i32 }

@region_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @nd_region_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd_region_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nd_mapping*, align 8
  %6 = alloca %struct.nvdimm*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.nd_region* @to_nd_region(%struct.device* %7)
  store %struct.nd_region* %8, %struct.nd_region** %3, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %12 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %17 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %16, i32 0, i32 3
  %18 = load %struct.nd_mapping*, %struct.nd_mapping** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %18, i64 %19
  store %struct.nd_mapping* %20, %struct.nd_mapping** %5, align 8
  %21 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %22 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %21, i32 0, i32 0
  %23 = load %struct.nvdimm*, %struct.nvdimm** %22, align 8
  store %struct.nvdimm* %23, %struct.nvdimm** %6, align 8
  %24 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %25 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %24, i32 0, i32 0
  %26 = call i32 @put_device(i32* %25)
  br label %27

27:                                               ; preds = %15
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %9

30:                                               ; preds = %9
  %31 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %32 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @free_percpu(i32 %33)
  %35 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %36 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ida_simple_remove(i32* @region_ida, i32 %37)
  %39 = load %struct.device*, %struct.device** %2, align 8
  %40 = call i64 @is_nd_blk(%struct.device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.device*, %struct.device** %2, align 8
  %44 = call %struct.nd_region* @to_nd_blk_region(%struct.device* %43)
  %45 = call i32 @kfree(%struct.nd_region* %44)
  br label %49

46:                                               ; preds = %30
  %47 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %48 = call i32 @kfree(%struct.nd_region* %47)
  br label %49

49:                                               ; preds = %46, %42
  ret void
}

declare dso_local %struct.nd_region* @to_nd_region(%struct.device*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i64 @is_nd_blk(%struct.device*) #1

declare dso_local i32 @kfree(%struct.nd_region*) #1

declare dso_local %struct.nd_region* @to_nd_blk_region(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
