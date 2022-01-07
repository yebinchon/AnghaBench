; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_blk_region_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_blk_region_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.nvdimm_bus = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.nvdimm_bus*, %struct.device*)* }

@.str = private unnamed_addr constant [20 x i8] c"invalid BLK region\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_blk_region_init(%struct.nd_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nvdimm_bus*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  %6 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %7 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %6, i32 0, i32 1
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device* %8)
  store %struct.nvdimm_bus* %9, %struct.nvdimm_bus** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @is_nd_blk(%struct.device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %16 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %14
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call %struct.TYPE_2__* @to_nd_blk_region(%struct.device* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.nvdimm_bus*, %struct.device*)*, i32 (%struct.nvdimm_bus*, %struct.device*)** %27, align 8
  %29 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %5, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 %28(%struct.nvdimm_bus* %29, %struct.device* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %19, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device*) #1

declare dso_local i32 @is_nd_blk(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.TYPE_2__* @to_nd_blk_region(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
