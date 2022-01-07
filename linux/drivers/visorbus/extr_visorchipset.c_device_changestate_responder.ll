; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_device_changestate_responder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_device_changestate_responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.visor_device = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.visor_segment_state = type { i32 }
%struct.controlvm_message = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.visor_segment_state, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@chipset_dev = common dso_local global %struct.TYPE_8__* null, align 8
@CONTROLVM_QUEUE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.visor_device*, i32, i32)* @device_changestate_responder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_changestate_responder(i32 %0, %struct.visor_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.visor_segment_state, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.visor_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.controlvm_message, align 4
  %11 = getelementptr inbounds %struct.visor_segment_state, %struct.visor_segment_state* %6, i32 0, i32 0
  store i32 %3, i32* %11, align 4
  store i32 %0, i32* %7, align 4
  store %struct.visor_device* %1, %struct.visor_device** %8, align 8
  store i32 %2, i32* %9, align 4
  %12 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %13 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %50

22:                                               ; preds = %4
  %23 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %24 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @controlvm_init_response(%struct.controlvm_message* %10, %struct.TYPE_7__* %25, i32 %26)
  %28 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %29 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %10, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %35 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %10, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %10, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = bitcast %struct.visor_segment_state* %42 to i8*
  %44 = bitcast %struct.visor_segment_state* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CONTROLVM_QUEUE_REQUEST, align 4
  %49 = call i32 @visorchannel_signalinsert(i32 %47, i32 %48, %struct.controlvm_message* %10)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %22, %19
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @controlvm_init_response(%struct.controlvm_message*, %struct.TYPE_7__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @visorchannel_signalinsert(i32, i32, %struct.controlvm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
