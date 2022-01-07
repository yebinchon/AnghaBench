; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_send_encode_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_send_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32 }
%struct.allegro_channel = type { i32, i32 }
%struct.mcu_msg_encode_frame = type { i32, i32, i32, i32, i8*, i8*, i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MCU_MSG_TYPE_ENCODE_FRAME = common dso_local global i32 0, align 4
@AL_OPT_FORCE_LOAD = common dso_local global i32 0, align 4
@MCU_CACHE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*, %struct.allegro_channel*, i8*, i8*)* @allegro_mcu_send_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_mcu_send_encode_frame(%struct.allegro_dev* %0, %struct.allegro_channel* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.allegro_dev*, align 8
  %6 = alloca %struct.allegro_channel*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mcu_msg_encode_frame, align 8
  store %struct.allegro_dev* %0, %struct.allegro_dev** %5, align 8
  store %struct.allegro_channel* %1, %struct.allegro_channel** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call i32 @memset(%struct.mcu_msg_encode_frame* %9, i32 0, i32 64)
  %11 = load i32, i32* @MCU_MSG_TYPE_ENCODE_FRAME, align 4
  %12 = getelementptr inbounds %struct.mcu_msg_encode_frame, %struct.mcu_msg_encode_frame* %9, i32 0, i32 10
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = getelementptr inbounds %struct.mcu_msg_encode_frame, %struct.mcu_msg_encode_frame* %9, i32 0, i32 10
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 56, i32* %15, align 8
  %16 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %17 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.mcu_msg_encode_frame, %struct.mcu_msg_encode_frame* %9, i32 0, i32 9
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @AL_OPT_FORCE_LOAD, align 4
  %21 = getelementptr inbounds %struct.mcu_msg_encode_frame, %struct.mcu_msg_encode_frame* %9, i32 0, i32 8
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.mcu_msg_encode_frame, %struct.mcu_msg_encode_frame* %9, i32 0, i32 0
  store i32 26, i32* %22, align 8
  %23 = getelementptr inbounds %struct.mcu_msg_encode_frame, %struct.mcu_msg_encode_frame* %9, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.mcu_msg_encode_frame, %struct.mcu_msg_encode_frame* %9, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds %struct.mcu_msg_encode_frame, %struct.mcu_msg_encode_frame* %9, i32 0, i32 5
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds %struct.mcu_msg_encode_frame, %struct.mcu_msg_encode_frame* %9, i32 0, i32 4
  store i8* %27, i8** %28, align 8
  %29 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %30 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.mcu_msg_encode_frame, %struct.mcu_msg_encode_frame* %9, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.mcu_msg_encode_frame, %struct.mcu_msg_encode_frame* %9, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.mcu_msg_encode_frame, %struct.mcu_msg_encode_frame* %9, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MCU_CACHE_OFFSET, align 4
  %37 = or i32 %35, %36
  %38 = getelementptr inbounds %struct.mcu_msg_encode_frame, %struct.mcu_msg_encode_frame* %9, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %40 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %41 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %40, i32 0, i32 0
  %42 = call i32 @allegro_mbox_write(%struct.allegro_dev* %39, i32* %41, %struct.mcu_msg_encode_frame* %9, i32 64)
  %43 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %44 = call i32 @allegro_mcu_interrupt(%struct.allegro_dev* %43)
  ret i32 0
}

declare dso_local i32 @memset(%struct.mcu_msg_encode_frame*, i32, i32) #1

declare dso_local i32 @allegro_mbox_write(%struct.allegro_dev*, i32*, %struct.mcu_msg_encode_frame*, i32) #1

declare dso_local i32 @allegro_mcu_interrupt(%struct.allegro_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
