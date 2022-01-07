; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_nvdimm_get_config_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_nvdimm_get_config_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_drvdata = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.nvdimm_bus = type { %struct.nvdimm_bus_descriptor* }
%struct.nvdimm_bus_descriptor = type { i32 (%struct.nvdimm_bus_descriptor*, i32, i32, %struct.nd_cmd_get_config_data_hdr*, i64, i32*)* }
%struct.nd_cmd_get_config_data_hdr = type opaque
%struct.nd_cmd_get_config_data_hdr.0 = type { i32, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ND_CMD_GET_CONFIG_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvdimm_get_config_data(%struct.nvdimm_drvdata* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvdimm_drvdata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nvdimm_bus*, align 8
  %11 = alloca %struct.nvdimm_bus_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nd_cmd_get_config_data_hdr.0*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.nvdimm_drvdata* %0, %struct.nvdimm_drvdata** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %19 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.nvdimm_bus* @walk_to_nvdimm_bus(i32 %20)
  store %struct.nvdimm_bus* %21, %struct.nvdimm_bus** %10, align 8
  %22 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %10, align 8
  %23 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %22, i32 0, i32 0
  %24 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %23, align 8
  store %struct.nvdimm_bus_descriptor* %24, %struct.nvdimm_bus_descriptor** %11, align 8
  %25 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %26 = call i32 @validate_dimm(%struct.nvdimm_drvdata* %25)
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %129

31:                                               ; preds = %4
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %32, %33
  %35 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %36 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %129

43:                                               ; preds = %31
  %44 = load i32, i32* @u32, align 4
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %47 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @min_t(i32 %44, i64 %45, i32 %49)
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = add i64 %51, 24
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.nd_cmd_get_config_data_hdr.0* @kvzalloc(i64 %52, i32 %53)
  store %struct.nd_cmd_get_config_data_hdr.0* %54, %struct.nd_cmd_get_config_data_hdr.0** %14, align 8
  %55 = load %struct.nd_cmd_get_config_data_hdr.0*, %struct.nd_cmd_get_config_data_hdr.0** %14, align 8
  %56 = icmp ne %struct.nd_cmd_get_config_data_hdr.0* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %43
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %129

60:                                               ; preds = %43
  store i64 0, i64* %16, align 8
  br label %61

61:                                               ; preds = %112, %60
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %125

64:                                               ; preds = %61
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %16, align 8
  %67 = add i64 %65, %66
  %68 = load %struct.nd_cmd_get_config_data_hdr.0*, %struct.nd_cmd_get_config_data_hdr.0** %14, align 8
  %69 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr.0, %struct.nd_cmd_get_config_data_hdr.0* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @min(i64 %70, i64 %71)
  %73 = load %struct.nd_cmd_get_config_data_hdr.0*, %struct.nd_cmd_get_config_data_hdr.0** %14, align 8
  %74 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr.0, %struct.nd_cmd_get_config_data_hdr.0* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.nd_cmd_get_config_data_hdr.0*, %struct.nd_cmd_get_config_data_hdr.0** %14, align 8
  %76 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr.0, %struct.nd_cmd_get_config_data_hdr.0* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add i64 24, %78
  store i64 %79, i64* %17, align 8
  %80 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %11, align 8
  %81 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %80, i32 0, i32 0
  %82 = load i32 (%struct.nvdimm_bus_descriptor*, i32, i32, %struct.nd_cmd_get_config_data_hdr*, i64, i32*)*, i32 (%struct.nvdimm_bus_descriptor*, i32, i32, %struct.nd_cmd_get_config_data_hdr*, i64, i32*)** %81, align 8
  %83 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %11, align 8
  %84 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %85 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @to_nvdimm(i32 %86)
  %88 = load i32, i32* @ND_CMD_GET_CONFIG_DATA, align 4
  %89 = load %struct.nd_cmd_get_config_data_hdr.0*, %struct.nd_cmd_get_config_data_hdr.0** %14, align 8
  %90 = bitcast %struct.nd_cmd_get_config_data_hdr.0* %89 to %struct.nd_cmd_get_config_data_hdr*
  %91 = load i64, i64* %17, align 8
  %92 = call i32 %82(%struct.nvdimm_bus_descriptor* %83, i32 %87, i32 %88, %struct.nd_cmd_get_config_data_hdr* %90, i64 %91, i32* %13)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %64
  br label %125

96:                                               ; preds = %64
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %12, align 4
  br label %125

101:                                              ; preds = %96
  %102 = load i8*, i8** %7, align 8
  %103 = load i64, i64* %16, align 8
  %104 = getelementptr i8, i8* %102, i64 %103
  %105 = load %struct.nd_cmd_get_config_data_hdr.0*, %struct.nd_cmd_get_config_data_hdr.0** %14, align 8
  %106 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr.0, %struct.nd_cmd_get_config_data_hdr.0* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.nd_cmd_get_config_data_hdr.0*, %struct.nd_cmd_get_config_data_hdr.0** %14, align 8
  %109 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr.0, %struct.nd_cmd_get_config_data_hdr.0* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @memcpy(i8* %104, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %101
  %113 = load %struct.nd_cmd_get_config_data_hdr.0*, %struct.nd_cmd_get_config_data_hdr.0** %14, align 8
  %114 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr.0, %struct.nd_cmd_get_config_data_hdr.0* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %9, align 8
  %118 = sub i64 %117, %116
  store i64 %118, i64* %9, align 8
  %119 = load %struct.nd_cmd_get_config_data_hdr.0*, %struct.nd_cmd_get_config_data_hdr.0** %14, align 8
  %120 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr.0, %struct.nd_cmd_get_config_data_hdr.0* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %16, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %16, align 8
  br label %61

125:                                              ; preds = %99, %95, %61
  %126 = load %struct.nd_cmd_get_config_data_hdr.0*, %struct.nd_cmd_get_config_data_hdr.0** %14, align 8
  %127 = call i32 @kvfree(%struct.nd_cmd_get_config_data_hdr.0* %126)
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %125, %57, %40, %29
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(i32) #1

declare dso_local i32 @validate_dimm(%struct.nvdimm_drvdata*) #1

declare dso_local i64 @min_t(i32, i64, i32) #1

declare dso_local %struct.nd_cmd_get_config_data_hdr.0* @kvzalloc(i64, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @to_nvdimm(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @kvfree(%struct.nd_cmd_get_config_data_hdr.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
