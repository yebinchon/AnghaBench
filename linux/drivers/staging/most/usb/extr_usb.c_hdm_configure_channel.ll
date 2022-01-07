; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_configure_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_configure_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.most_channel_config = type { i32, i64, i32, i32, i32 }
%struct.most_dev = type { i32*, i32*, i32*, %struct.TYPE_4__*, %struct.most_channel_config*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.most_dev* }

@wq_clear_halt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Bad interface or config pointer.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Channel ID out of range.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Misconfig: buffer size or #buffers zero.\0A\00", align 1
@MOST_CH_SYNC = common dso_local global i64 0, align 8
@MOST_CH_ISOC = common dso_local global i64 0, align 8
@USB_MTU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Misconfig: frame size wrong\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: fixed buffer size (%d -> %d)\0A\00", align 1
@MOST_CH_ASYNC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"sync for ep%02x failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32, %struct.most_channel_config*)* @hdm_configure_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdm_configure_channel(%struct.most_interface* %0, i32 %1, %struct.most_channel_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.most_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.most_channel_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.most_dev*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.most_interface* %0, %struct.most_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.most_channel_config* %2, %struct.most_channel_config** %7, align 8
  %14 = load %struct.most_interface*, %struct.most_interface** %5, align 8
  %15 = call %struct.most_dev* @to_mdev(%struct.most_interface* %14)
  store %struct.most_dev* %15, %struct.most_dev** %10, align 8
  %16 = load %struct.most_dev*, %struct.most_dev** %10, align 8
  %17 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %11, align 8
  %20 = load %struct.most_dev*, %struct.most_dev** %10, align 8
  %21 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.most_dev*, %struct.most_dev** %10, align 8
  %28 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %27, i32 0, i32 6
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %26, i32* %33, align 8
  %34 = load %struct.most_dev*, %struct.most_dev** %10, align 8
  %35 = load %struct.most_dev*, %struct.most_dev** %10, align 8
  %36 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %35, i32 0, i32 6
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store %struct.most_dev* %34, %struct.most_dev** %41, align 8
  %42 = load %struct.most_dev*, %struct.most_dev** %10, align 8
  %43 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %42, i32 0, i32 6
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* @wq_clear_halt, align 4
  %50 = call i32 @INIT_WORK(i32* %48, i32 %49)
  %51 = load %struct.most_interface*, %struct.most_interface** %5, align 8
  %52 = icmp ne %struct.most_interface* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %3
  %54 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %55 = icmp ne %struct.most_channel_config* %54, null
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %53, %3
  %58 = phi i1 [ true, %3 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.device*, %struct.device** %11, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %222

67:                                               ; preds = %57
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.most_interface*, %struct.most_interface** %5, align 8
  %73 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sge i32 %71, %74
  br label %76

76:                                               ; preds = %70, %67
  %77 = phi i1 [ true, %67 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.device*, %struct.device** %11, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %222

86:                                               ; preds = %76
  %87 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %88 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %93 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.device*, %struct.device** %11, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %222

101:                                              ; preds = %91
  %102 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %103 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MOST_CH_SYNC, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %101
  %108 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %109 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @MOST_CH_ISOC, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %115 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 255
  br i1 %117, label %125, label %118

118:                                              ; preds = %113, %107
  %119 = load %struct.most_dev*, %struct.most_dev** %10, align 8
  %120 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 0, i32* %124, align 4
  br label %187

125:                                              ; preds = %113, %101
  %126 = load %struct.most_dev*, %struct.most_dev** %10, align 8
  %127 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 1, i32* %131, align 4
  %132 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %133 = call i32 @get_stream_frame_size(%struct.most_channel_config* %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %125
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @USB_MTU, align 4
  %139 = icmp ugt i32 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %136, %125
  %141 = load %struct.device*, %struct.device** %11, align 8
  %142 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %222

145:                                              ; preds = %136
  %146 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %147 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = udiv i32 %148, %149
  store i32 %150, i32* %8, align 4
  %151 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %152 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = urem i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %179

157:                                              ; preds = %145
  %158 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %159 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = mul i32 %161, %162
  %164 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %165 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.device*, %struct.device** %11, align 8
  %167 = load %struct.most_dev*, %struct.most_dev** %10, align 8
  %168 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %176 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %173, i32 %174, i32 %177)
  br label %179

179:                                              ; preds = %157, %145
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @USB_MTU, align 4
  %182 = load i32, i32* %9, align 4
  %183 = sub i32 %181, %182
  %184 = mul i32 %180, %183
  %185 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %186 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %179, %118
  %188 = load %struct.most_dev*, %struct.most_dev** %10, align 8
  %189 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %188, i32 0, i32 4
  %190 = load %struct.most_channel_config*, %struct.most_channel_config** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %190, i64 %192
  %194 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %195 = bitcast %struct.most_channel_config* %193 to i8*
  %196 = bitcast %struct.most_channel_config* %194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %195, i8* align 8 %196, i64 32, i1 false)
  %197 = load %struct.most_channel_config*, %struct.most_channel_config** %7, align 8
  %198 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @MOST_CH_ASYNC, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %221

202:                                              ; preds = %187
  %203 = load %struct.most_dev*, %struct.most_dev** %10, align 8
  %204 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %13, align 4
  %210 = load %struct.most_dev*, %struct.most_dev** %10, align 8
  %211 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %210, i32 0, i32 3
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = load i32, i32* %13, align 4
  %214 = call i64 @start_sync_ep(%struct.TYPE_4__* %212, i32 %213)
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %202
  %217 = load %struct.device*, %struct.device** %11, align 8
  %218 = load i32, i32* %13, align 4
  %219 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %216, %202
  br label %221

221:                                              ; preds = %220, %187
  store i32 0, i32* %4, align 4
  br label %222

222:                                              ; preds = %221, %140, %96, %81, %62
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local %struct.most_dev* @to_mdev(%struct.most_interface*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @get_stream_frame_size(%struct.most_channel_config*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @start_sync_ep(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
