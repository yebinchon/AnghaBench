; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_visorbus_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_visorbus_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.controlvm_message = type { %struct.TYPE_14__, %struct.controlvm_message_packet }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.controlvm_message_packet = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i8*, i8* }
%struct.controlvm_message_header = type { i32 }
%struct.visor_device = type { %struct.controlvm_message_header*, i32, %struct.visorchannel*, %struct.TYPE_10__, i32, i8*, i8*, %struct.TYPE_9__ }
%struct.visorchannel = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64 }

@BUS_ROOT_DEVICE = common dso_local global i8* null, align 8
@chipset_dev = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"failed to get bus by id: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"bus not created, id: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to get bus by id: %d/%d\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to create visorchannel: %d/%d\0A\00", align 1
@visor_vhba_channel_guid = common dso_local global i32 0, align 4
@CRASH_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controlvm_message*)* @visorbus_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorbus_device_create(%struct.controlvm_message* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controlvm_message*, align 8
  %4 = alloca %struct.controlvm_message_packet*, align 8
  %5 = alloca %struct.controlvm_message_header*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.visor_device*, align 8
  %9 = alloca %struct.visor_device*, align 8
  %10 = alloca %struct.visorchannel*, align 8
  %11 = alloca i32, align 4
  store %struct.controlvm_message* %0, %struct.controlvm_message** %3, align 8
  %12 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %13 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %12, i32 0, i32 1
  store %struct.controlvm_message_packet* %13, %struct.controlvm_message_packet** %4, align 8
  %14 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %4, align 8
  %15 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %4, align 8
  %19 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** @BUS_ROOT_DEVICE, align 8
  %24 = call %struct.visor_device* @visorbus_get_device_by_id(i8* %22, i8* %23, i32* null)
  store %struct.visor_device* %24, %struct.visor_device** %9, align 8
  %25 = load %struct.visor_device*, %struct.visor_device** %9, align 8
  %26 = icmp ne %struct.visor_device* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %1
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** @chipset_dev, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %181

36:                                               ; preds = %1
  %37 = load %struct.visor_device*, %struct.visor_device** %9, align 8
  %38 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** @chipset_dev, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %181

51:                                               ; preds = %36
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call %struct.visor_device* @visorbus_get_device_by_id(i8* %52, i8* %53, i32* null)
  store %struct.visor_device* %54, %struct.visor_device** %8, align 8
  %55 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %56 = icmp ne %struct.visor_device* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %59 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 1
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** @chipset_dev, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %69)
  %71 = load i32, i32* @EEXIST, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  br label %181

73:                                               ; preds = %57, %51
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kzalloc(i32 64, i32 %74)
  %76 = bitcast i8* %75 to %struct.visor_device*
  store %struct.visor_device* %76, %struct.visor_device** %8, align 8
  %77 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %78 = icmp ne %struct.visor_device* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  br label %181

82:                                               ; preds = %73
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %85 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %88 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %90 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %89, i32 0, i32 4
  %91 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %4, align 8
  %92 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = call i32 @guid_copy(i32* %90, i32* %93)
  %95 = load %struct.visor_device*, %struct.visor_device** %9, align 8
  %96 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %95, i32 0, i32 3
  %97 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %98 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %99, align 8
  %100 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %4, align 8
  %101 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %4, align 8
  %106 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = call %struct.visorchannel* @visorchannel_create(i32 %103, i32 %104, i32* %107, i32 1)
  store %struct.visorchannel* %108, %struct.visorchannel** %10, align 8
  %109 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %110 = icmp ne %struct.visorchannel* %109, null
  br i1 %110, label %121, label %111

111:                                              ; preds = %82
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** @chipset_dev, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i8*, i8** %6, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %116, i8* %117)
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %11, align 4
  br label %178

121:                                              ; preds = %82
  %122 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %123 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %124 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %123, i32 0, i32 2
  store %struct.visorchannel* %122, %struct.visorchannel** %124, align 8
  %125 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %126 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %125, i32 0, i32 1
  %127 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %4, align 8
  %128 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = call i32 @guid_copy(i32* %126, i32* %129)
  %131 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %4, align 8
  %132 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = call i64 @guid_equal(i32* %133, i32* @visor_vhba_channel_guid)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %121
  %137 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %138 = load i32, i32* @CRASH_DEV, align 4
  %139 = call i32 @save_crash_message(%struct.controlvm_message* %137, i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %175

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %121
  %145 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %146 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %168

151:                                              ; preds = %144
  %152 = load i32, i32* @GFP_KERNEL, align 4
  %153 = call i8* @kzalloc(i32 4, i32 %152)
  %154 = bitcast i8* %153 to %struct.controlvm_message_header*
  store %struct.controlvm_message_header* %154, %struct.controlvm_message_header** %5, align 8
  %155 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %5, align 8
  %156 = icmp ne %struct.controlvm_message_header* %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %151
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %11, align 4
  br label %175

160:                                              ; preds = %151
  %161 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %5, align 8
  %162 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %163 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %162, i32 0, i32 0
  %164 = call i32 @memcpy(%struct.controlvm_message_header* %161, %struct.TYPE_14__* %163, i32 4)
  %165 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %5, align 8
  %166 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %167 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %166, i32 0, i32 0
  store %struct.controlvm_message_header* %165, %struct.controlvm_message_header** %167, align 8
  br label %168

168:                                              ; preds = %160, %144
  %169 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %170 = call i32 @create_visor_device(%struct.visor_device* %169)
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %175

174:                                              ; preds = %168
  store i32 0, i32* %2, align 4
  br label %199

175:                                              ; preds = %173, %157, %142
  %176 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %177 = call i32 @visorchannel_destroy(%struct.visorchannel* %176)
  br label %178

178:                                              ; preds = %175, %111
  %179 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %180 = call i32 @kfree(%struct.visor_device* %179)
  br label %181

181:                                              ; preds = %178, %79, %63, %42, %27
  %182 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %183 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %197

188:                                              ; preds = %181
  %189 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %190 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %194 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %193, i32 0, i32 0
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @controlvm_responder(i32 %192, %struct.TYPE_14__* %194, i32 %195)
  br label %197

197:                                              ; preds = %188, %181
  %198 = load i32, i32* %11, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %197, %174
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.visor_device* @visorbus_get_device_by_id(i8*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @guid_copy(i32*, i32*) #1

declare dso_local %struct.visorchannel* @visorchannel_create(i32, i32, i32*, i32) #1

declare dso_local i64 @guid_equal(i32*, i32*) #1

declare dso_local i32 @save_crash_message(%struct.controlvm_message*, i32) #1

declare dso_local i32 @memcpy(%struct.controlvm_message_header*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @create_visor_device(%struct.visor_device*) #1

declare dso_local i32 @visorchannel_destroy(%struct.visorchannel*) #1

declare dso_local i32 @kfree(%struct.visor_device*) #1

declare dso_local i32 @controlvm_responder(i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
