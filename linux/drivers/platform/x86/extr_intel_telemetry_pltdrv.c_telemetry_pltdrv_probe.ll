; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_pltdrv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_pltdrv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.telemetry_plt_config = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i8*, i32 }
%struct.TYPE_3__ = type { i32, i8*, i32 }
%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }
%struct.x86_cpu_id = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@telemetry_cpu_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@telm_conf = common dso_local global %struct.telemetry_plt_config* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@telm_pltops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TELEMETRY Set Pltops Failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"TELEMETRY Setup Failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @telemetry_pltdrv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telemetry_pltdrv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.x86_cpu_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.resource* null, %struct.resource** %4, align 8
  store %struct.resource* null, %struct.resource** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @telemetry_cpu_ids, align 4
  %12 = call %struct.x86_cpu_id* @x86_match_cpu(i32 %11)
  store %struct.x86_cpu_id* %12, %struct.x86_cpu_id** %6, align 8
  %13 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %6, align 8
  %14 = icmp ne %struct.x86_cpu_id* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %207

18:                                               ; preds = %1
  %19 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %6, align 8
  %20 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.telemetry_plt_config*
  store %struct.telemetry_plt_config* %22, %struct.telemetry_plt_config** @telm_conf, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %4, align 8
  %26 = load %struct.resource*, %struct.resource** %4, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %158

31:                                               ; preds = %18
  %32 = load %struct.resource*, %struct.resource** %4, align 8
  %33 = call i32 @resource_size(%struct.resource* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.resource*, %struct.resource** %4, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @devm_request_mem_region(i32* %35, i32 %38, i32 %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %158

48:                                               ; preds = %31
  %49 = load %struct.resource*, %struct.resource** %4, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %53 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %57 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load i32, i32* @IORESOURCE_MEM, align 4
  %61 = call %struct.resource* @platform_get_resource(%struct.platform_device* %59, i32 %60, i32 1)
  store %struct.resource* %61, %struct.resource** %5, align 8
  %62 = load %struct.resource*, %struct.resource** %5, align 8
  %63 = icmp ne %struct.resource* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %48
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %158

67:                                               ; preds = %48
  %68 = load %struct.resource*, %struct.resource** %5, align 8
  %69 = call i32 @resource_size(%struct.resource* %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.resource*, %struct.resource** %5, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @devm_request_mem_region(i32* %71, i32 %74, i32 %75, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %67
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %158

84:                                               ; preds = %67
  %85 = load %struct.resource*, %struct.resource** %5, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %89 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %93 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %96 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %100 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @ioremap_nocache(i32 %98, i32 %102)
  %104 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %105 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %108 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %84
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %8, align 4
  br label %158

115:                                              ; preds = %84
  %116 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %117 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %121 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @ioremap_nocache(i32 %119, i32 %123)
  %125 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %126 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  %128 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %129 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %115
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %8, align 4
  br label %158

136:                                              ; preds = %115
  %137 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %138 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %137, i32 0, i32 3
  %139 = call i32 @mutex_init(i32* %138)
  %140 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %141 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %140, i32 0, i32 2
  %142 = call i32 @mutex_init(i32* %141)
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = call i32 @telemetry_setup(%struct.platform_device* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %158

148:                                              ; preds = %136
  %149 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %150 = call i32 @telemetry_set_pltdata(i32* @telm_pltops, %struct.telemetry_plt_config* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @dev_err(i32* %155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %158

157:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %207

158:                                              ; preds = %153, %147, %133, %112, %81, %64, %45, %28
  %159 = load %struct.resource*, %struct.resource** %4, align 8
  %160 = icmp ne %struct.resource* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load %struct.resource*, %struct.resource** %4, align 8
  %163 = getelementptr inbounds %struct.resource, %struct.resource* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.resource*, %struct.resource** %4, align 8
  %166 = call i32 @resource_size(%struct.resource* %165)
  %167 = call i32 @release_mem_region(i32 %164, i32 %166)
  br label %168

168:                                              ; preds = %161, %158
  %169 = load %struct.resource*, %struct.resource** %5, align 8
  %170 = icmp ne %struct.resource* %169, null
  br i1 %170, label %171, label %178

171:                                              ; preds = %168
  %172 = load %struct.resource*, %struct.resource** %5, align 8
  %173 = getelementptr inbounds %struct.resource, %struct.resource* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.resource*, %struct.resource** %5, align 8
  %176 = call i32 @resource_size(%struct.resource* %175)
  %177 = call i32 @release_mem_region(i32 %174, i32 %176)
  br label %178

178:                                              ; preds = %171, %168
  %179 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %180 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %186 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @iounmap(i8* %188)
  br label %190

190:                                              ; preds = %184, %178
  %191 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %192 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = load %struct.telemetry_plt_config*, %struct.telemetry_plt_config** @telm_conf, align 8
  %198 = getelementptr inbounds %struct.telemetry_plt_config, %struct.telemetry_plt_config* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @iounmap(i8* %200)
  br label %202

202:                                              ; preds = %196, %190
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = call i32 @dev_err(i32* %204, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %202, %157, %15
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local %struct.x86_cpu_id* @x86_match_cpu(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_request_mem_region(i32*, i32, i32, i32) #1

declare dso_local i8* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @telemetry_setup(%struct.platform_device*) #1

declare dso_local i32 @telemetry_set_pltdata(i32*, %struct.telemetry_plt_config*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @iounmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
