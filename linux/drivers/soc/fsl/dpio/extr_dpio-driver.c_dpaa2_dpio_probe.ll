; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-driver.c_dpaa2_dpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-driver.c_dpaa2_dpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.device }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.dpio_attr = type { i32, i32 }
%struct.dpaa2_io_desc = type { i32, i32, i32, i32, i8*, i32, i32 }
%struct.dpio_priv = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"MC portal allocation failed\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"dpio_open() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"dpio_reset() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"dpio_get_attributes() failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"dpio_enable() failed %d\0A\00", align 1
@cpus_unused_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"probe failed. Number of DPIOs exceeds NR_CPUS.\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"dpio_set_stashing_destination failed for cpu%d\0A\00", align 1
@MEMREMAP_WC = common dso_local global i32 0, align 4
@MEMREMAP_WB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"devm_memremap failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"devm_ioremap failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"fsl_mc_allocate_irqs failed. err=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"dpaa2_io_create failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"probed\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"   receives_notifications = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @dpaa2_dpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_dpio_probe(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca %struct.dpio_attr, align 4
  %5 = alloca %struct.dpaa2_io_desc, align 8
  %6 = alloca %struct.dpio_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %14 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %13, i32 0, i32 4
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dpio_priv* @devm_kzalloc(%struct.device* %15, i32 4, i32 %16)
  store %struct.dpio_priv* %17, %struct.dpio_priv** %6, align 8
  %18 = load %struct.dpio_priv*, %struct.dpio_priv** %6, align 8
  %19 = icmp ne %struct.dpio_priv* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %298

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %8, align 8
  %23 = load %struct.dpio_priv*, %struct.dpio_priv** %6, align 8
  %24 = call i32 @dev_set_drvdata(%struct.device* %22, %struct.dpio_priv* %23)
  %25 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %26 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %27 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %26, i32 0, i32 0
  %28 = call i32 @fsl_mc_portal_allocate(%struct.fsl_mc_device* %25, i32 0, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EPROBE_DEFER, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %298

36:                                               ; preds = %21
  %37 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %38 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %41 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %45 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %44, i32 0, i32 1
  %46 = call i32 @dpio_open(i32 %39, i32 0, i32 %43, i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %293

52:                                               ; preds = %36
  %53 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %54 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %57 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dpio_reset(i32 %55, i32 0, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %285

65:                                               ; preds = %52
  %66 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %67 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %70 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dpio_get_attributes(i32 %68, i32 0, i32 %71, %struct.dpio_attr* %4)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load %struct.device*, %struct.device** %8, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %284

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.dpio_attr, %struct.dpio_attr* %4, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 6
  store i32 %81, i32* %82, align 4
  %83 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %84 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %87 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dpio_enable(i32 %85, i32 0, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %79
  %93 = load %struct.device*, %struct.device** %8, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  br label %284

96:                                               ; preds = %79
  %97 = getelementptr inbounds %struct.dpio_attr, %struct.dpio_attr* %4, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 1, i32 0
  %102 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 0
  store i32 %101, i32* %102, align 8
  %103 = getelementptr inbounds %struct.dpio_attr, %struct.dpio_attr* %4, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 8
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 1, i32 0
  %108 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  %109 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %110 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 5
  store i32 %112, i32* %113, align 8
  %114 = load i32, i32* @cpus_unused_mask, align 4
  %115 = call i32 @cpumask_first(i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @nr_cpu_ids, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %96
  %120 = load %struct.device*, %struct.device** %8, align 8
  %121 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %120, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %122 = load i32, i32* @ERANGE, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %276

124:                                              ; preds = %96
  %125 = load i32, i32* %9, align 4
  %126 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 2
  store i32 %125, i32* %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @cpus_unused_mask, align 4
  %129 = call i32 @cpumask_clear_cpu(i32 %127, i32 %128)
  %130 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %131 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dpaa2_dpio_get_cluster_sdest(%struct.fsl_mc_device* %130, i32 %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %124
  %137 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %138 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %141 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @dpio_set_stashing_destination(i32 %139, i32 0, i32 %142, i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %136
  %148 = load %struct.device*, %struct.device** %8, align 8
  %149 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %147, %136
  br label %153

153:                                              ; preds = %152, %124
  %154 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %155 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %157, 3
  br i1 %158, label %159, label %175

159:                                              ; preds = %153
  %160 = load %struct.device*, %struct.device** %8, align 8
  %161 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %162 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %161, i32 0, i32 2
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 1
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %168 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %167, i32 0, i32 2
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 1
  %171 = call i32 @resource_size(%struct.TYPE_4__* %170)
  %172 = load i32, i32* @MEMREMAP_WC, align 4
  %173 = call i8* @devm_memremap(%struct.device* %160, i32 %166, i32 %171, i32 %172)
  %174 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 4
  store i8* %173, i8** %174, align 8
  br label %191

175:                                              ; preds = %153
  %176 = load %struct.device*, %struct.device** %8, align 8
  %177 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %178 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %177, i32 0, i32 2
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 2
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %184 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %183, i32 0, i32 2
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 2
  %187 = call i32 @resource_size(%struct.TYPE_4__* %186)
  %188 = load i32, i32* @MEMREMAP_WB, align 4
  %189 = call i8* @devm_memremap(%struct.device* %176, i32 %182, i32 %187, i32 %188)
  %190 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 4
  store i8* %189, i8** %190, align 8
  br label %191

191:                                              ; preds = %175, %159
  %192 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 4
  %193 = load i8*, i8** %192, align 8
  %194 = call i64 @IS_ERR(i8* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load %struct.device*, %struct.device** %8, align 8
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %197, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %199 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 4
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @PTR_ERR(i8* %200)
  store i32 %201, i32* %7, align 4
  br label %276

202:                                              ; preds = %191
  %203 = load %struct.device*, %struct.device** %8, align 8
  %204 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %205 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %204, i32 0, i32 2
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %211 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %210, i32 0, i32 2
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i64 1
  %214 = call i32 @resource_size(%struct.TYPE_4__* %213)
  %215 = call i32 @devm_ioremap(%struct.device* %203, i32 %209, i32 %214)
  %216 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 3
  store i32 %215, i32* %216, align 4
  %217 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %225, label %220

220:                                              ; preds = %202
  %221 = load i32, i32* @ENOMEM, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %7, align 4
  %223 = load %struct.device*, %struct.device** %8, align 8
  %224 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %223, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %276

225:                                              ; preds = %202
  %226 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %227 = call i32 @fsl_mc_allocate_irqs(%struct.fsl_mc_device* %226)
  store i32 %227, i32* %7, align 4
  %228 = load i32, i32* %7, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = load %struct.device*, %struct.device** %8, align 8
  %232 = load i32, i32* %7, align 4
  %233 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %231, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %232)
  br label %276

234:                                              ; preds = %225
  %235 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %236 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @register_dpio_irq_handlers(%struct.fsl_mc_device* %235, i32 %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  br label %273

242:                                              ; preds = %234
  %243 = load %struct.device*, %struct.device** %8, align 8
  %244 = call i32 @dpaa2_io_create(%struct.dpaa2_io_desc* %5, %struct.device* %243)
  %245 = load %struct.dpio_priv*, %struct.dpio_priv** %6, align 8
  %246 = getelementptr inbounds %struct.dpio_priv, %struct.dpio_priv* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 4
  %247 = load %struct.dpio_priv*, %struct.dpio_priv** %6, align 8
  %248 = getelementptr inbounds %struct.dpio_priv, %struct.dpio_priv* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %242
  %252 = load %struct.device*, %struct.device** %8, align 8
  %253 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %252, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %254 = load i32, i32* @ENOMEM, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %7, align 4
  br label %270

256:                                              ; preds = %242
  %257 = load %struct.device*, %struct.device** %8, align 8
  %258 = call i32 @dev_info(%struct.device* %257, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %259 = load %struct.device*, %struct.device** %8, align 8
  %260 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %5, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %259, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %261)
  %263 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %264 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %267 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @dpio_close(i32 %265, i32 0, i32 %268)
  store i32 0, i32* %2, align 4
  br label %300

270:                                              ; preds = %251
  %271 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %272 = call i32 @unregister_dpio_irq_handlers(%struct.fsl_mc_device* %271)
  br label %273

273:                                              ; preds = %270, %241
  %274 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %275 = call i32 @fsl_mc_free_irqs(%struct.fsl_mc_device* %274)
  br label %276

276:                                              ; preds = %273, %230, %220, %196, %119
  %277 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %278 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %281 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @dpio_disable(i32 %279, i32 0, i32 %282)
  br label %284

284:                                              ; preds = %276, %92, %75
  br label %285

285:                                              ; preds = %284, %62
  %286 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %287 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %290 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @dpio_close(i32 %288, i32 0, i32 %291)
  br label %293

293:                                              ; preds = %285, %49
  %294 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %295 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @fsl_mc_portal_free(i32 %296)
  br label %298

298:                                              ; preds = %293, %31, %20
  %299 = load i32, i32* %7, align 4
  store i32 %299, i32* %2, align 4
  br label %300

300:                                              ; preds = %298, %256
  %301 = load i32, i32* %2, align 4
  ret i32 %301
}

declare dso_local %struct.dpio_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.dpio_priv*) #1

declare dso_local i32 @fsl_mc_portal_allocate(%struct.fsl_mc_device*, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @dpio_open(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dpio_reset(i32, i32, i32) #1

declare dso_local i32 @dpio_get_attributes(i32, i32, i32, %struct.dpio_attr*) #1

declare dso_local i32 @dpio_enable(i32, i32, i32) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @dpaa2_dpio_get_cluster_sdest(%struct.fsl_mc_device*, i32) #1

declare dso_local i32 @dpio_set_stashing_destination(i32, i32, i32, i32) #1

declare dso_local i8* @devm_memremap(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @fsl_mc_allocate_irqs(%struct.fsl_mc_device*) #1

declare dso_local i32 @register_dpio_irq_handlers(%struct.fsl_mc_device*, i32) #1

declare dso_local i32 @dpaa2_io_create(%struct.dpaa2_io_desc*, %struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dpio_close(i32, i32, i32) #1

declare dso_local i32 @unregister_dpio_irq_handlers(%struct.fsl_mc_device*) #1

declare dso_local i32 @fsl_mc_free_irqs(%struct.fsl_mc_device*) #1

declare dso_local i32 @dpio_disable(i32, i32, i32) #1

declare dso_local i32 @fsl_mc_portal_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
