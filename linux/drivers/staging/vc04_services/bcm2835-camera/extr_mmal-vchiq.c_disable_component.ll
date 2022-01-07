; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_disable_component.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_disable_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_mmal_instance = type { i32 }
%struct.vchiq_mmal_component = type { i32 }
%struct.mmal_msg = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.vchi_held_msg = type { i32 }

@MMAL_MSG_TYPE_COMPONENT_DISABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vchiq_mmal_instance*, %struct.vchiq_mmal_component*)* @disable_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_component(%struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_component* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vchiq_mmal_instance*, align 8
  %5 = alloca %struct.vchiq_mmal_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmal_msg, align 8
  %8 = alloca %struct.mmal_msg*, align 8
  %9 = alloca %struct.vchi_held_msg, align 4
  store %struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_instance** %4, align 8
  store %struct.vchiq_mmal_component* %1, %struct.vchiq_mmal_component** %5, align 8
  %10 = load i64, i64* @MMAL_MSG_TYPE_COMPONENT_DISABLE, align 8
  %11 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %5, align 8
  %14 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %7, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %4, align 8
  %20 = call i32 @send_synchronous_mmal_msg(%struct.vchiq_mmal_instance* %19, %struct.mmal_msg* %7, i32 4, %struct.mmal_msg** %8, %struct.vchi_held_msg* %9)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %47

25:                                               ; preds = %2
  %26 = load %struct.mmal_msg*, %struct.mmal_msg** %8, align 8
  %27 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %7, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %44

37:                                               ; preds = %25
  %38 = load %struct.mmal_msg*, %struct.mmal_msg** %8, align 8
  %39 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %37, %34
  %45 = call i32 @vchi_held_msg_release(%struct.vchi_held_msg* %9)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %23
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @send_synchronous_mmal_msg(%struct.vchiq_mmal_instance*, %struct.mmal_msg*, i32, %struct.mmal_msg**, %struct.vchi_held_msg*) #1

declare dso_local i32 @vchi_held_msg_release(%struct.vchi_held_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
