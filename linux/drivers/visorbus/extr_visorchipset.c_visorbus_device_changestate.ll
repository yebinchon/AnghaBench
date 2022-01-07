; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_visorbus_device_changestate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_visorbus_device_changestate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.controlvm_message = type { %struct.TYPE_16__, %struct.controlvm_message_packet }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.controlvm_message_packet = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.visor_segment_state, i32, i32 }
%struct.visor_segment_state = type { i64, i64 }
%struct.controlvm_message_header = type { i32 }
%struct.visor_device = type { %struct.controlvm_message_header*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@segment_state_running = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@segment_state_standby = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@chipset_dev = common dso_local global %struct.TYPE_17__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controlvm_message*)* @visorbus_device_changestate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorbus_device_changestate(%struct.controlvm_message* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controlvm_message*, align 8
  %4 = alloca %struct.controlvm_message_packet*, align 8
  %5 = alloca %struct.controlvm_message_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.visor_segment_state, align 8
  %9 = alloca %struct.visor_device*, align 8
  %10 = alloca i32, align 4
  store %struct.controlvm_message* %0, %struct.controlvm_message** %3, align 8
  %11 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %12 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %11, i32 0, i32 1
  store %struct.controlvm_message_packet* %12, %struct.controlvm_message_packet** %4, align 8
  %13 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %4, align 8
  %14 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %4, align 8
  %18 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %4, align 8
  %22 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = bitcast %struct.visor_segment_state* %8 to i8*
  %25 = bitcast %struct.visor_segment_state* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  store i32 0, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.visor_device* @visorbus_get_device_by_id(i32 %26, i32 %27, i32* null)
  store %struct.visor_device* %28, %struct.visor_device** %9, align 8
  %29 = load %struct.visor_device*, %struct.visor_device** %9, align 8
  %30 = icmp ne %struct.visor_device* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %106

34:                                               ; preds = %1
  %35 = load %struct.visor_device*, %struct.visor_device** %9, align 8
  %36 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %106

43:                                               ; preds = %34
  %44 = load %struct.visor_device*, %struct.visor_device** %9, align 8
  %45 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %44, i32 0, i32 0
  %46 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %45, align 8
  %47 = icmp ne %struct.controlvm_message_header* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  br label %106

51:                                               ; preds = %43
  %52 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %53 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.controlvm_message_header* @kzalloc(i32 4, i32 %59)
  store %struct.controlvm_message_header* %60, %struct.controlvm_message_header** %5, align 8
  %61 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %5, align 8
  %62 = icmp ne %struct.controlvm_message_header* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %106

66:                                               ; preds = %58
  %67 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %5, align 8
  %68 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %69 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %68, i32 0, i32 0
  %70 = call i32 @memcpy(%struct.controlvm_message_header* %67, %struct.TYPE_16__* %69, i32 4)
  %71 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %5, align 8
  %72 = load %struct.visor_device*, %struct.visor_device** %9, align 8
  %73 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %72, i32 0, i32 0
  store %struct.controlvm_message_header* %71, %struct.controlvm_message_header** %73, align 8
  br label %74

74:                                               ; preds = %66, %51
  %75 = getelementptr inbounds %struct.visor_segment_state, %struct.visor_segment_state* %8, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @segment_state_running, i32 0, i32 0), align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.visor_segment_state, %struct.visor_segment_state* %8, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @segment_state_running, i32 0, i32 1), align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.visor_device*, %struct.visor_device** %9, align 8
  %86 = call i32 @visorchipset_device_resume(%struct.visor_device* %85)
  store i32 %86, i32* %10, align 4
  br label %101

87:                                               ; preds = %79, %74
  %88 = getelementptr inbounds %struct.visor_segment_state, %struct.visor_segment_state* %8, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @segment_state_standby, i32 0, i32 0), align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.visor_segment_state, %struct.visor_segment_state* %8, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @segment_state_standby, i32 0, i32 1), align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.visor_device*, %struct.visor_device** %9, align 8
  %99 = call i32 @visorchipset_device_pause(%struct.visor_device* %98)
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %97, %92, %87
  br label %101

101:                                              ; preds = %100, %84
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %106

105:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %130

106:                                              ; preds = %104, %63, %48, %40, %31
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** @chipset_dev, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %114 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %128

119:                                              ; preds = %106
  %120 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %121 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %125 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %124, i32 0, i32 0
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @controlvm_responder(i32 %123, %struct.TYPE_16__* %125, i32 %126)
  br label %128

128:                                              ; preds = %119, %106
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %105
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.visor_device* @visorbus_get_device_by_id(i32, i32, i32*) #2

declare dso_local %struct.controlvm_message_header* @kzalloc(i32, i32) #2

declare dso_local i32 @memcpy(%struct.controlvm_message_header*, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @visorchipset_device_resume(%struct.visor_device*) #2

declare dso_local i32 @visorchipset_device_pause(%struct.visor_device*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @controlvm_responder(i32, %struct.TYPE_16__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
