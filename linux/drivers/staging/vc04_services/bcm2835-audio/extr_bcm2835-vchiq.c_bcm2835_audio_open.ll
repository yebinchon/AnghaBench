; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_alsa_stream = type { %struct.bcm2835_audio_instance*, %struct.TYPE_2__* }
%struct.bcm2835_audio_instance = type { i32, i32, i32, %struct.bcm2835_alsa_stream*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.bcm2835_vchi_ctx* }
%struct.bcm2835_vchi_ctx = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VC_AUDIO_MSG_TYPE_OPEN = common dso_local global i32 0, align 4
@force_bulk = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm2835_audio_open(%struct.bcm2835_alsa_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm2835_alsa_stream*, align 8
  %4 = alloca %struct.bcm2835_vchi_ctx*, align 8
  %5 = alloca %struct.bcm2835_audio_instance*, align 8
  %6 = alloca i32, align 4
  store %struct.bcm2835_alsa_stream* %0, %struct.bcm2835_alsa_stream** %3, align 8
  %7 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %8 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.bcm2835_vchi_ctx*, %struct.bcm2835_vchi_ctx** %10, align 8
  store %struct.bcm2835_vchi_ctx* %11, %struct.bcm2835_vchi_ctx** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.bcm2835_audio_instance* @kzalloc(i32 32, i32 %12)
  store %struct.bcm2835_audio_instance* %13, %struct.bcm2835_audio_instance** %5, align 8
  %14 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %15 = icmp ne %struct.bcm2835_audio_instance* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %85

19:                                               ; preds = %1
  %20 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %21 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %20, i32 0, i32 5
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %24 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %29 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %31 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %32 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %31, i32 0, i32 3
  store %struct.bcm2835_alsa_stream* %30, %struct.bcm2835_alsa_stream** %32, align 8
  %33 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %34 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %35 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %34, i32 0, i32 0
  store %struct.bcm2835_audio_instance* %33, %struct.bcm2835_audio_instance** %35, align 8
  %36 = load %struct.bcm2835_vchi_ctx*, %struct.bcm2835_vchi_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.bcm2835_vchi_ctx, %struct.bcm2835_vchi_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %40 = call i32 @vc_vchi_audio_init(i32 %38, %struct.bcm2835_audio_instance* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %19
  br label %79

44:                                               ; preds = %19
  %45 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %46 = load i32, i32* @VC_AUDIO_MSG_TYPE_OPEN, align 4
  %47 = call i32 @bcm2835_audio_send_simple(%struct.bcm2835_audio_instance* %45, i32 %46, i32 0)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %76

51:                                               ; preds = %44
  %52 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %53 = call i32 @bcm2835_audio_lock(%struct.bcm2835_audio_instance* %52)
  %54 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %55 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %58 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %57, i32 0, i32 0
  %59 = call i32 @vchi_get_peer_version(i32 %56, i32* %58)
  %60 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %61 = call i32 @bcm2835_audio_unlock(%struct.bcm2835_audio_instance* %60)
  %62 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %63 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %69, label %66

66:                                               ; preds = %51
  %67 = load i64, i64* @force_bulk, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66, %51
  %70 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %71 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %75

72:                                               ; preds = %66
  %73 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %74 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %73, i32 0, i32 1
  store i32 4000, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  store i32 0, i32* %2, align 4
  br label %85

76:                                               ; preds = %50
  %77 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %78 = call i32 @vc_vchi_audio_deinit(%struct.bcm2835_audio_instance* %77)
  br label %79

79:                                               ; preds = %76, %43
  %80 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %81 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %80, i32 0, i32 0
  store %struct.bcm2835_audio_instance* null, %struct.bcm2835_audio_instance** %81, align 8
  %82 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %83 = call i32 @kfree(%struct.bcm2835_audio_instance* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %75, %16
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.bcm2835_audio_instance* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vc_vchi_audio_init(i32, %struct.bcm2835_audio_instance*) #1

declare dso_local i32 @bcm2835_audio_send_simple(%struct.bcm2835_audio_instance*, i32, i32) #1

declare dso_local i32 @bcm2835_audio_lock(%struct.bcm2835_audio_instance*) #1

declare dso_local i32 @vchi_get_peer_version(i32, i32*) #1

declare dso_local i32 @bcm2835_audio_unlock(%struct.bcm2835_audio_instance*) #1

declare dso_local i32 @vc_vchi_audio_deinit(%struct.bcm2835_audio_instance*) #1

declare dso_local i32 @kfree(%struct.bcm2835_audio_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
