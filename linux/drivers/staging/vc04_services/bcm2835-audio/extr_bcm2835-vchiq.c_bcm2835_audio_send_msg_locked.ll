; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_send_msg_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_send_msg_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_instance = type { i32, i32, i32, i32 }
%struct.vc_audio_msg = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"vchi message queue failed: %d, msg=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"vchi message timeout, msg=%d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"vchi message response error:%d, msg=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_audio_instance*, %struct.vc_audio_msg*, i32)* @bcm2835_audio_send_msg_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_audio_send_msg_locked(%struct.bcm2835_audio_instance* %0, %struct.vc_audio_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm2835_audio_instance*, align 8
  %6 = alloca %struct.vc_audio_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bcm2835_audio_instance* %0, %struct.bcm2835_audio_instance** %5, align 8
  store %struct.vc_audio_msg* %1, %struct.vc_audio_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %13 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 4
  %14 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %15 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %14, i32 0, i32 2
  %16 = call i32 @init_completion(i32* %15)
  br label %17

17:                                               ; preds = %11, %3
  %18 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %19 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vc_audio_msg*, %struct.vc_audio_msg** %6, align 8
  %22 = call i32 @vchi_queue_kernel_message(i32 %20, %struct.vc_audio_msg* %21, i32 4)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %27 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.vc_audio_msg*, %struct.vc_audio_msg** %6, align 8
  %31 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %76

36:                                               ; preds = %17
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %36
  %40 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %41 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %40, i32 0, i32 2
  %42 = call i32 @msecs_to_jiffies(i32 10000)
  %43 = call i32 @wait_for_completion_timeout(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %39
  %46 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %47 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vc_audio_msg*, %struct.vc_audio_msg** %6, align 8
  %50 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %76

55:                                               ; preds = %39
  %56 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %57 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %62 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %65 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.vc_audio_msg*, %struct.vc_audio_msg** %6, align 8
  %68 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %76

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74, %36
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %60, %45, %25
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @vchi_queue_kernel_message(i32, %struct.vc_audio_msg*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
