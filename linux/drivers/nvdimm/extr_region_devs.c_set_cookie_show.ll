; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_set_cookie_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_set_cookie_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nd_region = type { %struct.nd_mapping*, i64, %struct.nd_interleave_set* }
%struct.nd_mapping = type { i32 }
%struct.nd_interleave_set = type { i32 }
%struct.nvdimm_drvdata = type { i32 }
%struct.nd_namespace_index = type { i32 }

@ENXIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @set_cookie_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_cookie_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nd_region*, align 8
  %9 = alloca %struct.nd_interleave_set*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nd_mapping*, align 8
  %12 = alloca %struct.nvdimm_drvdata*, align 8
  %13 = alloca %struct.nd_namespace_index*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.nd_region* @to_nd_region(%struct.device* %14)
  store %struct.nd_region* %15, %struct.nd_region** %8, align 8
  %16 = load %struct.nd_region*, %struct.nd_region** %8, align 8
  %17 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %16, i32 0, i32 2
  %18 = load %struct.nd_interleave_set*, %struct.nd_interleave_set** %17, align 8
  store %struct.nd_interleave_set* %18, %struct.nd_interleave_set** %9, align 8
  store i64 0, i64* %10, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i64 @is_memory(%struct.device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.nd_interleave_set*, %struct.nd_interleave_set** %9, align 8
  %24 = icmp ne %struct.nd_interleave_set* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %29

26:                                               ; preds = %22, %3
  %27 = load i64, i64* @ENXIO, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %4, align 8
  br label %76

29:                                               ; preds = %25
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i32 @nd_device_lock(%struct.device* %30)
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @nvdimm_bus_lock(%struct.device* %32)
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i32 @wait_nvdimm_bus_probe_idle(%struct.device* %34)
  %36 = load %struct.nd_region*, %struct.nd_region** %8, align 8
  %37 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %29
  %41 = load %struct.nd_region*, %struct.nd_region** %8, align 8
  %42 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %41, i32 0, i32 0
  %43 = load %struct.nd_mapping*, %struct.nd_mapping** %42, align 8
  %44 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %43, i64 0
  store %struct.nd_mapping* %44, %struct.nd_mapping** %11, align 8
  %45 = load %struct.nd_mapping*, %struct.nd_mapping** %11, align 8
  %46 = call %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping* %45)
  store %struct.nvdimm_drvdata* %46, %struct.nvdimm_drvdata** %12, align 8
  %47 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %12, align 8
  %48 = icmp ne %struct.nvdimm_drvdata* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %12, align 8
  %51 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %12, align 8
  %52 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.nd_namespace_index* @to_namespace_index(%struct.nvdimm_drvdata* %50, i32 %53)
  store %struct.nd_namespace_index* %54, %struct.nd_namespace_index** %13, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.nd_region*, %struct.nd_region** %8, align 8
  %57 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %13, align 8
  %58 = call i32 @nd_region_interleave_set_cookie(%struct.nd_region* %56, %struct.nd_namespace_index* %57)
  %59 = call i64 @sprintf(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %49, %40
  br label %61

61:                                               ; preds = %60, %29
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = call i32 @nvdimm_bus_unlock(%struct.device* %62)
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i32 @nd_device_unlock(%struct.device* %64)
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %4, align 8
  br label %76

70:                                               ; preds = %61
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.nd_interleave_set*, %struct.nd_interleave_set** %9, align 8
  %73 = getelementptr inbounds %struct.nd_interleave_set, %struct.nd_interleave_set* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @sprintf(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %74)
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %70, %68, %26
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

declare dso_local %struct.nd_region* @to_nd_region(%struct.device*) #1

declare dso_local i64 @is_memory(%struct.device*) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i32 @wait_nvdimm_bus_probe_idle(%struct.device*) #1

declare dso_local %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping*) #1

declare dso_local %struct.nd_namespace_index* @to_namespace_index(%struct.nvdimm_drvdata*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @nd_region_interleave_set_cookie(%struct.nd_region*, %struct.nd_namespace_index*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
