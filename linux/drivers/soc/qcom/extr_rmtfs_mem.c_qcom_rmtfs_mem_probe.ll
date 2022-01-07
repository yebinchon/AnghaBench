; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rmtfs_mem.c_qcom_rmtfs_mem_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rmtfs_mem.c_qcom_rmtfs_mem_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.qcom_scm_vmperm = type { i8*, i8* }
%struct.reserved_mem = type { i32, i32 }
%struct.qcom_rmtfs_mem = type { %struct.TYPE_12__, %struct.TYPE_14__, i32, i32, i32, i32, i8* }
%struct.TYPE_12__ = type { i32, i32*, i8*, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to acquire memory region\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"qcom,client-id\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to parse \22qcom,client-id\22\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_rmtfs_mem_groups = common dso_local global i32 0, align 4
@qcom_rmtfs_mem_release_device = common dso_local global i32 0, align 4
@MEMREMAP_WC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to remap rmtfs_mem region\0A\00", align 1
@qcom_rmtfs_mem_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"qcom_rmtfs_mem%d\00", align 1
@rmtfs_class = common dso_local global i32 0, align 4
@qcom_rmtfs_mem_major = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to add cdev: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"qcom,vmid\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to parse qcom,vmid\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@QCOM_SCM_VMID_HLOS = common dso_local global i8* null, align 8
@QCOM_SCM_PERM_RW = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"assign memory failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_rmtfs_mem_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_rmtfs_mem_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca [2 x %struct.qcom_scm_vmperm], align 16
  %6 = alloca %struct.reserved_mem*, align 8
  %7 = alloca %struct.qcom_rmtfs_mem*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call %struct.reserved_mem* @of_reserved_mem_lookup(%struct.device_node* %15)
  store %struct.reserved_mem* %16, %struct.reserved_mem** %6, align 8
  %17 = load %struct.reserved_mem*, %struct.reserved_mem** %6, align 8
  %18 = icmp ne %struct.reserved_mem* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %210

25:                                               ; preds = %1
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call i32 @of_property_read_u32(%struct.device_node* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %2, align 4
  br label %210

35:                                               ; preds = %25
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.qcom_rmtfs_mem* @kzalloc(i32 72, i32 %36)
  store %struct.qcom_rmtfs_mem* %37, %struct.qcom_rmtfs_mem** %7, align 8
  %38 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %39 = icmp ne %struct.qcom_rmtfs_mem* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %210

43:                                               ; preds = %35
  %44 = load %struct.reserved_mem*, %struct.reserved_mem** %6, align 8
  %45 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %48 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %51 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.reserved_mem*, %struct.reserved_mem** %6, align 8
  %53 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %56 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %58 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %57, i32 0, i32 0
  %59 = call i32 @device_initialize(%struct.TYPE_12__* %58)
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %63 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 5
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %64, align 8
  %65 = load i32, i32* @qcom_rmtfs_mem_groups, align 4
  %66 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %67 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @qcom_rmtfs_mem_release_device, align 4
  %70 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %71 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 8
  %73 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %74 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %73, i32 0, i32 0
  %75 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %76 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %79 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MEMREMAP_WC, align 4
  %82 = call i32 @devm_memremap(%struct.TYPE_12__* %74, i32 %77, i32 %80, i32 %81)
  %83 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %84 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %86 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %43
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %95 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @PTR_ERR(i32 %96)
  store i32 %97, i32* %10, align 4
  br label %205

98:                                               ; preds = %43
  %99 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %100 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %99, i32 0, i32 1
  %101 = call i32 @cdev_init(%struct.TYPE_14__* %100, i32* @qcom_rmtfs_mem_fops)
  %102 = load i32, i32* @THIS_MODULE, align 4
  %103 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %104 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %107 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %106, i32 0, i32 0
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @dev_set_name(%struct.TYPE_12__* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  %110 = load i8*, i8** %8, align 8
  %111 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %112 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  store i8* %110, i8** %113, align 8
  %114 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %115 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  store i32* @rmtfs_class, i32** %116, align 8
  %117 = load i32, i32* @qcom_rmtfs_mem_major, align 4
  %118 = call i32 @MAJOR(i32 %117)
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @MKDEV(i32 %118, i8* %119)
  %121 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %122 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %125 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %124, i32 0, i32 1
  %126 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %127 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %126, i32 0, i32 0
  %128 = call i32 @cdev_device_add(%struct.TYPE_14__* %125, %struct.TYPE_12__* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %98
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load i32, i32* %10, align 4
  %135 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  br label %205

136:                                              ; preds = %98
  %137 = load %struct.device_node*, %struct.device_node** %4, align 8
  %138 = call i32 @of_property_read_u32(%struct.device_node* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %9)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  %145 = icmp ne i32 %142, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %148, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %199

150:                                              ; preds = %141, %136
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %193, label %153

153:                                              ; preds = %150
  %154 = call i32 (...) @qcom_scm_is_available()
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* @EPROBE_DEFER, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %10, align 4
  br label %199

159:                                              ; preds = %153
  %160 = load i8*, i8** @QCOM_SCM_VMID_HLOS, align 8
  %161 = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], [2 x %struct.qcom_scm_vmperm]* %5, i64 0, i64 0
  %162 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** @QCOM_SCM_PERM_RW, align 8
  %164 = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], [2 x %struct.qcom_scm_vmperm]* %5, i64 0, i64 0
  %165 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 16
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], [2 x %struct.qcom_scm_vmperm]* %5, i64 0, i64 1
  %168 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load i8*, i8** @QCOM_SCM_PERM_RW, align 8
  %170 = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], [2 x %struct.qcom_scm_vmperm]* %5, i64 0, i64 1
  %171 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 16
  %172 = load i8*, i8** @QCOM_SCM_VMID_HLOS, align 8
  %173 = call i32 @BIT(i8* %172)
  %174 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %175 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %177 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %180 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %183 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %182, i32 0, i32 2
  %184 = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], [2 x %struct.qcom_scm_vmperm]* %5, i64 0, i64 0
  %185 = call i32 @qcom_scm_assign_mem(i32 %178, i32 %181, i32* %183, %struct.qcom_scm_vmperm* %184, i32 2)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %159
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %190, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %199

192:                                              ; preds = %159
  br label %193

193:                                              ; preds = %192, %150
  br label %194

194:                                              ; preds = %193
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %198 = call i32 @dev_set_drvdata(%struct.TYPE_13__* %196, %struct.qcom_rmtfs_mem* %197)
  store i32 0, i32* %2, align 4
  br label %210

199:                                              ; preds = %188, %156, %146
  %200 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %201 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %200, i32 0, i32 1
  %202 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %203 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %202, i32 0, i32 0
  %204 = call i32 @cdev_device_del(%struct.TYPE_14__* %201, %struct.TYPE_12__* %203)
  br label %205

205:                                              ; preds = %199, %131, %90
  %206 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %7, align 8
  %207 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %206, i32 0, i32 0
  %208 = call i32 @put_device(%struct.TYPE_12__* %207)
  %209 = load i32, i32* %10, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %205, %194, %40, %30, %19
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.reserved_mem* @of_reserved_mem_lookup(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local %struct.qcom_rmtfs_mem* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_12__*) #1

declare dso_local i32 @devm_memremap(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @MKDEV(i32, i8*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @cdev_device_add(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @qcom_scm_is_available(...) #1

declare dso_local i32 @BIT(i8*) #1

declare dso_local i32 @qcom_scm_assign_mem(i32, i32, i32*, %struct.qcom_scm_vmperm*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_13__*, %struct.qcom_rmtfs_mem*) #1

declare dso_local i32 @cdev_device_del(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @put_device(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
