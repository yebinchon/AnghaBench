; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_audio_vchi_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_audio_vchi_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_instance = type { i32, i32, i32, i32, i32 }
%struct.vc_audio_msg = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@VCHI_CALLBACK_MSG_AVAILABLE = common dso_local global i64 0, align 8
@VCHI_FLAGS_NONE = common dso_local global i32 0, align 4
@VC_AUDIO_MSG_TYPE_RESULT = common dso_local global i64 0, align 8
@VC_AUDIO_MSG_TYPE_COMPLETE = common dso_local global i64 0, align 8
@VC_AUDIO_WRITE_COOKIE1 = common dso_local global i64 0, align 8
@VC_AUDIO_WRITE_COOKIE2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"invalid cookie\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unexpected callback type=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*)* @audio_vchi_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_vchi_callback(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bcm2835_audio_instance*, align 8
  %8 = alloca %struct.vc_audio_msg, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.bcm2835_audio_instance*
  store %struct.bcm2835_audio_instance* %12, %struct.bcm2835_audio_instance** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @VCHI_CALLBACK_MSG_AVAILABLE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %75

17:                                               ; preds = %3
  %18 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %7, align 8
  %19 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VCHI_FLAGS_NONE, align 4
  %22 = call i32 @vchi_msg_dequeue(i32 %20, %struct.vc_audio_msg* %8, i32 40, i32* %9, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VC_AUDIO_MSG_TYPE_RESULT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %8, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %7, align 8
  %32 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %7, align 8
  %34 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %33, i32 0, i32 2
  %35 = call i32 @complete(i32* %34)
  br label %75

36:                                               ; preds = %17
  %37 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %8, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VC_AUDIO_MSG_TYPE_COMPLETE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %8, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VC_AUDIO_WRITE_COOKIE1, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %8, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VC_AUDIO_WRITE_COOKIE2, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47, %41
  %54 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %7, align 8
  %55 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @dev_err(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %66

58:                                               ; preds = %47
  %59 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %7, align 8
  %60 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %8, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @bcm2835_playback_fifo(i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %58, %53
  br label %74

67:                                               ; preds = %36
  %68 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %7, align 8
  %69 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %8, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i32, i8*, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %67, %66
  br label %75

75:                                               ; preds = %16, %74, %27
  ret void
}

declare dso_local i32 @vchi_msg_dequeue(i32, %struct.vc_audio_msg*, i32, i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @bcm2835_playback_fifo(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
