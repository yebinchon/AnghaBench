; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_send_synchronous_mmal_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_send_synchronous_mmal_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_mmal_instance = type { i32 }
%struct.mmal_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.vchi_held_msg = type { i32 }
%struct.mmal_msg_context = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.vchi_held_msg, %struct.mmal_msg*, i32 }

@MMAL_MSG_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"payload length %d exceeds max:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MMAL_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c">>> sync message\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"error %d queuing message\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"timed out waiting for sync completion\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vchiq_mmal_instance*, %struct.mmal_msg*, i32, %struct.mmal_msg**, %struct.vchi_held_msg*)* @send_synchronous_mmal_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_synchronous_mmal_msg(%struct.vchiq_mmal_instance* %0, %struct.mmal_msg* %1, i32 %2, %struct.mmal_msg** %3, %struct.vchi_held_msg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vchiq_mmal_instance*, align 8
  %8 = alloca %struct.mmal_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mmal_msg**, align 8
  %11 = alloca %struct.vchi_held_msg*, align 8
  %12 = alloca %struct.mmal_msg_context*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_instance** %7, align 8
  store %struct.mmal_msg* %1, %struct.mmal_msg** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.mmal_msg** %3, %struct.mmal_msg*** %10, align 8
  store %struct.vchi_held_msg* %4, %struct.vchi_held_msg** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* @MMAL_MSG_MAX_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 4
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MMAL_MSG_MAX_SIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %122

30:                                               ; preds = %5
  %31 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %7, align 8
  %32 = call %struct.mmal_msg_context* @get_msg_context(%struct.vchiq_mmal_instance* %31)
  store %struct.mmal_msg_context* %32, %struct.mmal_msg_context** %12, align 8
  %33 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %34 = call i64 @IS_ERR(%struct.mmal_msg_context* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %38 = call i32 @PTR_ERR(%struct.mmal_msg_context* %37)
  store i32 %38, i32* %6, align 4
  br label %122

39:                                               ; preds = %30
  %40 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %41 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = call i32 @init_completion(i32* %43)
  %45 = load i32, i32* @MMAL_MAGIC, align 4
  %46 = load %struct.mmal_msg*, %struct.mmal_msg** %8, align 8
  %47 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %50 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mmal_msg*, %struct.mmal_msg** %8, align 8
  %53 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 8
  %55 = load %struct.mmal_msg*, %struct.mmal_msg** %8, align 8
  %56 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.mmal_msg*, %struct.mmal_msg** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = add i64 4, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 @DBG_DUMP_MSG(%struct.mmal_msg* %58, i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %7, align 8
  %65 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @vchi_service_use(i32 %66)
  %68 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %7, align 8
  %69 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mmal_msg*, %struct.mmal_msg** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = add i64 4, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @vchi_queue_kernel_message(i32 %70, %struct.mmal_msg* %71, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %7, align 8
  %78 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @vchi_service_release(i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %39
  %84 = load i32, i32* %13, align 4
  %85 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %87 = call i32 @release_msg_context(%struct.mmal_msg_context* %86)
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %6, align 4
  br label %122

89:                                               ; preds = %39
  %90 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %91 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32, i32* @HZ, align 4
  %95 = mul nsw i32 3, %94
  %96 = call i64 @wait_for_completion_timeout(i32* %93, i32 %95)
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %14, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %89
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* @ETIME, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %13, align 4
  %103 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %104 = call i32 @release_msg_context(%struct.mmal_msg_context* %103)
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %6, align 4
  br label %122

106:                                              ; preds = %89
  %107 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %108 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load %struct.mmal_msg*, %struct.mmal_msg** %110, align 8
  %112 = load %struct.mmal_msg**, %struct.mmal_msg*** %10, align 8
  store %struct.mmal_msg* %111, %struct.mmal_msg** %112, align 8
  %113 = load %struct.vchi_held_msg*, %struct.vchi_held_msg** %11, align 8
  %114 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %115 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = bitcast %struct.vchi_held_msg* %113 to i8*
  %119 = bitcast %struct.vchi_held_msg* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 8 %119, i64 4, i1 false)
  %120 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %12, align 8
  %121 = call i32 @release_msg_context(%struct.mmal_msg_context* %120)
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %106, %99, %83, %36, %21
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.mmal_msg_context* @get_msg_context(%struct.vchiq_mmal_instance*) #1

declare dso_local i64 @IS_ERR(%struct.mmal_msg_context*) #1

declare dso_local i32 @PTR_ERR(%struct.mmal_msg_context*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @DBG_DUMP_MSG(%struct.mmal_msg*, i32, i8*) #1

declare dso_local i32 @vchi_service_use(i32) #1

declare dso_local i32 @vchi_queue_kernel_message(i32, %struct.mmal_msg*, i32) #1

declare dso_local i32 @vchi_service_release(i32) #1

declare dso_local i32 @release_msg_context(%struct.mmal_msg_context*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
