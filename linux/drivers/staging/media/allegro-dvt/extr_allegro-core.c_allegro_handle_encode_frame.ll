; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_handle_encode_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_handle_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32 }
%struct.mcu_msg_encode_frame_response = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.allegro_channel = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"received %s for unknown channel %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*, %struct.mcu_msg_encode_frame_response*)* @allegro_handle_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_handle_encode_frame(%struct.allegro_dev* %0, %struct.mcu_msg_encode_frame_response* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.allegro_dev*, align 8
  %5 = alloca %struct.mcu_msg_encode_frame_response*, align 8
  %6 = alloca %struct.allegro_channel*, align 8
  store %struct.allegro_dev* %0, %struct.allegro_dev** %4, align 8
  store %struct.mcu_msg_encode_frame_response* %1, %struct.mcu_msg_encode_frame_response** %5, align 8
  %7 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %8 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %5, align 8
  %9 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.allegro_channel* @allegro_find_channel_by_channel_id(%struct.allegro_dev* %7, i32 %10)
  store %struct.allegro_channel* %11, %struct.allegro_channel** %6, align 8
  %12 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %13 = call i64 @IS_ERR(%struct.allegro_channel* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %17 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %16, i32 0, i32 0
  %18 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %5, align 8
  %19 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @msg_type_name(i32 %21)
  %23 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %5, align 8
  %24 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @v4l2_err(i32* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %31 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %5, align 8
  %32 = call i32 @allegro_channel_finish_frame(%struct.allegro_channel* %30, %struct.mcu_msg_encode_frame_response* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.allegro_channel* @allegro_find_channel_by_channel_id(%struct.allegro_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.allegro_channel*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @msg_type_name(i32) #1

declare dso_local i32 @allegro_channel_finish_frame(%struct.allegro_channel*, %struct.mcu_msg_encode_frame_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
