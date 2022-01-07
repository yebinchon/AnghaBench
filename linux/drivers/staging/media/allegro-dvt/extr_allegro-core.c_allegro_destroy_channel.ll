; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_destroy_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_destroy_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.allegro_dev* }
%struct.allegro_dev = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"channel %d: timeout while destroying\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.allegro_channel*)* @allegro_destroy_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allegro_destroy_channel(%struct.allegro_channel* %0) #0 {
  %2 = alloca %struct.allegro_channel*, align 8
  %3 = alloca %struct.allegro_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.allegro_channel* %0, %struct.allegro_channel** %2, align 8
  %5 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %6 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %5, i32 0, i32 10
  %7 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  store %struct.allegro_dev* %7, %struct.allegro_dev** %3, align 8
  %8 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %9 = call i64 @channel_exists(%struct.allegro_channel* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %13 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %12, i32 0, i32 9
  %14 = call i32 @reinit_completion(i32* %13)
  %15 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %16 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %17 = call i32 @allegro_mcu_send_destroy_channel(%struct.allegro_dev* %15, %struct.allegro_channel* %16)
  %18 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %19 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %18, i32 0, i32 9
  %20 = call i32 @msecs_to_jiffies(i32 5000)
  %21 = call i64 @wait_for_completion_timeout(i32* %19, i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %11
  %25 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %26 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %25, i32 0, i32 1
  %27 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %28 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @v4l2_warn(i32* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %24, %11
  %32 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %33 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %36 = call i32 @destroy_intermediate_buffers(%struct.allegro_channel* %35)
  %37 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %38 = call i32 @destroy_reference_buffers(%struct.allegro_channel* %37)
  %39 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %40 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @v4l2_ctrl_grab(i32 %41, i32 0)
  %43 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %44 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @v4l2_ctrl_grab(i32 %45, i32 0)
  %47 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %48 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @v4l2_ctrl_grab(i32 %49, i32 0)
  %51 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %52 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @v4l2_ctrl_grab(i32 %53, i32 0)
  %55 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %56 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @v4l2_ctrl_grab(i32 %57, i32 0)
  %59 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %60 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @v4l2_ctrl_grab(i32 %61, i32 0)
  %63 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %64 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @v4l2_ctrl_grab(i32 %65, i32 0)
  %67 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %68 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %80

71:                                               ; preds = %34
  %72 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %73 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %76 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %75, i32 0, i32 0
  %77 = call i32 @clear_bit(i32 %74, i32* %76)
  %78 = load %struct.allegro_channel*, %struct.allegro_channel** %2, align 8
  %79 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %78, i32 0, i32 1
  store i32 -1, i32* %79, align 4
  br label %80

80:                                               ; preds = %71, %34
  ret void
}

declare dso_local i64 @channel_exists(%struct.allegro_channel*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @allegro_mcu_send_destroy_channel(%struct.allegro_dev*, %struct.allegro_channel*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @v4l2_warn(i32*, i8*, i32) #1

declare dso_local i32 @destroy_intermediate_buffers(%struct.allegro_channel*) #1

declare dso_local i32 @destroy_reference_buffers(%struct.allegro_channel*) #1

declare dso_local i32 @v4l2_ctrl_grab(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
