; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_update_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_update_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_soc_dts_sensor_entry = type { i32*, %struct.intel_soc_dts_sensors* }
%struct.intel_soc_dts_sensors = type { i64, i32 }

@SOC_DTS_TE_APICA_ENABLE = common dso_local global i32 0, align 4
@INTEL_SOC_DTS_INTERRUPT_MSI = common dso_local global i64 0, align 8
@SOC_DTS_TE_MSI_ENABLE = common dso_local global i32 0, align 4
@BT_MBI_UNIT_PMC = common dso_local global i32 0, align 4
@MBI_REG_READ = common dso_local global i32 0, align 4
@SOC_DTS_OFFSET_PTPS = common dso_local global i64 0, align 8
@MBI_REG_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"update_trip_temp PTPS = %x\0A\00", align 1
@SOC_DTS_OFFSET_PTMC = common dso_local global i64 0, align 8
@SOC_DTS_TE_AUX0 = common dso_local global i64 0, align 8
@SOC_DTS_CPU_MODULE0_ENABLE_BIT = common dso_local global i32 0, align 4
@SOC_DTS_CPU_MODULE1_ENABLE_BIT = common dso_local global i32 0, align 4
@SOC_DTS_AUX1_ENABLE_BIT = common dso_local global i32 0, align 4
@SOC_DTS_AUX0_ENABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_soc_dts_sensor_entry*, i32, i32, i32)* @update_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_trip_temp(%struct.intel_soc_dts_sensor_entry* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_soc_dts_sensor_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.intel_soc_dts_sensors*, align 8
  store %struct.intel_soc_dts_sensor_entry* %0, %struct.intel_soc_dts_sensor_entry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @SOC_DTS_TE_APICA_ENABLE, align 4
  store i32 %19, i32* %17, align 4
  %20 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %6, align 8
  %21 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %20, i32 0, i32 1
  %22 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %21, align 8
  store %struct.intel_soc_dts_sensors* %22, %struct.intel_soc_dts_sensors** %18, align 8
  %23 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %18, align 8
  %24 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INTEL_SOC_DTS_INTERRUPT_MSI, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* @SOC_DTS_TE_MSI_ENABLE, align 4
  %30 = load i32, i32* %17, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %17, align 4
  br label %32

32:                                               ; preds = %28, %4
  %33 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %18, align 8
  %34 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sdiv i32 %37, 1000
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %40 = load i32, i32* @MBI_REG_READ, align 4
  %41 = load i64, i64* @SOC_DTS_OFFSET_PTPS, align 8
  %42 = call i32 @iosf_mbi_read(i32 %39, i32 %40, i64 %41, i32* %13)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %182

47:                                               ; preds = %32
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, 8
  %51 = shl i32 255, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %48, %52
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, 255
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %56, 8
  %58 = shl i32 %55, %57
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %62 = load i32, i32* @MBI_REG_WRITE, align 4
  %63 = load i64, i64* @SOC_DTS_OFFSET_PTPS, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @iosf_mbi_write(i32 %61, i32 %62, i64 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %47
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %182

70:                                               ; preds = %47
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %74 = load i32, i32* @MBI_REG_READ, align 4
  %75 = load i64, i64* @SOC_DTS_OFFSET_PTMC, align 8
  %76 = call i32 @iosf_mbi_read(i32 %73, i32 %74, i64 %75, i32* %12)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %175

80:                                               ; preds = %70
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %83 = load i32, i32* @MBI_REG_READ, align 4
  %84 = load i64, i64* @SOC_DTS_TE_AUX0, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = call i32 @iosf_mbi_read(i32 %82, i32 %83, i64 %87, i32* %16)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %169

92:                                               ; preds = %80
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* @SOC_DTS_CPU_MODULE0_ENABLE_BIT, align 4
  %95 = load i32, i32* @SOC_DTS_CPU_MODULE1_ENABLE_BIT, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %12, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %92
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* @SOC_DTS_AUX1_ENABLE_BIT, align 4
  %106 = load i32, i32* %12, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %12, align 4
  br label %112

108:                                              ; preds = %101
  %109 = load i32, i32* @SOC_DTS_AUX0_ENABLE_BIT, align 4
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %16, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %16, align 4
  br label %134

116:                                              ; preds = %92
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* @SOC_DTS_AUX1_ENABLE_BIT, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %12, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %12, align 4
  br label %129

124:                                              ; preds = %116
  %125 = load i32, i32* @SOC_DTS_AUX0_ENABLE_BIT, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %12, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i32, i32* %17, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %16, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %129, %112
  %135 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %136 = load i32, i32* @MBI_REG_WRITE, align 4
  %137 = load i64, i64* @SOC_DTS_OFFSET_PTMC, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @iosf_mbi_write(i32 %135, i32 %136, i64 %137, i32 %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %163

143:                                              ; preds = %134
  %144 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %145 = load i32, i32* @MBI_REG_WRITE, align 4
  %146 = load i64, i64* @SOC_DTS_TE_AUX0, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @iosf_mbi_write(i32 %144, i32 %145, i64 %149, i32 %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %143
  br label %163

155:                                              ; preds = %143
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %6, align 8
  %158 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %156, i32* %162, align 4
  store i32 0, i32* %5, align 4
  br label %182

163:                                              ; preds = %154, %142
  %164 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %165 = load i32, i32* @MBI_REG_WRITE, align 4
  %166 = load i64, i64* @SOC_DTS_OFFSET_PTMC, align 8
  %167 = load i32, i32* %15, align 4
  %168 = call i32 @iosf_mbi_write(i32 %164, i32 %165, i64 %166, i32 %167)
  br label %169

169:                                              ; preds = %163, %91
  %170 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %171 = load i32, i32* @MBI_REG_WRITE, align 4
  %172 = load i64, i64* @SOC_DTS_OFFSET_PTMC, align 8
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @iosf_mbi_write(i32 %170, i32 %171, i64 %172, i32 %173)
  br label %175

175:                                              ; preds = %169, %79
  %176 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %177 = load i32, i32* @MBI_REG_WRITE, align 4
  %178 = load i64, i64* @SOC_DTS_OFFSET_PTPS, align 8
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @iosf_mbi_write(i32 %176, i32 %177, i64 %178, i32 %179)
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %175, %155, %68, %45
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @iosf_mbi_read(i32, i32, i64, i32*) #1

declare dso_local i32 @iosf_mbi_write(i32, i32, i64, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
