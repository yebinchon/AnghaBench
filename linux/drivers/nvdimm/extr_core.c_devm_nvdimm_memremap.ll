; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_core.c_devm_nvdimm_memremap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_core.c_devm_nvdimm_memremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvdimm_map = type { i8*, i32 }

@nvdimm_map_put = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @devm_nvdimm_memremap(%struct.device* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nvdimm_map*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call i32 @nvdimm_bus_lock(%struct.device* %11)
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.nvdimm_map* @find_nvdimm_map(%struct.device* %13, i32 %14)
  store %struct.nvdimm_map* %15, %struct.nvdimm_map** %10, align 8
  %16 = load %struct.nvdimm_map*, %struct.nvdimm_map** %10, align 8
  %17 = icmp ne %struct.nvdimm_map* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call %struct.nvdimm_map* @alloc_nvdimm_map(%struct.device* %19, i32 %20, i64 %21, i64 %22)
  store %struct.nvdimm_map* %23, %struct.nvdimm_map** %10, align 8
  br label %28

24:                                               ; preds = %4
  %25 = load %struct.nvdimm_map*, %struct.nvdimm_map** %10, align 8
  %26 = getelementptr inbounds %struct.nvdimm_map, %struct.nvdimm_map* %25, i32 0, i32 1
  %27 = call i32 @kref_get(i32* %26)
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @nvdimm_bus_unlock(%struct.device* %29)
  %31 = load %struct.nvdimm_map*, %struct.nvdimm_map** %10, align 8
  %32 = icmp ne %struct.nvdimm_map* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i8* null, i8** %5, align 8
  br label %45

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i32, i32* @nvdimm_map_put, align 4
  %37 = load %struct.nvdimm_map*, %struct.nvdimm_map** %10, align 8
  %38 = call i64 @devm_add_action_or_reset(%struct.device* %35, i32 %36, %struct.nvdimm_map* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i8* null, i8** %5, align 8
  br label %45

41:                                               ; preds = %34
  %42 = load %struct.nvdimm_map*, %struct.nvdimm_map** %10, align 8
  %43 = getelementptr inbounds %struct.nvdimm_map, %struct.nvdimm_map* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %41, %40, %33
  %46 = load i8*, i8** %5, align 8
  ret i8* %46
}

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local %struct.nvdimm_map* @find_nvdimm_map(%struct.device*, i32) #1

declare dso_local %struct.nvdimm_map* @alloc_nvdimm_map(%struct.device*, i32, i64, i64) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i64 @devm_add_action_or_reset(%struct.device*, i32, %struct.nvdimm_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
