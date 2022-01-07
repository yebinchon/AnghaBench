; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_configure_streams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_configure_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_camera = type { i64, i32, i32, i32 }
%struct.gb_camera_stream_config = type { i32, i32*, i32, i8*, i8*, i8* }
%struct.gb_camera_csi_params = type { i32 }
%struct.gb_camera_configure_streams_request = type { i32, i32, %struct.gb_camera_stream_config_response*, i64 }
%struct.gb_camera_stream_config_response = type { i32, i32*, i32, i8*, i8*, i8*, i64 }
%struct.gb_camera_configure_streams_response = type { i32, i32, %struct.gb_camera_stream_config_response*, i64 }
%struct.gb_camera_stream_config_request = type { i32, i32*, i32, i8*, i8*, i8*, i64 }

@GB_CAMERA_MAX_STREAMS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GB_CAMERA_TYPE_CONFIGURE_STREAMS = common dso_local global i32 0, align 4
@GB_OPERATION_FLAG_SHORT_RESPONSE = common dso_local global i32 0, align 4
@GB_CAMERA_CONFIGURE_STREAMS_ADJUSTED = common dso_local global i32 0, align 4
@GB_CAMERA_CONFIGURE_STREAMS_TEST_ONLY = common dso_local global i32 0, align 4
@GB_CAMERA_STATE_CONFIGURED = common dso_local global i64 0, align 8
@GB_CAMERA_STATE_UNCONFIGURED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_camera*, i32*, i32*, %struct.gb_camera_stream_config*, %struct.gb_camera_csi_params*)* @gb_camera_configure_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_configure_streams(%struct.gb_camera* %0, i32* %1, i32* %2, %struct.gb_camera_stream_config* %3, %struct.gb_camera_csi_params* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gb_camera*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.gb_camera_stream_config*, align 8
  %11 = alloca %struct.gb_camera_csi_params*, align 8
  %12 = alloca %struct.gb_camera_configure_streams_request*, align 8
  %13 = alloca %struct.gb_camera_configure_streams_response*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.gb_camera_stream_config_request*, align 8
  %20 = alloca %struct.gb_camera_stream_config_response*, align 8
  store %struct.gb_camera* %0, %struct.gb_camera** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.gb_camera_stream_config* %3, %struct.gb_camera_stream_config** %10, align 8
  store %struct.gb_camera_csi_params* %4, %struct.gb_camera_csi_params** %11, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @GB_CAMERA_MAX_STREAMS, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %331

29:                                               ; preds = %5
  %30 = load i32, i32* %14, align 4
  %31 = zext i32 %30 to i64
  %32 = mul i64 %31, 56
  %33 = add i64 24, %32
  store i64 %33, i64* %16, align 8
  %34 = load i32, i32* %14, align 4
  %35 = zext i32 %34 to i64
  %36 = mul i64 %35, 56
  %37 = add i64 24, %36
  store i64 %37, i64* %17, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.gb_camera_configure_streams_response* @kmalloc(i64 %38, i32 %39)
  %41 = bitcast %struct.gb_camera_configure_streams_response* %40 to %struct.gb_camera_configure_streams_request*
  store %struct.gb_camera_configure_streams_request* %41, %struct.gb_camera_configure_streams_request** %12, align 8
  %42 = load i64, i64* %17, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.gb_camera_configure_streams_response* @kmalloc(i64 %42, i32 %43)
  store %struct.gb_camera_configure_streams_response* %44, %struct.gb_camera_configure_streams_response** %13, align 8
  %45 = load %struct.gb_camera_configure_streams_request*, %struct.gb_camera_configure_streams_request** %12, align 8
  %46 = icmp ne %struct.gb_camera_configure_streams_request* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %13, align 8
  %49 = icmp ne %struct.gb_camera_configure_streams_response* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %47, %29
  %51 = load %struct.gb_camera_configure_streams_request*, %struct.gb_camera_configure_streams_request** %12, align 8
  %52 = bitcast %struct.gb_camera_configure_streams_request* %51 to %struct.gb_camera_configure_streams_response*
  %53 = call i32 @kfree(%struct.gb_camera_configure_streams_response* %52)
  %54 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %13, align 8
  %55 = call i32 @kfree(%struct.gb_camera_configure_streams_response* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %331

58:                                               ; preds = %47
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.gb_camera_configure_streams_request*, %struct.gb_camera_configure_streams_request** %12, align 8
  %61 = getelementptr inbounds %struct.gb_camera_configure_streams_request, %struct.gb_camera_configure_streams_request* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.gb_camera_configure_streams_request*, %struct.gb_camera_configure_streams_request** %12, align 8
  %65 = getelementptr inbounds %struct.gb_camera_configure_streams_request, %struct.gb_camera_configure_streams_request* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.gb_camera_configure_streams_request*, %struct.gb_camera_configure_streams_request** %12, align 8
  %67 = getelementptr inbounds %struct.gb_camera_configure_streams_request, %struct.gb_camera_configure_streams_request* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %109, %58
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %112

72:                                               ; preds = %68
  %73 = load %struct.gb_camera_configure_streams_request*, %struct.gb_camera_configure_streams_request** %12, align 8
  %74 = getelementptr inbounds %struct.gb_camera_configure_streams_request, %struct.gb_camera_configure_streams_request* %73, i32 0, i32 2
  %75 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %75, i64 %77
  %79 = bitcast %struct.gb_camera_stream_config_response* %78 to %struct.gb_camera_stream_config_request*
  store %struct.gb_camera_stream_config_request* %79, %struct.gb_camera_stream_config_request** %19, align 8
  %80 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %10, align 8
  %81 = load i32, i32* %15, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %80, i64 %82
  %84 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %83, i32 0, i32 5
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @cpu_to_le16(i8* %85)
  %87 = load %struct.gb_camera_stream_config_request*, %struct.gb_camera_stream_config_request** %19, align 8
  %88 = getelementptr inbounds %struct.gb_camera_stream_config_request, %struct.gb_camera_stream_config_request* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %10, align 8
  %90 = load i32, i32* %15, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %89, i64 %91
  %93 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @cpu_to_le16(i8* %94)
  %96 = load %struct.gb_camera_stream_config_request*, %struct.gb_camera_stream_config_request** %19, align 8
  %97 = getelementptr inbounds %struct.gb_camera_stream_config_request, %struct.gb_camera_stream_config_request* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %10, align 8
  %99 = load i32, i32* %15, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %98, i64 %100
  %102 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @cpu_to_le16(i8* %103)
  %105 = load %struct.gb_camera_stream_config_request*, %struct.gb_camera_stream_config_request** %19, align 8
  %106 = getelementptr inbounds %struct.gb_camera_stream_config_request, %struct.gb_camera_stream_config_request* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load %struct.gb_camera_stream_config_request*, %struct.gb_camera_stream_config_request** %19, align 8
  %108 = getelementptr inbounds %struct.gb_camera_stream_config_request, %struct.gb_camera_stream_config_request* %107, i32 0, i32 6
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %72
  %110 = load i32, i32* %15, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %68

112:                                              ; preds = %68
  %113 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %114 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %113, i32 0, i32 1
  %115 = call i32 @mutex_lock(i32* %114)
  %116 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %117 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @gb_pm_runtime_get_sync(i32 %118)
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %18, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %321

123:                                              ; preds = %112
  %124 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %125 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %18, align 4
  br label %316

131:                                              ; preds = %123
  %132 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %133 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @GB_CAMERA_TYPE_CONFIGURE_STREAMS, align 4
  %136 = load i32, i32* @GB_OPERATION_FLAG_SHORT_RESPONSE, align 4
  %137 = load %struct.gb_camera_configure_streams_request*, %struct.gb_camera_configure_streams_request** %12, align 8
  %138 = bitcast %struct.gb_camera_configure_streams_request* %137 to %struct.gb_camera_configure_streams_response*
  %139 = load i64, i64* %16, align 8
  %140 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %13, align 8
  %141 = call i32 @gb_camera_operation_sync_flags(i32 %134, i32 %135, i32 %136, %struct.gb_camera_configure_streams_response* %138, i64 %139, %struct.gb_camera_configure_streams_response* %140, i64* %17)
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %131
  br label %316

145:                                              ; preds = %131
  %146 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %147 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %13, align 8
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @gb_camera_configure_streams_validate_response(%struct.gb_camera* %146, %struct.gb_camera_configure_streams_response* %147, i32 %148)
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %316

153:                                              ; preds = %145
  %154 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %13, align 8
  %155 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %9, align 8
  store i32 %156, i32* %157, align 4
  %158 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %13, align 8
  %159 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %8, align 8
  store i32 %160, i32* %161, align 4
  store i32 0, i32* %15, align 4
  br label %162

162:                                              ; preds = %243, %153
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %13, align 8
  %165 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ult i32 %163, %166
  br i1 %167, label %168, label %246

168:                                              ; preds = %162
  %169 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %13, align 8
  %170 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %169, i32 0, i32 2
  %171 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %170, align 8
  %172 = load i32, i32* %15, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %171, i64 %173
  store %struct.gb_camera_stream_config_response* %174, %struct.gb_camera_stream_config_response** %20, align 8
  %175 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %20, align 8
  %176 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %175, i32 0, i32 5
  %177 = load i8*, i8** %176, align 8
  %178 = call i8* @le16_to_cpu(i8* %177)
  %179 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %10, align 8
  %180 = load i32, i32* %15, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %179, i64 %181
  %183 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %182, i32 0, i32 5
  store i8* %178, i8** %183, align 8
  %184 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %20, align 8
  %185 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %184, i32 0, i32 4
  %186 = load i8*, i8** %185, align 8
  %187 = call i8* @le16_to_cpu(i8* %186)
  %188 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %10, align 8
  %189 = load i32, i32* %15, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %188, i64 %190
  %192 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %191, i32 0, i32 4
  store i8* %187, i8** %192, align 8
  %193 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %20, align 8
  %194 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %193, i32 0, i32 3
  %195 = load i8*, i8** %194, align 8
  %196 = call i8* @le16_to_cpu(i8* %195)
  %197 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %10, align 8
  %198 = load i32, i32* %15, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %197, i64 %199
  %201 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %200, i32 0, i32 3
  store i8* %196, i8** %201, align 8
  %202 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %20, align 8
  %203 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %10, align 8
  %206 = load i32, i32* %15, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %205, i64 %207
  %209 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %208, i32 0, i32 2
  store i32 %204, i32* %209, align 8
  %210 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %20, align 8
  %211 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %10, align 8
  %216 = load i32, i32* %15, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %215, i64 %217
  %219 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 %214, i32* %221, align 4
  %222 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %20, align 8
  %223 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %10, align 8
  %228 = load i32, i32* %15, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %227, i64 %229
  %231 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  store i32 %226, i32* %233, align 4
  %234 = load %struct.gb_camera_stream_config_response*, %struct.gb_camera_stream_config_response** %20, align 8
  %235 = getelementptr inbounds %struct.gb_camera_stream_config_response, %struct.gb_camera_stream_config_response* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @le32_to_cpu(i32 %236)
  %238 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %10, align 8
  %239 = load i32, i32* %15, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %238, i64 %240
  %242 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %241, i32 0, i32 0
  store i32 %237, i32* %242, align 8
  br label %243

243:                                              ; preds = %168
  %244 = load i32, i32* %15, align 4
  %245 = add i32 %244, 1
  store i32 %245, i32* %15, align 4
  br label %162

246:                                              ; preds = %162
  %247 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %13, align 8
  %248 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @GB_CAMERA_CONFIGURE_STREAMS_ADJUSTED, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %260, label %253

253:                                              ; preds = %246
  %254 = load %struct.gb_camera_configure_streams_request*, %struct.gb_camera_configure_streams_request** %12, align 8
  %255 = getelementptr inbounds %struct.gb_camera_configure_streams_request, %struct.gb_camera_configure_streams_request* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @GB_CAMERA_CONFIGURE_STREAMS_TEST_ONLY, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %253, %246
  br label %316

261:                                              ; preds = %253
  %262 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %263 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @GB_CAMERA_STATE_CONFIGURED, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %277

267:                                              ; preds = %261
  %268 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %269 = call i32 @gb_camera_teardown_data_connection(%struct.gb_camera* %268)
  %270 = load i64, i64* @GB_CAMERA_STATE_UNCONFIGURED, align 8
  %271 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %272 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %271, i32 0, i32 0
  store i64 %270, i64* %272, align 8
  %273 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %274 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @gb_pm_runtime_put_noidle(i32 %275)
  br label %277

277:                                              ; preds = %267, %261
  %278 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %13, align 8
  %279 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  br label %316

283:                                              ; preds = %277
  %284 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %285 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @gb_pm_runtime_get_noresume(i32 %286)
  %288 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %289 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %13, align 8
  %290 = load %struct.gb_camera_csi_params*, %struct.gb_camera_csi_params** %11, align 8
  %291 = call i32 @gb_camera_setup_data_connection(%struct.gb_camera* %288, %struct.gb_camera_configure_streams_response* %289, %struct.gb_camera_csi_params* %290)
  store i32 %291, i32* %18, align 4
  %292 = load i32, i32* %18, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %312

294:                                              ; preds = %283
  %295 = load %struct.gb_camera_configure_streams_request*, %struct.gb_camera_configure_streams_request** %12, align 8
  %296 = bitcast %struct.gb_camera_configure_streams_request* %295 to %struct.gb_camera_configure_streams_response*
  %297 = call i32 @memset(%struct.gb_camera_configure_streams_response* %296, i32 0, i32 24)
  %298 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %299 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @GB_CAMERA_TYPE_CONFIGURE_STREAMS, align 4
  %302 = load %struct.gb_camera_configure_streams_request*, %struct.gb_camera_configure_streams_request** %12, align 8
  %303 = bitcast %struct.gb_camera_configure_streams_request* %302 to %struct.gb_camera_configure_streams_response*
  %304 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %13, align 8
  %305 = call i32 @gb_operation_sync(i32 %300, i32 %301, %struct.gb_camera_configure_streams_response* %303, i32 24, %struct.gb_camera_configure_streams_response* %304, i32 24)
  %306 = load i32*, i32** %9, align 8
  store i32 0, i32* %306, align 4
  %307 = load i32*, i32** %8, align 8
  store i32 0, i32* %307, align 4
  %308 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %309 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @gb_pm_runtime_put_noidle(i32 %310)
  br label %316

312:                                              ; preds = %283
  %313 = load i64, i64* @GB_CAMERA_STATE_CONFIGURED, align 8
  %314 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %315 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %314, i32 0, i32 0
  store i64 %313, i64* %315, align 8
  br label %316

316:                                              ; preds = %312, %294, %282, %260, %152, %144, %128
  %317 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %318 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @gb_pm_runtime_put_autosuspend(i32 %319)
  br label %321

321:                                              ; preds = %316, %122
  %322 = load %struct.gb_camera*, %struct.gb_camera** %7, align 8
  %323 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %322, i32 0, i32 1
  %324 = call i32 @mutex_unlock(i32* %323)
  %325 = load %struct.gb_camera_configure_streams_request*, %struct.gb_camera_configure_streams_request** %12, align 8
  %326 = bitcast %struct.gb_camera_configure_streams_request* %325 to %struct.gb_camera_configure_streams_response*
  %327 = call i32 @kfree(%struct.gb_camera_configure_streams_response* %326)
  %328 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %13, align 8
  %329 = call i32 @kfree(%struct.gb_camera_configure_streams_response* %328)
  %330 = load i32, i32* %18, align 4
  store i32 %330, i32* %6, align 4
  br label %331

331:                                              ; preds = %321, %50, %26
  %332 = load i32, i32* %6, align 4
  ret i32 %332
}

declare dso_local %struct.gb_camera_configure_streams_response* @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.gb_camera_configure_streams_response*) #1

declare dso_local i8* @cpu_to_le16(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_pm_runtime_get_sync(i32) #1

declare dso_local i32 @gb_camera_operation_sync_flags(i32, i32, i32, %struct.gb_camera_configure_streams_response*, i64, %struct.gb_camera_configure_streams_response*, i64*) #1

declare dso_local i32 @gb_camera_configure_streams_validate_response(%struct.gb_camera*, %struct.gb_camera_configure_streams_response*, i32) #1

declare dso_local i8* @le16_to_cpu(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @gb_camera_teardown_data_connection(%struct.gb_camera*) #1

declare dso_local i32 @gb_pm_runtime_put_noidle(i32) #1

declare dso_local i32 @gb_pm_runtime_get_noresume(i32) #1

declare dso_local i32 @gb_camera_setup_data_connection(%struct.gb_camera*, %struct.gb_camera_configure_streams_response*, %struct.gb_camera_csi_params*) #1

declare dso_local i32 @memset(%struct.gb_camera_configure_streams_response*, i32, i32) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_camera_configure_streams_response*, i32, %struct.gb_camera_configure_streams_response*, i32) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
