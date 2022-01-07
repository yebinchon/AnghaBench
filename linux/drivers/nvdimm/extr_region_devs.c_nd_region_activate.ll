; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32, %struct.device, %struct.nd_mapping* }
%struct.device = type { i32 }
%struct.nd_mapping = type { %struct.nvdimm* }
%struct.nvdimm = type { i32, i32 }
%struct.nd_region_data = type { i32 }

@NDD_SECURITY_OVERWRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_region_activate(%struct.nd_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nd_region_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nd_mapping*, align 8
  %11 = alloca %struct.nvdimm*, align 8
  %12 = alloca %struct.nd_mapping*, align 8
  %13 = alloca %struct.nvdimm*, align 8
  %14 = alloca i32, align 4
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %16 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %8, align 8
  store i64 8, i64* %9, align 8
  %17 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %18 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %17, i32 0, i32 1
  %19 = call i32 @nvdimm_bus_lock(%struct.device* %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %68, %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %23 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %20
  %27 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %28 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %27, i32 0, i32 2
  %29 = load %struct.nd_mapping*, %struct.nd_mapping** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %29, i64 %31
  store %struct.nd_mapping* %32, %struct.nd_mapping** %10, align 8
  %33 = load %struct.nd_mapping*, %struct.nd_mapping** %10, align 8
  %34 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %33, i32 0, i32 0
  %35 = load %struct.nvdimm*, %struct.nvdimm** %34, align 8
  store %struct.nvdimm* %35, %struct.nvdimm** %11, align 8
  %36 = load i32, i32* @NDD_SECURITY_OVERWRITE, align 4
  %37 = load %struct.nvdimm*, %struct.nvdimm** %11, align 8
  %38 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %37, i32 0, i32 1
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %26
  %42 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %43 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %42, i32 0, i32 1
  %44 = call i32 @nvdimm_bus_unlock(%struct.device* %43)
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %172

47:                                               ; preds = %26
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 8
  store i64 %49, i64* %9, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.nvdimm*, %struct.nvdimm** %11, align 8
  %52 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @min_not_zero(i32 %50, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.nvdimm*, %struct.nvdimm** %11, align 8
  %56 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %47
  br label %68

60:                                               ; preds = %47
  %61 = load %struct.nvdimm*, %struct.nvdimm** %11, align 8
  %62 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %60, %59
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %20

71:                                               ; preds = %20
  %72 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %73 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %72, i32 0, i32 1
  %74 = call i32 @nvdimm_bus_unlock(%struct.device* %73)
  %75 = load %struct.device*, %struct.device** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = add i64 4, %76
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.nd_region_data* @devm_kzalloc(%struct.device* %75, i32 %78, i32 %79)
  store %struct.nd_region_data* %80, %struct.nd_region_data** %7, align 8
  %81 = load %struct.nd_region_data*, %struct.nd_region_data** %7, align 8
  %82 = icmp ne %struct.nd_region_data* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %172

86:                                               ; preds = %71
  %87 = load %struct.device*, %struct.device** %8, align 8
  %88 = load %struct.nd_region_data*, %struct.nd_region_data** %7, align 8
  %89 = call i32 @dev_set_drvdata(%struct.device* %87, %struct.nd_region_data* %88)
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %172

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @ilog2(i32 %94)
  %96 = load %struct.nd_region_data*, %struct.nd_region_data** %7, align 8
  %97 = getelementptr inbounds %struct.nd_region_data, %struct.nd_region_data* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %125, %93
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %101 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %98
  %105 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %106 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %105, i32 0, i32 2
  %107 = load %struct.nd_mapping*, %struct.nd_mapping** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %107, i64 %109
  store %struct.nd_mapping* %110, %struct.nd_mapping** %12, align 8
  %111 = load %struct.nd_mapping*, %struct.nd_mapping** %12, align 8
  %112 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %111, i32 0, i32 0
  %113 = load %struct.nvdimm*, %struct.nvdimm** %112, align 8
  store %struct.nvdimm* %113, %struct.nvdimm** %13, align 8
  %114 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %115 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %114, i32 0, i32 1
  %116 = load %struct.nvdimm*, %struct.nvdimm** %13, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load %struct.nd_region_data*, %struct.nd_region_data** %7, align 8
  %119 = call i32 @nvdimm_map_flush(%struct.device* %115, %struct.nvdimm* %116, i32 %117, %struct.nd_region_data* %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %104
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %2, align 4
  br label %172

124:                                              ; preds = %104
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %98

128:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %168, %128
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %132 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 1
  %135 = icmp slt i32 %130, %134
  br i1 %135, label %136, label %171

136:                                              ; preds = %129
  %137 = load %struct.nd_region_data*, %struct.nd_region_data** %7, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i64 @ndrd_get_flush_wpq(%struct.nd_region_data* %137, i32 %138, i32 0)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  br label %168

142:                                              ; preds = %136
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %164, %142
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %148 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %145
  %152 = load %struct.nd_region_data*, %struct.nd_region_data** %7, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i64 @ndrd_get_flush_wpq(%struct.nd_region_data* %152, i32 %153, i32 0)
  %155 = load %struct.nd_region_data*, %struct.nd_region_data** %7, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i64 @ndrd_get_flush_wpq(%struct.nd_region_data* %155, i32 %156, i32 0)
  %158 = icmp eq i64 %154, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = load %struct.nd_region_data*, %struct.nd_region_data** %7, align 8
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @ndrd_set_flush_wpq(%struct.nd_region_data* %160, i32 %161, i32 0, i32* null)
  br label %163

163:                                              ; preds = %159, %151
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %145

167:                                              ; preds = %145
  br label %168

168:                                              ; preds = %167, %141
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  br label %129

171:                                              ; preds = %129
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %122, %92, %83, %41
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @min_not_zero(i32, i32) #1

declare dso_local %struct.nd_region_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.nd_region_data*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @nvdimm_map_flush(%struct.device*, %struct.nvdimm*, i32, %struct.nd_region_data*) #1

declare dso_local i64 @ndrd_get_flush_wpq(%struct.nd_region_data*, i32, i32) #1

declare dso_local i32 @ndrd_set_flush_wpq(%struct.nd_region_data*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
