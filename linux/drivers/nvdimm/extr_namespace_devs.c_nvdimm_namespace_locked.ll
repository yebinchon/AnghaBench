; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nvdimm_namespace_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nvdimm_namespace_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_namespace_common = type { %struct.device }
%struct.device = type { i32 }
%struct.nd_region = type { i32, %struct.nd_mapping* }
%struct.nd_mapping = type { %struct.nvdimm* }
%struct.nvdimm = type { i32 }

@NDD_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s locked\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvdimm_namespace_locked(%struct.nd_namespace_common* %0) #0 {
  %2 = alloca %struct.nd_namespace_common*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.nd_region*, align 8
  %7 = alloca %struct.nd_mapping*, align 8
  %8 = alloca %struct.nvdimm*, align 8
  store %struct.nd_namespace_common* %0, %struct.nd_namespace_common** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %2, align 8
  %10 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nd_region* @to_nd_region(i32 %13)
  store %struct.nd_region* %14, %struct.nd_region** %6, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %42, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %18 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %15
  %22 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %23 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %22, i32 0, i32 1
  %24 = load %struct.nd_mapping*, %struct.nd_mapping** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %24, i64 %26
  store %struct.nd_mapping* %27, %struct.nd_mapping** %7, align 8
  %28 = load %struct.nd_mapping*, %struct.nd_mapping** %7, align 8
  %29 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %28, i32 0, i32 0
  %30 = load %struct.nvdimm*, %struct.nvdimm** %29, align 8
  store %struct.nvdimm* %30, %struct.nvdimm** %8, align 8
  %31 = load i32, i32* @NDD_LOCKED, align 4
  %32 = load %struct.nvdimm*, %struct.nvdimm** %8, align 8
  %33 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load %struct.nvdimm*, %struct.nvdimm** %8, align 8
  %39 = call i32 @nvdimm_name(%struct.nvdimm* %38)
  %40 = call i32 @dev_dbg(%struct.device* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %21
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %15

45:                                               ; preds = %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @nvdimm_name(%struct.nvdimm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
