; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_create_component.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_create_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_mmal_instance = type { i32 }
%struct.vchiq_mmal_component = type { i32, i32, i32, i32 }
%struct.mmal_msg = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.vchi_held_msg = type { i32 }

@MMAL_MSG_TYPE_COMPONENT_CREATE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MMAL_MSG_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Component handle:0x%x in:%d out:%d clock:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vchiq_mmal_instance*, %struct.vchiq_mmal_component*, i8*)* @create_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_component(%struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_component* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vchiq_mmal_instance*, align 8
  %6 = alloca %struct.vchiq_mmal_component*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmal_msg, align 8
  %10 = alloca %struct.mmal_msg*, align 8
  %11 = alloca %struct.vchi_held_msg, align 4
  store %struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_instance** %5, align 8
  store %struct.vchiq_mmal_component* %1, %struct.vchiq_mmal_component** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i64, i64* @MMAL_MSG_TYPE_COMPONENT_CREATE, align 8
  %13 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %9, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %6, align 8
  %16 = ptrtoint %struct.vchiq_mmal_component* %15 to i64
  %17 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %9, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i64 %16, i64* %19, align 8
  %20 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %9, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strncpy(i32 %23, i8* %24, i32 4)
  %26 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %27 = call i32 @send_synchronous_mmal_msg(%struct.vchiq_mmal_instance* %26, %struct.mmal_msg* %9, i32 16, %struct.mmal_msg** %10, %struct.vchi_held_msg* %11)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %100

32:                                               ; preds = %3
  %33 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %34 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %9, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %97

44:                                               ; preds = %32
  %45 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %46 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @MMAL_MSG_STATUS_SUCCESS, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %97

55:                                               ; preds = %44
  %56 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %57 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %6, align 8
  %62 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %64 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %6, align 8
  %69 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %71 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %6, align 8
  %76 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %78 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %6, align 8
  %83 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %6, align 8
  %85 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %6, align 8
  %88 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %6, align 8
  %91 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %6, align 8
  %94 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %89, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %55, %54, %41
  %98 = call i32 @vchi_held_msg_release(%struct.vchi_held_msg* %11)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %97, %30
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @send_synchronous_mmal_msg(%struct.vchiq_mmal_instance*, %struct.mmal_msg*, i32, %struct.mmal_msg**, %struct.vchi_held_msg*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @vchi_held_msg_release(%struct.vchi_held_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
