; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_op_configure_streams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_op_configure_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_camera_stream = type { i32, i32, i32*, i32, i32, i32 }
%struct.gb_camera_csi_params = type { i32 }
%struct.gb_camera = type { i32 }
%struct.gb_camera_stream_config = type { i32, i32, i32*, i32, i32, i32 }

@GB_CAMERA_MAX_STREAMS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GB_CAMERA_IN_FLAG_TEST = common dso_local global i32 0, align 4
@GB_CAMERA_CONFIGURE_STREAMS_TEST_ONLY = common dso_local global i32 0, align 4
@GB_CAMERA_CONFIGURE_STREAMS_ADJUSTED = common dso_local global i32 0, align 4
@GB_CAMERA_OUT_FLAG_ADJUSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, %struct.gb_camera_stream*, %struct.gb_camera_csi_params*)* @gb_camera_op_configure_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_op_configure_streams(i8* %0, i32* %1, i32* %2, %struct.gb_camera_stream* %3, %struct.gb_camera_csi_params* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.gb_camera_stream*, align 8
  %11 = alloca %struct.gb_camera_csi_params*, align 8
  %12 = alloca %struct.gb_camera*, align 8
  %13 = alloca %struct.gb_camera_stream_config*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.gb_camera_stream* %3, %struct.gb_camera_stream** %10, align 8
  store %struct.gb_camera_csi_params* %4, %struct.gb_camera_csi_params** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.gb_camera*
  store %struct.gb_camera* %19, %struct.gb_camera** %12, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @GB_CAMERA_MAX_STREAMS, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %219

28:                                               ; preds = %5
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.gb_camera_stream_config* @kcalloc(i32 %29, i32 32, i32 %30)
  store %struct.gb_camera_stream_config* %31, %struct.gb_camera_stream_config** %13, align 8
  %32 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %13, align 8
  %33 = icmp ne %struct.gb_camera_stream_config* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %219

37:                                               ; preds = %28
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %77, %37
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %38
  %43 = load %struct.gb_camera_stream*, %struct.gb_camera_stream** %10, align 8
  %44 = load i32, i32* %16, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %43, i64 %45
  %47 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %13, align 8
  %50 = load i32, i32* %16, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %49, i64 %51
  %53 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %52, i32 0, i32 5
  store i32 %48, i32* %53, align 8
  %54 = load %struct.gb_camera_stream*, %struct.gb_camera_stream** %10, align 8
  %55 = load i32, i32* %16, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %54, i64 %56
  %58 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %13, align 8
  %61 = load i32, i32* %16, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %60, i64 %62
  %64 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %63, i32 0, i32 4
  store i32 %59, i32* %64, align 4
  %65 = load %struct.gb_camera_stream*, %struct.gb_camera_stream** %10, align 8
  %66 = load i32, i32* %16, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %65, i64 %67
  %69 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @gb_camera_mbus_to_gb(i32 %70)
  %72 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %13, align 8
  %73 = load i32, i32* %16, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %72, i64 %74
  %76 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %75, i32 0, i32 0
  store i32 %71, i32* %76, align 8
  br label %77

77:                                               ; preds = %42
  %78 = load i32, i32* %16, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %16, align 4
  br label %38

80:                                               ; preds = %38
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @GB_CAMERA_IN_FLAG_TEST, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @GB_CAMERA_CONFIGURE_STREAMS_TEST_ONLY, align 4
  %88 = load i32, i32* %14, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.gb_camera*, %struct.gb_camera** %12, align 8
  %92 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %13, align 8
  %93 = load %struct.gb_camera_csi_params*, %struct.gb_camera_csi_params** %11, align 8
  %94 = call i32 @gb_camera_configure_streams(%struct.gb_camera* %91, i32* %15, i32* %14, %struct.gb_camera_stream_config* %92, %struct.gb_camera_csi_params* %93)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %215

98:                                               ; preds = %90
  %99 = load i32, i32* %15, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp ugt i32 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %17, align 4
  br label %215

106:                                              ; preds = %98
  %107 = load i32*, i32** %9, align 8
  store i32 0, i32* %107, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @GB_CAMERA_CONFIGURE_STREAMS_ADJUSTED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load i32, i32* @GB_CAMERA_OUT_FLAG_ADJUSTED, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %112, %106
  store i32 0, i32* %16, align 4
  br label %118

118:                                              ; preds = %209, %117
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %212

122:                                              ; preds = %118
  %123 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %13, align 8
  %124 = load i32, i32* %16, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %123, i64 %125
  %127 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.gb_camera_stream*, %struct.gb_camera_stream** %10, align 8
  %130 = load i32, i32* %16, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %129, i64 %131
  %133 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %132, i32 0, i32 5
  store i32 %128, i32* %133, align 8
  %134 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %13, align 8
  %135 = load i32, i32* %16, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %134, i64 %136
  %138 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.gb_camera_stream*, %struct.gb_camera_stream** %10, align 8
  %141 = load i32, i32* %16, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %140, i64 %142
  %144 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %143, i32 0, i32 4
  store i32 %139, i32* %144, align 4
  %145 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %13, align 8
  %146 = load i32, i32* %16, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %145, i64 %147
  %149 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.gb_camera_stream*, %struct.gb_camera_stream** %10, align 8
  %152 = load i32, i32* %16, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %151, i64 %153
  %155 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %154, i32 0, i32 3
  store i32 %150, i32* %155, align 8
  %156 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %13, align 8
  %157 = load i32, i32* %16, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %156, i64 %158
  %160 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.gb_camera_stream*, %struct.gb_camera_stream** %10, align 8
  %165 = load i32, i32* %16, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %164, i64 %166
  %168 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  store i32 %163, i32* %170, align 4
  %171 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %13, align 8
  %172 = load i32, i32* %16, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %171, i64 %173
  %175 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.gb_camera_stream*, %struct.gb_camera_stream** %10, align 8
  %180 = load i32, i32* %16, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %179, i64 %181
  %183 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  store i32 %178, i32* %185, align 4
  %186 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %13, align 8
  %187 = load i32, i32* %16, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %186, i64 %188
  %190 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.gb_camera_stream*, %struct.gb_camera_stream** %10, align 8
  %193 = load i32, i32* %16, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %192, i64 %194
  %196 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %195, i32 0, i32 1
  store i32 %191, i32* %196, align 4
  %197 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %13, align 8
  %198 = load i32, i32* %16, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %197, i64 %199
  %201 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @gb_camera_gb_to_mbus(i32 %202)
  %204 = load %struct.gb_camera_stream*, %struct.gb_camera_stream** %10, align 8
  %205 = load i32, i32* %16, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %204, i64 %206
  %208 = getelementptr inbounds %struct.gb_camera_stream, %struct.gb_camera_stream* %207, i32 0, i32 0
  store i32 %203, i32* %208, align 8
  br label %209

209:                                              ; preds = %122
  %210 = load i32, i32* %16, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %16, align 4
  br label %118

212:                                              ; preds = %118
  %213 = load i32, i32* %15, align 4
  %214 = load i32*, i32** %8, align 8
  store i32 %213, i32* %214, align 4
  br label %215

215:                                              ; preds = %212, %103, %97
  %216 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %13, align 8
  %217 = call i32 @kfree(%struct.gb_camera_stream_config* %216)
  %218 = load i32, i32* %17, align 4
  store i32 %218, i32* %6, align 4
  br label %219

219:                                              ; preds = %215, %34, %25
  %220 = load i32, i32* %6, align 4
  ret i32 %220
}

declare dso_local %struct.gb_camera_stream_config* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @gb_camera_mbus_to_gb(i32) #1

declare dso_local i32 @gb_camera_configure_streams(%struct.gb_camera*, i32*, i32*, %struct.gb_camera_stream_config*, %struct.gb_camera_csi_params*) #1

declare dso_local i32 @gb_camera_gb_to_mbus(i32) #1

declare dso_local i32 @kfree(%struct.gb_camera_stream_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
