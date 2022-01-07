; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_send_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_send_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32 }
%struct.mcu_msg_init_request = type { i32, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MCU_MSG_TYPE_INIT = common dso_local global i32 0, align 4
@MCU_CACHE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.allegro_dev*, i32, i64)* @allegro_mcu_send_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allegro_mcu_send_init(%struct.allegro_dev* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.allegro_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.mcu_msg_init_request, align 8
  store %struct.allegro_dev* %0, %struct.allegro_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = call i32 @memset(%struct.mcu_msg_init_request* %7, i32 0, i32 32)
  %9 = load i32, i32* @MCU_MSG_TYPE_INIT, align 4
  %10 = getelementptr inbounds %struct.mcu_msg_init_request, %struct.mcu_msg_init_request* %7, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = getelementptr inbounds %struct.mcu_msg_init_request, %struct.mcu_msg_init_request* %7, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 24, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @lower_32_bits(i32 %14)
  %16 = load i32, i32* @MCU_CACHE_OFFSET, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.mcu_msg_init_request, %struct.mcu_msg_init_request* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.mcu_msg_init_request, %struct.mcu_msg_init_request* %7, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds %struct.mcu_msg_init_request, %struct.mcu_msg_init_request* %7, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 -1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.mcu_msg_init_request, %struct.mcu_msg_init_request* %7, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 -1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.mcu_msg_init_request, %struct.mcu_msg_init_request* %7, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 -1, i32* %29, align 4
  %30 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %31 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %32 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %31, i32 0, i32 0
  %33 = call i32 @allegro_mbox_write(%struct.allegro_dev* %30, i32* %32, %struct.mcu_msg_init_request* %7, i32 32)
  %34 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %35 = call i32 @allegro_mcu_interrupt(%struct.allegro_dev* %34)
  ret void
}

declare dso_local i32 @memset(%struct.mcu_msg_init_request*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @allegro_mbox_write(%struct.allegro_dev*, i32*, %struct.mcu_msg_init_request*, i32) #1

declare dso_local i32 @allegro_mcu_interrupt(%struct.allegro_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
