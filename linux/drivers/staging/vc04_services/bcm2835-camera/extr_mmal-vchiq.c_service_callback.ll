; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_service_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_service_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_mmal_instance = type { i32 }
%struct.mmal_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vchi_held_msg = type { i32 }
%struct.mmal_msg_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.mmal_msg*, %struct.vchi_held_msg }

@.str = private unnamed_addr constant [39 x i8] c"Message callback passed NULL instance\0A\00", align 1
@VCHI_FLAGS_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to dequeue a message (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"<<< reply message\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"received message context was null!\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"received invalid message context %u!\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Received unhandled message reason %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @service_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_callback(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vchiq_mmal_instance*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mmal_msg*, align 8
  %11 = alloca %struct.vchi_held_msg, align 4
  %12 = alloca %struct.mmal_msg_context*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.vchiq_mmal_instance*
  store %struct.vchiq_mmal_instance* %14, %struct.vchiq_mmal_instance** %7, align 8
  %15 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %7, align 8
  %16 = icmp ne %struct.vchiq_mmal_instance* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %115

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %112 [
    i32 129, label %21
    i32 131, label %103
    i32 130, label %107
    i32 128, label %111
  ]

21:                                               ; preds = %19
  %22 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %7, align 8
  %23 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = bitcast %struct.mmal_msg** %10 to i8**
  %26 = load i32, i32* @VCHI_FLAGS_NONE, align 4
  %27 = call i32 @vchi_msg_hold(i32 %24, i8** %25, i32* %9, i32 %26, %struct.vchi_held_msg* %11)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %115

33:                                               ; preds = %21
  %34 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @DBG_DUMP_MSG(%struct.mmal_msg* %34, i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %38 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %55 [
    i32 134, label %41
    i32 132, label %43
    i32 133, label %49
  ]

41:                                               ; preds = %33
  %42 = call i32 @vchi_held_msg_release(%struct.vchi_held_msg* %11)
  br label %102

43:                                               ; preds = %33
  %44 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %7, align 8
  %45 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @event_to_host_cb(%struct.vchiq_mmal_instance* %44, %struct.mmal_msg* %45, i32 %46)
  %48 = call i32 @vchi_held_msg_release(%struct.vchi_held_msg* %11)
  br label %102

49:                                               ; preds = %33
  %50 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %7, align 8
  %51 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @buffer_to_host_cb(%struct.vchiq_mmal_instance* %50, %struct.mmal_msg* %51, i32 %52)
  %54 = call i32 @vchi_held_msg_release(%struct.vchi_held_msg* %11)
  br label %102

55:                                               ; preds = %33
  %56 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %57 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 @vchi_held_msg_release(%struct.vchi_held_msg* %11)
  br label %102

64:                                               ; preds = %55
  %65 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %7, align 8
  %66 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %67 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.mmal_msg_context* @lookup_msg_context(%struct.vchiq_mmal_instance* %65, i32 %69)
  store %struct.mmal_msg_context* %70, %struct.mmal_msg_context** %12, align 8
  %71 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %72 = icmp ne %struct.mmal_msg_context* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %64
  %74 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %75 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = call i32 @vchi_held_msg_release(%struct.vchi_held_msg* %11)
  br label %102

80:                                               ; preds = %64
  %81 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %82 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = bitcast %struct.vchi_held_msg* %84 to i8*
  %86 = bitcast %struct.vchi_held_msg* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 4 %86, i64 4, i1 false)
  %87 = load %struct.mmal_msg*, %struct.mmal_msg** %10, align 8
  %88 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %89 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store %struct.mmal_msg* %87, %struct.mmal_msg** %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %94 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 4
  %97 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %98 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = call i32 @complete(i32* %100)
  br label %102

102:                                              ; preds = %80, %73, %61, %49, %43, %41
  br label %115

103:                                              ; preds = %19
  %104 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %7, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @bulk_receive_cb(%struct.vchiq_mmal_instance* %104, i8* %105)
  br label %115

107:                                              ; preds = %19
  %108 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %7, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @bulk_abort_cb(%struct.vchiq_mmal_instance* %108, i8* %109)
  br label %115

111:                                              ; preds = %19
  br label %115

112:                                              ; preds = %19
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %17, %112, %111, %107, %103, %102, %30
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @vchi_msg_hold(i32, i8**, i32*, i32, %struct.vchi_held_msg*) #1

declare dso_local i32 @DBG_DUMP_MSG(%struct.mmal_msg*, i32, i8*) #1

declare dso_local i32 @vchi_held_msg_release(%struct.vchi_held_msg*) #1

declare dso_local i32 @event_to_host_cb(%struct.vchiq_mmal_instance*, %struct.mmal_msg*, i32) #1

declare dso_local i32 @buffer_to_host_cb(%struct.vchiq_mmal_instance*, %struct.mmal_msg*, i32) #1

declare dso_local %struct.mmal_msg_context* @lookup_msg_context(%struct.vchiq_mmal_instance*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @bulk_receive_cb(%struct.vchiq_mmal_instance*, i8*) #1

declare dso_local i32 @bulk_abort_cb(%struct.vchiq_mmal_instance*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
