; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_alsa_stream = type { %struct.bcm2835_audio_instance* }
%struct.bcm2835_audio_instance = type { i32, i32, i32 }
%struct.vc_audio_msg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@VC_AUDIO_WRITE_COOKIE2 = common dso_local global i32 0, align 4
@VC_AUDIO_WRITE_COOKIE1 = common dso_local global i32 0, align 4
@VC_AUDIO_MSG_TYPE_WRITE = common dso_local global i32 0, align 4
@VCHI_FLAGS_BLOCK_UNTIL_DATA_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed on %d bytes transfer (status=%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm2835_audio_write(%struct.bcm2835_alsa_stream* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm2835_alsa_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bcm2835_audio_instance*, align 8
  %9 = alloca %struct.vc_audio_msg, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bcm2835_alsa_stream* %0, %struct.bcm2835_alsa_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %5, align 8
  %15 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %14, i32 0, i32 0
  %16 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %15, align 8
  store %struct.bcm2835_audio_instance* %16, %struct.bcm2835_audio_instance** %8, align 8
  %17 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %9, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %21 = load i32, i32* @VC_AUDIO_WRITE_COOKIE2, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %23 = load i32, i32* @VC_AUDIO_WRITE_COOKIE1, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %25 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %8, align 8
  %26 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %9, i32 0, i32 1
  %29 = load i32, i32* @VC_AUDIO_MSG_TYPE_WRITE, align 4
  store i32 %29, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

33:                                               ; preds = %3
  %34 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %8, align 8
  %35 = call i32 @bcm2835_audio_lock(%struct.bcm2835_audio_instance* %34)
  %36 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %8, align 8
  %37 = call i32 @bcm2835_audio_send_msg_locked(%struct.bcm2835_audio_instance* %36, %struct.vc_audio_msg* %9, i32 0)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %92

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %8, align 8
  %44 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %8, align 8
  %49 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @VCHI_FLAGS_BLOCK_UNTIL_DATA_READ, align 4
  %54 = call i32 @vchi_bulk_queue_transmit(i32 %50, i8* %51, i32 %52, i32 %53, i32* null)
  store i32 %54, i32* %12, align 4
  br label %79

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %59, %55
  %57 = load i32, i32* %10, align 4
  %58 = icmp ugt i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %8, align 8
  %61 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @min(i32 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %8, align 8
  %66 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @vchi_queue_kernel_message(i32 %67, i8* %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr i8, i8* %72, i64 %73
  store i8* %74, i8** %7, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %56

78:                                               ; preds = %56
  br label %79

79:                                               ; preds = %78, %47
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %8, align 8
  %84 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %82, %79
  br label %92

92:                                               ; preds = %91, %40
  %93 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %8, align 8
  %94 = call i32 @bcm2835_audio_unlock(%struct.bcm2835_audio_instance* %93)
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %32
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @bcm2835_audio_lock(%struct.bcm2835_audio_instance*) #1

declare dso_local i32 @bcm2835_audio_send_msg_locked(%struct.bcm2835_audio_instance*, %struct.vc_audio_msg*, i32) #1

declare dso_local i32 @vchi_bulk_queue_transmit(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @vchi_queue_kernel_message(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @bcm2835_audio_unlock(%struct.bcm2835_audio_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
