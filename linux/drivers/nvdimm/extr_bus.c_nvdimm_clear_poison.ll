; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_clear_poison.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_clear_poison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvdimm_bus = type { %struct.nvdimm_bus_descriptor* }
%struct.nvdimm_bus_descriptor = type { i32 (%struct.nvdimm_bus_descriptor*, i32*, i32, %struct.nd_cmd_clear_error*, i32, i32*)* }
%struct.nd_cmd_clear_error = type opaque
%struct.nd_cmd_clear_error.0 = type { i32, i32, i32, i64 }
%struct.nd_cmd_ars_cap = type { i32, i32, i32, i64 }

@ENXIO = common dso_local global i64 0, align 8
@ND_CMD_ARS_CAP = common dso_local global i32 0, align 4
@ND_CMD_CLEAR_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvdimm_clear_poison(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvdimm_bus*, align 8
  %9 = alloca %struct.nvdimm_bus_descriptor*, align 8
  %10 = alloca %struct.nd_cmd_clear_error.0, align 8
  %11 = alloca %struct.nd_cmd_ars_cap, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device* %17)
  store %struct.nvdimm_bus* %18, %struct.nvdimm_bus** %8, align 8
  %19 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %8, align 8
  %20 = icmp ne %struct.nvdimm_bus* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* @ENXIO, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %122

24:                                               ; preds = %3
  %25 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %8, align 8
  %26 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %25, i32 0, i32 0
  %27 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %26, align 8
  store %struct.nvdimm_bus_descriptor* %27, %struct.nvdimm_bus_descriptor** %9, align 8
  %28 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %9, align 8
  %29 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %28, i32 0, i32 0
  %30 = load i32 (%struct.nvdimm_bus_descriptor*, i32*, i32, %struct.nd_cmd_clear_error*, i32, i32*)*, i32 (%struct.nvdimm_bus_descriptor*, i32*, i32, %struct.nd_cmd_clear_error*, i32, i32*)** %29, align 8
  %31 = icmp ne i32 (%struct.nvdimm_bus_descriptor*, i32*, i32, %struct.nd_cmd_clear_error*, i32, i32*)* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %4, align 8
  br label %122

35:                                               ; preds = %24
  %36 = bitcast %struct.nd_cmd_ars_cap* %11 to %struct.nd_cmd_clear_error.0*
  %37 = call i32 @memset(%struct.nd_cmd_clear_error.0* %36, i32 0, i32 24)
  %38 = load i32, i32* %6, align 4
  %39 = getelementptr inbounds %struct.nd_cmd_ars_cap, %struct.nd_cmd_ars_cap* %11, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds %struct.nd_cmd_ars_cap, %struct.nd_cmd_ars_cap* %11, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = call i32 (...) @memalloc_noio_save()
  store i32 %42, i32* %14, align 4
  %43 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %9, align 8
  %44 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %43, i32 0, i32 0
  %45 = load i32 (%struct.nvdimm_bus_descriptor*, i32*, i32, %struct.nd_cmd_clear_error*, i32, i32*)*, i32 (%struct.nvdimm_bus_descriptor*, i32*, i32, %struct.nd_cmd_clear_error*, i32, i32*)** %44, align 8
  %46 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %9, align 8
  %47 = load i32, i32* @ND_CMD_ARS_CAP, align 4
  %48 = bitcast %struct.nd_cmd_ars_cap* %11 to %struct.nd_cmd_clear_error*
  %49 = call i32 %45(%struct.nvdimm_bus_descriptor* %46, i32* null, i32 %47, %struct.nd_cmd_clear_error* %48, i32 24, i32* %15)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @memalloc_noio_restore(i32 %50)
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %4, align 8
  br label %122

57:                                               ; preds = %35
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %4, align 8
  br label %122

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.nd_cmd_ars_cap, %struct.nd_cmd_ars_cap* %11, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @is_power_of_2(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68, %63
  %73 = load i64, i64* @ENXIO, align 8
  %74 = sub nsw i64 0, %73
  store i64 %74, i64* %4, align 8
  br label %122

75:                                               ; preds = %68
  %76 = load i32, i32* %12, align 4
  %77 = sub i32 %76, 1
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %13, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i64, i64* @ENXIO, align 8
  %86 = sub nsw i64 0, %85
  store i64 %86, i64* %4, align 8
  br label %122

87:                                               ; preds = %75
  %88 = call i32 @memset(%struct.nd_cmd_clear_error.0* %10, i32 0, i32 24)
  %89 = load i32, i32* %6, align 4
  %90 = getelementptr inbounds %struct.nd_cmd_clear_error.0, %struct.nd_cmd_clear_error.0* %10, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = load i32, i32* %7, align 4
  %92 = getelementptr inbounds %struct.nd_cmd_clear_error.0, %struct.nd_cmd_clear_error.0* %10, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = call i32 (...) @memalloc_noio_save()
  store i32 %93, i32* %14, align 4
  %94 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %9, align 8
  %95 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %94, i32 0, i32 0
  %96 = load i32 (%struct.nvdimm_bus_descriptor*, i32*, i32, %struct.nd_cmd_clear_error*, i32, i32*)*, i32 (%struct.nvdimm_bus_descriptor*, i32*, i32, %struct.nd_cmd_clear_error*, i32, i32*)** %95, align 8
  %97 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %9, align 8
  %98 = load i32, i32* @ND_CMD_CLEAR_ERROR, align 4
  %99 = bitcast %struct.nd_cmd_clear_error.0* %10 to %struct.nd_cmd_clear_error*
  %100 = call i32 %96(%struct.nvdimm_bus_descriptor* %97, i32* null, i32 %98, %struct.nd_cmd_clear_error* %99, i32 24, i32* %15)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @memalloc_noio_restore(i32 %101)
  %103 = load i32, i32* %16, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %87
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %4, align 8
  br label %122

108:                                              ; preds = %87
  %109 = load i32, i32* %15, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %4, align 8
  br label %122

114:                                              ; preds = %108
  %115 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %8, align 8
  %116 = load i32, i32* %6, align 4
  %117 = getelementptr inbounds %struct.nd_cmd_clear_error.0, %struct.nd_cmd_clear_error.0* %10, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @nvdimm_account_cleared_poison(%struct.nvdimm_bus* %115, i32 %116, i64 %118)
  %120 = getelementptr inbounds %struct.nd_cmd_clear_error.0, %struct.nd_cmd_clear_error.0* %10, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %4, align 8
  br label %122

122:                                              ; preds = %114, %111, %105, %84, %72, %60, %54, %32, %21
  %123 = load i64, i64* %4, align 8
  ret i64 %123
}

declare dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device*) #1

declare dso_local i32 @memset(%struct.nd_cmd_clear_error.0*, i32, i32) #1

declare dso_local i32 @memalloc_noio_save(...) #1

declare dso_local i32 @memalloc_noio_restore(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @nvdimm_account_cleared_poison(%struct.nvdimm_bus*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
