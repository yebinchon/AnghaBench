; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_send_destroy_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_send_destroy_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32 }
%struct.allegro_channel = type { i32 }
%struct.mcu_msg_destroy_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MCU_MSG_TYPE_DESTROY_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*, %struct.allegro_channel*)* @allegro_mcu_send_destroy_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_mcu_send_destroy_channel(%struct.allegro_dev* %0, %struct.allegro_channel* %1) #0 {
  %3 = alloca %struct.allegro_dev*, align 8
  %4 = alloca %struct.allegro_channel*, align 8
  %5 = alloca %struct.mcu_msg_destroy_channel, align 4
  store %struct.allegro_dev* %0, %struct.allegro_dev** %3, align 8
  store %struct.allegro_channel* %1, %struct.allegro_channel** %4, align 8
  %6 = call i32 @memset(%struct.mcu_msg_destroy_channel* %5, i32 0, i32 12)
  %7 = load i32, i32* @MCU_MSG_TYPE_DESTROY_CHANNEL, align 4
  %8 = getelementptr inbounds %struct.mcu_msg_destroy_channel, %struct.mcu_msg_destroy_channel* %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = getelementptr inbounds %struct.mcu_msg_destroy_channel, %struct.mcu_msg_destroy_channel* %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 4, i32* %11, align 4
  %12 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %13 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.mcu_msg_destroy_channel, %struct.mcu_msg_destroy_channel* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %17 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %18 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %17, i32 0, i32 0
  %19 = call i32 @allegro_mbox_write(%struct.allegro_dev* %16, i32* %18, %struct.mcu_msg_destroy_channel* %5, i32 12)
  %20 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %21 = call i32 @allegro_mcu_interrupt(%struct.allegro_dev* %20)
  ret i32 0
}

declare dso_local i32 @memset(%struct.mcu_msg_destroy_channel*, i32, i32) #1

declare dso_local i32 @allegro_mbox_write(%struct.allegro_dev*, i32*, %struct.mcu_msg_destroy_channel*, i32) #1

declare dso_local i32 @allegro_mcu_interrupt(%struct.allegro_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
