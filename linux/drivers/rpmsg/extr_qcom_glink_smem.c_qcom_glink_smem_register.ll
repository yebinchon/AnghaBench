; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_smem.c_qcom_glink_smem_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_smem.c_qcom_glink_smem_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type opaque
%struct.device = type { %struct.device_node*, %struct.device*, i32 }
%struct.device_node = type { i32 }
%struct.glink_smem_pipe = type { %struct.TYPE_3__, i64*, i64*, i8*, i64* }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_glink_smem_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s:%pOFn\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to register glink edge\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"qcom,remote-pid\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to parse qcom,remote-pid\0A\00", align 1
@SMEM_GLINK_NATIVE_XPRT_DESCRIPTOR = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to allocate glink descriptors\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to acquire xprt descriptor\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"glink descriptor of invalid size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMEM_GLINK_NATIVE_XPRT_FIFO_0 = common dso_local global i32 0, align 4
@SZ_16K = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to allocate TX fifo\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"failed to acquire TX fifo\0A\00", align 1
@glink_smem_rx_avail = common dso_local global i32 0, align 4
@glink_smem_rx_peak = common dso_local global i32 0, align 4
@glink_smem_rx_advance = common dso_local global i32 0, align 4
@glink_smem_tx_avail = common dso_local global i32 0, align 4
@glink_smem_tx_write = common dso_local global i32 0, align 4
@GLINK_FEATURE_INTENT_REUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qcom_glink* @qcom_glink_smem_register(%struct.device* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.qcom_glink*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.glink_smem_pipe*, align 8
  %7 = alloca %struct.glink_smem_pipe*, align 8
  %8 = alloca %struct.qcom_glink*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.device* @kzalloc(i32 24, i32 %14)
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load %struct.device*, %struct.device** %9, align 8
  %17 = icmp ne %struct.device* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i64* @ERR_PTR(i32 %20)
  %22 = bitcast i64* %21 to %struct.qcom_glink*
  store %struct.qcom_glink* %22, %struct.qcom_glink** %3, align 8
  br label %221

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 1
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = load %struct.device*, %struct.device** %9, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  store %struct.device_node* %27, %struct.device_node** %29, align 8
  %30 = load i32, i32* @qcom_glink_smem_release, align 4
  %31 = load %struct.device*, %struct.device** %9, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 1
  %36 = load %struct.device*, %struct.device** %35, align 8
  %37 = call i32 @dev_name(%struct.device* %36)
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32 @dev_set_name(%struct.device* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %37, %struct.device_node* %38)
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = call i32 @device_register(%struct.device* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %23
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.device*, %struct.device** %9, align 8
  %47 = call i32 @put_device(%struct.device* %46)
  %48 = load i32, i32* %13, align 4
  %49 = call i64* @ERR_PTR(i32 %48)
  %50 = bitcast i64* %49 to %struct.qcom_glink*
  store %struct.qcom_glink* %50, %struct.qcom_glink** %3, align 8
  br label %221

51:                                               ; preds = %23
  %52 = load %struct.device*, %struct.device** %9, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load %struct.device_node*, %struct.device_node** %53, align 8
  %55 = call i32 @of_property_read_u32(%struct.device_node* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %10)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.device*, %struct.device** %9, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %215

61:                                               ; preds = %51
  %62 = load %struct.device*, %struct.device** %9, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.glink_smem_pipe* @devm_kzalloc(%struct.device* %62, i32 56, i32 %63)
  store %struct.glink_smem_pipe* %64, %struct.glink_smem_pipe** %6, align 8
  %65 = load %struct.device*, %struct.device** %9, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.glink_smem_pipe* @devm_kzalloc(%struct.device* %65, i32 56, i32 %66)
  store %struct.glink_smem_pipe* %67, %struct.glink_smem_pipe** %7, align 8
  %68 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %6, align 8
  %69 = icmp ne %struct.glink_smem_pipe* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %7, align 8
  %72 = icmp ne %struct.glink_smem_pipe* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70, %61
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %13, align 4
  br label %215

76:                                               ; preds = %70
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* @SMEM_GLINK_NATIVE_XPRT_DESCRIPTOR, align 4
  %79 = call i32 @qcom_smem_alloc(i8* %77, i32 %78, i32 32)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @EEXIST, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %9, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %215

90:                                               ; preds = %82, %76
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* @SMEM_GLINK_NATIVE_XPRT_DESCRIPTOR, align 4
  %93 = call i8* @qcom_smem_get(i8* %91, i32 %92, i64* %12)
  %94 = bitcast i8* %93 to i64*
  store i64* %94, i64** %11, align 8
  %95 = load i64*, i64** %11, align 8
  %96 = call i64 @IS_ERR(i64* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  %99 = load %struct.device*, %struct.device** %9, align 8
  %100 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i64*, i64** %11, align 8
  %102 = call i32 @PTR_ERR(i64* %101)
  store i32 %102, i32* %13, align 4
  br label %215

103:                                              ; preds = %90
  %104 = load i64, i64* %12, align 8
  %105 = icmp ne i64 %104, 32
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.device*, %struct.device** %9, align 8
  %108 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %13, align 4
  br label %215

111:                                              ; preds = %103
  %112 = load i64*, i64** %11, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %7, align 8
  %115 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %114, i32 0, i32 2
  store i64* %113, i64** %115, align 8
  %116 = load i64*, i64** %11, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 1
  %118 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %7, align 8
  %119 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %118, i32 0, i32 1
  store i64* %117, i64** %119, align 8
  %120 = load i64*, i64** %11, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 2
  %122 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %6, align 8
  %123 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %122, i32 0, i32 2
  store i64* %121, i64** %123, align 8
  %124 = load i64*, i64** %11, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 3
  %126 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %6, align 8
  %127 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %126, i32 0, i32 1
  store i64* %125, i64** %127, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* @SMEM_GLINK_NATIVE_XPRT_FIFO_0, align 4
  %130 = load i32, i32* @SZ_16K, align 4
  %131 = call i32 @qcom_smem_alloc(i8* %128, i32 %129, i32 %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %111
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @EEXIST, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp ne i32 %135, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.device*, %struct.device** %9, align 8
  %141 = call i32 @dev_err(%struct.device* %140, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %215

142:                                              ; preds = %134, %111
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* @SMEM_GLINK_NATIVE_XPRT_FIFO_0, align 4
  %145 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %7, align 8
  %146 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = call i8* @qcom_smem_get(i8* %143, i32 %144, i64* %147)
  %149 = bitcast i8* %148 to i64*
  %150 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %7, align 8
  %151 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %150, i32 0, i32 4
  store i64* %149, i64** %151, align 8
  %152 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %7, align 8
  %153 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %152, i32 0, i32 4
  %154 = load i64*, i64** %153, align 8
  %155 = call i64 @IS_ERR(i64* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %142
  %158 = load %struct.device*, %struct.device** %9, align 8
  %159 = call i32 @dev_err(%struct.device* %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %160 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %7, align 8
  %161 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %160, i32 0, i32 4
  %162 = load i64*, i64** %161, align 8
  %163 = call i32 @PTR_ERR(i64* %162)
  store i32 %163, i32* %13, align 4
  br label %215

164:                                              ; preds = %142
  %165 = load i32, i32* @glink_smem_rx_avail, align 4
  %166 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %6, align 8
  %167 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* @glink_smem_rx_peak, align 4
  %170 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %6, align 8
  %171 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 4
  store i32 %169, i32* %172, align 4
  %173 = load i32, i32* @glink_smem_rx_advance, align 4
  %174 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %6, align 8
  %175 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 3
  store i32 %173, i32* %176, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %6, align 8
  %179 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %178, i32 0, i32 3
  store i8* %177, i8** %179, align 8
  %180 = load i32, i32* @glink_smem_tx_avail, align 4
  %181 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %7, align 8
  %182 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  store i32 %180, i32* %183, align 4
  %184 = load i32, i32* @glink_smem_tx_write, align 4
  %185 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %7, align 8
  %186 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  store i32 %184, i32* %187, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %7, align 8
  %190 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  %191 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %6, align 8
  %192 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %191, i32 0, i32 2
  %193 = load i64*, i64** %192, align 8
  store i64 0, i64* %193, align 8
  %194 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %7, align 8
  %195 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %194, i32 0, i32 1
  %196 = load i64*, i64** %195, align 8
  store i64 0, i64* %196, align 8
  %197 = load %struct.device*, %struct.device** %9, align 8
  %198 = load i32, i32* @GLINK_FEATURE_INTENT_REUSE, align 4
  %199 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %6, align 8
  %200 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %199, i32 0, i32 0
  %201 = load %struct.glink_smem_pipe*, %struct.glink_smem_pipe** %7, align 8
  %202 = getelementptr inbounds %struct.glink_smem_pipe, %struct.glink_smem_pipe* %201, i32 0, i32 0
  %203 = call i64* @qcom_glink_native_probe(%struct.device* %197, i32 %198, %struct.TYPE_3__* %200, %struct.TYPE_3__* %202, i32 0)
  %204 = bitcast i64* %203 to %struct.qcom_glink*
  store %struct.qcom_glink* %204, %struct.qcom_glink** %8, align 8
  %205 = load %struct.qcom_glink*, %struct.qcom_glink** %8, align 8
  %206 = bitcast %struct.qcom_glink* %205 to i64*
  %207 = call i64 @IS_ERR(i64* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %164
  %210 = load %struct.qcom_glink*, %struct.qcom_glink** %8, align 8
  %211 = bitcast %struct.qcom_glink* %210 to i64*
  %212 = call i32 @PTR_ERR(i64* %211)
  store i32 %212, i32* %13, align 4
  br label %215

213:                                              ; preds = %164
  %214 = load %struct.qcom_glink*, %struct.qcom_glink** %8, align 8
  store %struct.qcom_glink* %214, %struct.qcom_glink** %3, align 8
  br label %221

215:                                              ; preds = %209, %157, %139, %106, %98, %87, %73, %58
  %216 = load %struct.device*, %struct.device** %9, align 8
  %217 = call i32 @device_unregister(%struct.device* %216)
  %218 = load i32, i32* %13, align 4
  %219 = call i64* @ERR_PTR(i32 %218)
  %220 = bitcast i64* %219 to %struct.qcom_glink*
  store %struct.qcom_glink* %220, %struct.qcom_glink** %3, align 8
  br label %221

221:                                              ; preds = %215, %213, %44, %18
  %222 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  ret %struct.qcom_glink* %222
}

declare dso_local %struct.device* @kzalloc(i32, i32) #1

declare dso_local i64* @ERR_PTR(i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, %struct.device_node*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.glink_smem_pipe* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @qcom_smem_alloc(i8*, i32, i32) #1

declare dso_local i8* @qcom_smem_get(i8*, i32, i64*) #1

declare dso_local i64 @IS_ERR(i64*) #1

declare dso_local i32 @PTR_ERR(i64*) #1

declare dso_local i64* @qcom_glink_native_probe(%struct.device*, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
