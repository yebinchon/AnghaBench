; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smem = type { i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.smem_header* }
%struct.smem_header = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_8__ }

@.str = private unnamed_addr constant [17 x i8] c"qcom,rpm-msg-ram\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"SMEM is not initialized by SBL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMEM_ITEM_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Unsupported SMEM version 0x%x\0A\00", align 1
@SMEM_HOST_APPS = common dso_local global i64 0, align 8
@SMEM_HOST_COUNT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to retrieve hwlock\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@__smem = common dso_local global %struct.qcom_smem* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"qcom-socinfo\00", align 1
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"failed to register socinfo device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_smem_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smem_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.smem_header*, align 8
  %5 = alloca %struct.qcom_smem*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 1, i32* %7, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @of_find_property(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  store i64 %23, i64* %6, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = add i64 32, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.qcom_smem* @devm_kzalloc(%struct.TYPE_8__* %25, i32 %28, i32 %29)
  store %struct.qcom_smem* %30, %struct.qcom_smem** %5, align 8
  %31 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %32 = icmp ne %struct.qcom_smem* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %182

36:                                               ; preds = %20
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %40 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %39, i32 0, i32 5
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %43 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @qcom_smem_map_memory(%struct.qcom_smem* %44, %struct.TYPE_8__* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %2, align 4
  br label %182

52:                                               ; preds = %36
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @qcom_smem_map_memory(%struct.qcom_smem* %56, %struct.TYPE_8__* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %59, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %2, align 4
  br label %182

63:                                               ; preds = %55, %52
  %64 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %65 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %64, i32 0, i32 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.smem_header*, %struct.smem_header** %68, align 8
  store %struct.smem_header* %69, %struct.smem_header** %4, align 8
  %70 = load %struct.smem_header*, %struct.smem_header** %4, align 8
  %71 = getelementptr inbounds %struct.smem_header, %struct.smem_header* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %81, label %75

75:                                               ; preds = %63
  %76 = load %struct.smem_header*, %struct.smem_header** %4, align 8
  %77 = getelementptr inbounds %struct.smem_header, %struct.smem_header* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75, %63
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %182

87:                                               ; preds = %75
  %88 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %89 = call i32 @qcom_smem_get_sbl_version(%struct.qcom_smem* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = ashr i32 %90, 16
  switch i32 %91, label %108 [
    i32 128, label %92
    i32 129, label %104
  ]

92:                                               ; preds = %87
  %93 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %94 = call i32 @qcom_smem_set_global_partition(%struct.qcom_smem* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %2, align 4
  br label %182

99:                                               ; preds = %92
  %100 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %101 = call i32 @qcom_smem_get_item_count(%struct.qcom_smem* %100)
  %102 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %103 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  br label %115

104:                                              ; preds = %87
  %105 = load i32, i32* @SMEM_ITEM_COUNT, align 4
  %106 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %107 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  br label %115

108:                                              ; preds = %87
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load i32, i32* %9, align 4
  %112 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %182

115:                                              ; preds = %104, %99
  %116 = load i64, i64* @SMEM_HOST_APPS, align 8
  %117 = load i64, i64* @SMEM_HOST_COUNT, align 8
  %118 = icmp sge i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @BUILD_BUG_ON(i32 %119)
  %121 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %122 = load i64, i64* @SMEM_HOST_APPS, align 8
  %123 = call i32 @qcom_smem_enumerate_partitions(%struct.qcom_smem* %121, i64 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %115
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @ENOENT, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp ne i32 %127, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %2, align 4
  br label %182

133:                                              ; preds = %126, %115
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @of_hwspin_lock_get_id(i32 %137, i32 0)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %133
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @EPROBE_DEFER, align 4
  %144 = sub nsw i32 0, %143
  %145 = icmp ne i32 %142, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %148, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %150

150:                                              ; preds = %146, %141
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %2, align 4
  br label %182

152:                                              ; preds = %133
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @hwspin_lock_request_specific(i32 %153)
  %155 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %156 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %158 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %152
  %162 = load i32, i32* @ENXIO, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %182

164:                                              ; preds = %152
  %165 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  store %struct.qcom_smem* %165, %struct.qcom_smem** @__smem, align 8
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %169 = call i32 @platform_device_register_data(%struct.TYPE_8__* %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %168, i32* null, i32 0)
  %170 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %171 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %173 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @IS_ERR(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %164
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = call i32 @dev_dbg(%struct.TYPE_8__* %179, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %181

181:                                              ; preds = %177, %164
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %181, %161, %150, %131, %108, %97, %81, %61, %50, %33
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i64 @of_find_property(i32, i8*, i32*) #1

declare dso_local %struct.qcom_smem* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @qcom_smem_map_memory(%struct.qcom_smem*, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @qcom_smem_get_sbl_version(%struct.qcom_smem*) #1

declare dso_local i32 @qcom_smem_set_global_partition(%struct.qcom_smem*) #1

declare dso_local i32 @qcom_smem_get_item_count(%struct.qcom_smem*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @qcom_smem_enumerate_partitions(%struct.qcom_smem*, i64) #1

declare dso_local i32 @of_hwspin_lock_get_id(i32, i32) #1

declare dso_local i32 @hwspin_lock_request_specific(i32) #1

declare dso_local i32 @platform_device_register_data(%struct.TYPE_8__*, i8*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
