; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_portal.c_qman_portal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_portal.c_qman_portal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.qm_portal_config = type { i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.resource = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failing probe due to qman probe error\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__qman_portals_probed = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@DPAA_PORTAL_CE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't get %pOF property 'reg::CE'\0A\00", align 1
@DPAA_PORTAL_CI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Can't get %pOF property 'reg::CI'\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"cell-index\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Can't get %pOF property 'cell-index'\0A\00", align 1
@QBMAN_MEMREMAP_ATTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"memremap::CE failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"ioremap::CI failed\0A\00", align 1
@qman_lock = common dso_local global i32 0, align 4
@portal_cpus = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"dma_set_mask() failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"portal init failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to shutdown frame queue %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qman_portal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_portal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.qm_portal_config*, align 8
  %7 = alloca [2 x %struct.resource*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = call i32 (...) @qman_is_probed()
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EPROBE_DEFER, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %211

24:                                               ; preds = %1
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %211

33:                                               ; preds = %24
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.qm_portal_config* @devm_kmalloc(%struct.device* %34, i32 32, i32 %35)
  store %struct.qm_portal_config* %36, %struct.qm_portal_config** %6, align 8
  %37 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %38 = icmp ne %struct.qm_portal_config* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  store i32 -1, i32* @__qman_portals_probed, align 4
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %211

42:                                               ; preds = %33
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %45 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %44, i32 0, i32 6
  store %struct.device* %43, %struct.device** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load i32, i32* @IORESOURCE_MEM, align 4
  %48 = load i32, i32* @DPAA_PORTAL_CE, align 4
  %49 = call %struct.resource* @platform_get_resource(%struct.platform_device* %46, i32 %47, i32 %48)
  %50 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 0
  store %struct.resource* %49, %struct.resource** %50, align 16
  %51 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 0
  %52 = load %struct.resource*, %struct.resource** %51, align 16
  %53 = icmp ne %struct.resource* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %42
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.device_node*, %struct.device_node** %5, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %56)
  br label %208

58:                                               ; preds = %42
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load i32, i32* @IORESOURCE_MEM, align 4
  %61 = load i32, i32* @DPAA_PORTAL_CI, align 4
  %62 = call %struct.resource* @platform_get_resource(%struct.platform_device* %59, i32 %60, i32 %61)
  %63 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 1
  store %struct.resource* %62, %struct.resource** %63, align 8
  %64 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 1
  %65 = load %struct.resource*, %struct.resource** %64, align 8
  %66 = icmp ne %struct.resource* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.device_node*, %struct.device_node** %5, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %69)
  br label %208

71:                                               ; preds = %58
  %72 = load %struct.device_node*, %struct.device_node** %5, align 8
  %73 = call i32 @of_property_read_u32(%struct.device_node* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %12)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load %struct.device_node*, %struct.device_node** %5, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %78)
  store i32 -1, i32* @__qman_portals_probed, align 4
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %2, align 4
  br label %211

81:                                               ; preds = %71
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %84 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %86 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %85, i32 0, i32 0
  store i32 -1, i32* %86, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = call i32 @platform_get_irq(%struct.platform_device* %87, i32 0)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %208

92:                                               ; preds = %81
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %95 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 0
  %97 = load %struct.resource*, %struct.resource** %96, align 16
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 0
  %101 = load %struct.resource*, %struct.resource** %100, align 16
  %102 = call i32 @resource_size(%struct.resource* %101)
  %103 = load i32, i32* @QBMAN_MEMREMAP_ATTR, align 4
  %104 = call i32 @memremap(i32 %99, i32 %102, i32 %103)
  %105 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %106 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %108 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %92
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %208

114:                                              ; preds = %92
  %115 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 1
  %116 = load %struct.resource*, %struct.resource** %115, align 8
  %117 = getelementptr inbounds %struct.resource, %struct.resource* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 1
  %120 = load %struct.resource*, %struct.resource** %119, align 8
  %121 = call i32 @resource_size(%struct.resource* %120)
  %122 = call i32 @ioremap(i32 %118, i32 %121)
  %123 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %124 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %126 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %114
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %203

132:                                              ; preds = %114
  %133 = call i32 (...) @qm_get_pools_sdqcr()
  %134 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %135 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = call i32 @spin_lock(i32* @qman_lock)
  %137 = call i32 @cpumask_next_zero(i32 -1, i32* @portal_cpus)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @nr_cpu_ids, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  store i32 1, i32* @__qman_portals_probed, align 4
  %142 = call i32 @spin_unlock(i32* @qman_lock)
  store i32 0, i32* %2, align 4
  br label %211

143:                                              ; preds = %132
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @cpumask_set_cpu(i32 %144, i32* @portal_cpus)
  %146 = call i32 @spin_unlock(i32* @qman_lock)
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %149 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = call i32 @DMA_BIT_MASK(i32 40)
  %152 = call i64 @dma_set_mask(%struct.device* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %143
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %155, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %198

157:                                              ; preds = %143
  %158 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %159 = call i32 @init_pcfg(%struct.qm_portal_config* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %198

164:                                              ; preds = %157
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @cpu_online(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @qman_offline_cpu(i32 %169)
  br label %171

171:                                              ; preds = %168, %164
  %172 = load i32, i32* @__qman_portals_probed, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %197

174:                                              ; preds = %171
  %175 = call i64 (...) @qman_requires_cleanup()
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %174
  store i32 0, i32* %11, align 4
  br label %178

178:                                              ; preds = %192, %177
  %179 = load i32, i32* %11, align 4
  %180 = call i32 (...) @qm_get_fqid_maxcnt()
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %195

182:                                              ; preds = %178
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @qman_shutdown_fq(i32 %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load %struct.device*, %struct.device** %4, align 8
  %189 = load i32, i32* %11, align 4
  %190 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %188, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %189)
  br label %198

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %11, align 4
  br label %178

195:                                              ; preds = %178
  %196 = call i32 (...) @qman_done_cleanup()
  br label %197

197:                                              ; preds = %195, %174, %171
  store i32 0, i32* %2, align 4
  br label %211

198:                                              ; preds = %187, %161, %154
  %199 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %200 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @iounmap(i32 %201)
  br label %203

203:                                              ; preds = %198, %129
  %204 = load %struct.qm_portal_config*, %struct.qm_portal_config** %6, align 8
  %205 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @memunmap(i32 %206)
  br label %208

208:                                              ; preds = %203, %111, %91, %67, %54
  store i32 -1, i32* @__qman_portals_probed, align 4
  %209 = load i32, i32* @ENXIO, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %208, %197, %141, %76, %39, %27, %21
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i32 @qman_is_probed(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.qm_portal_config* @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @memremap(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @qm_get_pools_sdqcr(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpumask_next_zero(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i64 @dma_set_mask(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @init_pcfg(%struct.qm_portal_config*) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @qman_offline_cpu(i32) #1

declare dso_local i64 @qman_requires_cleanup(...) #1

declare dso_local i32 @qm_get_fqid_maxcnt(...) #1

declare dso_local i32 @qman_shutdown_fq(i32) #1

declare dso_local i32 @qman_done_cleanup(...) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @memunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
