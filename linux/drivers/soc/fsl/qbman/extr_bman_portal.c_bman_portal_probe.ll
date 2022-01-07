; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman_portal.c_bman_portal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman_portal.c_bman_portal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.bm_portal_config = type { i32, i32, i32, i32, %struct.device* }
%struct.resource = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failing probe due to bman probe error\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__bman_portals_probed = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@DPAA_PORTAL_CE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't get %pOF property 'reg::CE'\0A\00", align 1
@DPAA_PORTAL_CI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Can't get %pOF property 'reg::CI'\0A\00", align 1
@QBMAN_MEMREMAP_ATTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"memremap::CE failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ioremap::CI failed\0A\00", align 1
@bman_lock = common dso_local global i32 0, align 4
@portal_cpus = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"portal init failed\0A\00", align 1
@BM_POOL_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to shutdown bpool %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bman_portal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bman_portal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.bm_portal_config*, align 8
  %7 = alloca [2 x %struct.resource*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = call i32 (...) @bman_is_probed()
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EPROBE_DEFER, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %186

23:                                               ; preds = %1
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %186

32:                                               ; preds = %23
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.bm_portal_config* @devm_kmalloc(%struct.device* %33, i32 24, i32 %34)
  store %struct.bm_portal_config* %35, %struct.bm_portal_config** %6, align 8
  %36 = load %struct.bm_portal_config*, %struct.bm_portal_config** %6, align 8
  %37 = icmp ne %struct.bm_portal_config* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  store i32 -1, i32* @__bman_portals_probed, align 4
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %186

41:                                               ; preds = %32
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.bm_portal_config*, %struct.bm_portal_config** %6, align 8
  %44 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %43, i32 0, i32 4
  store %struct.device* %42, %struct.device** %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load i32, i32* @IORESOURCE_MEM, align 4
  %47 = load i32, i32* @DPAA_PORTAL_CE, align 4
  %48 = call %struct.resource* @platform_get_resource(%struct.platform_device* %45, i32 %46, i32 %47)
  %49 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 0
  store %struct.resource* %48, %struct.resource** %49, align 16
  %50 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 0
  %51 = load %struct.resource*, %struct.resource** %50, align 16
  %52 = icmp ne %struct.resource* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %41
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.device_node*, %struct.device_node** %5, align 8
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %55)
  br label %183

57:                                               ; preds = %41
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_MEM, align 4
  %60 = load i32, i32* @DPAA_PORTAL_CI, align 4
  %61 = call %struct.resource* @platform_get_resource(%struct.platform_device* %58, i32 %59, i32 %60)
  %62 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 1
  store %struct.resource* %61, %struct.resource** %62, align 8
  %63 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 1
  %64 = load %struct.resource*, %struct.resource** %63, align 8
  %65 = icmp ne %struct.resource* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %57
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.device_node*, %struct.device_node** %5, align 8
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %68)
  br label %183

70:                                               ; preds = %57
  %71 = load %struct.bm_portal_config*, %struct.bm_portal_config** %6, align 8
  %72 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = call i32 @platform_get_irq(%struct.platform_device* %73, i32 0)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %183

78:                                               ; preds = %70
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.bm_portal_config*, %struct.bm_portal_config** %6, align 8
  %81 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 0
  %83 = load %struct.resource*, %struct.resource** %82, align 16
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 0
  %87 = load %struct.resource*, %struct.resource** %86, align 16
  %88 = call i32 @resource_size(%struct.resource* %87)
  %89 = load i32, i32* @QBMAN_MEMREMAP_ATTR, align 4
  %90 = call i32 @memremap(i32 %85, i32 %88, i32 %89)
  %91 = load %struct.bm_portal_config*, %struct.bm_portal_config** %6, align 8
  %92 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.bm_portal_config*, %struct.bm_portal_config** %6, align 8
  %94 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %78
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %183

100:                                              ; preds = %78
  %101 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 1
  %102 = load %struct.resource*, %struct.resource** %101, align 8
  %103 = getelementptr inbounds %struct.resource, %struct.resource* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds [2 x %struct.resource*], [2 x %struct.resource*]* %7, i64 0, i64 1
  %106 = load %struct.resource*, %struct.resource** %105, align 8
  %107 = call i32 @resource_size(%struct.resource* %106)
  %108 = call i32 @ioremap(i32 %104, i32 %107)
  %109 = load %struct.bm_portal_config*, %struct.bm_portal_config** %6, align 8
  %110 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.bm_portal_config*, %struct.bm_portal_config** %6, align 8
  %112 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %100
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %178

118:                                              ; preds = %100
  %119 = call i32 @spin_lock(i32* @bman_lock)
  %120 = call i32 @cpumask_next_zero(i32 -1, i32* @portal_cpus)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @nr_cpu_ids, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  store i32 1, i32* @__bman_portals_probed, align 4
  %125 = call i32 @spin_unlock(i32* @bman_lock)
  store i32 0, i32* %2, align 4
  br label %186

126:                                              ; preds = %118
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @cpumask_set_cpu(i32 %127, i32* @portal_cpus)
  %129 = call i32 @spin_unlock(i32* @bman_lock)
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.bm_portal_config*, %struct.bm_portal_config** %6, align 8
  %132 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.bm_portal_config*, %struct.bm_portal_config** %6, align 8
  %134 = call i32 @init_pcfg(%struct.bm_portal_config* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %126
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %173

139:                                              ; preds = %126
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @cpu_online(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @bman_offline_cpu(i32 %144)
  br label %146

146:                                              ; preds = %143, %139
  %147 = load i32, i32* @__bman_portals_probed, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %172

149:                                              ; preds = %146
  %150 = call i64 (...) @bman_requires_cleanup()
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %149
  store i32 0, i32* %11, align 4
  br label %153

153:                                              ; preds = %167, %152
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @BM_POOL_MAX, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %153
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @bm_shutdown_pool(i32 %158)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load %struct.device*, %struct.device** %4, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %164)
  br label %173

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %153

170:                                              ; preds = %153
  %171 = call i32 (...) @bman_done_cleanup()
  br label %172

172:                                              ; preds = %170, %149, %146
  store i32 0, i32* %2, align 4
  br label %186

173:                                              ; preds = %162, %136
  %174 = load %struct.bm_portal_config*, %struct.bm_portal_config** %6, align 8
  %175 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @iounmap(i32 %176)
  br label %178

178:                                              ; preds = %173, %115
  %179 = load %struct.bm_portal_config*, %struct.bm_portal_config** %6, align 8
  %180 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @memunmap(i32 %181)
  br label %183

183:                                              ; preds = %178, %97, %77, %66, %53
  store i32 -1, i32* @__bman_portals_probed, align 4
  %184 = load i32, i32* @ENXIO, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %183, %172, %124, %38, %26, %20
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @bman_is_probed(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.bm_portal_config* @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @memremap(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpumask_next_zero(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @init_pcfg(%struct.bm_portal_config*) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @bman_offline_cpu(i32) #1

declare dso_local i64 @bman_requires_cleanup(...) #1

declare dso_local i32 @bm_shutdown_pool(i32) #1

declare dso_local i32 @bman_done_cleanup(...) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @memunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
