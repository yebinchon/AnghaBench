; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_bulk_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_bulk_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_mmal_instance = type { i32 }
%struct.mmal_msg = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.mmal_msg_context = type { %struct.TYPE_14__, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"bulk.buffer not configured - error in buffer_from_host\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"short read as not enough receive buffer space\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vchiq_mmal_instance*, %struct.mmal_msg*, %struct.mmal_msg_context*)* @bulk_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bulk_receive(%struct.vchiq_mmal_instance* %0, %struct.mmal_msg* %1, %struct.mmal_msg_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vchiq_mmal_instance*, align 8
  %6 = alloca %struct.mmal_msg*, align 8
  %7 = alloca %struct.mmal_msg_context*, align 8
  %8 = alloca i64, align 8
  store %struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_instance** %5, align 8
  store %struct.mmal_msg* %1, %struct.mmal_msg** %6, align 8
  store %struct.mmal_msg_context* %2, %struct.mmal_msg_context** %7, align 8
  %9 = load %struct.mmal_msg*, %struct.mmal_msg** %6, align 8
  %10 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %7, align 8
  %16 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %80

25:                                               ; preds = %3
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %7, align 8
  %28 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %26, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %25
  %36 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %7, align 8
  %37 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %35, %25
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %7, align 8
  %47 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i64 %45, i64* %49, align 8
  %50 = load %struct.mmal_msg*, %struct.mmal_msg** %6, align 8
  %51 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %7, align 8
  %57 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 3
  store i32 %55, i32* %59, align 8
  %60 = load %struct.mmal_msg*, %struct.mmal_msg** %6, align 8
  %61 = getelementptr inbounds %struct.mmal_msg, %struct.mmal_msg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %7, align 8
  %67 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 4
  %70 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %7, align 8
  %71 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %70, i32 0, i32 1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mmal_msg_context*, %struct.mmal_msg_context** %7, align 8
  %76 = getelementptr inbounds %struct.mmal_msg_context, %struct.mmal_msg_context* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = call i32 @queue_work(i32 %74, i32* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %44, %21
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
