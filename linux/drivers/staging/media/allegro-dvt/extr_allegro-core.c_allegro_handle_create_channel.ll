; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_handle_create_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_handle_create_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32 }
%struct.mcu_msg_create_channel_response = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.allegro_channel = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"received %s for unknown user %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"user %d: mcu failed to create channel: error %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"user %d: channel has channel id %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"channel %d: intermediate buffers: %d x %d bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"channel %d: failed to allocate intermediate buffers\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"channel %d: reference buffers: %d x %d bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"channel %d: failed to allocate reference buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*, %struct.mcu_msg_create_channel_response*)* @allegro_handle_create_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_handle_create_channel(%struct.allegro_dev* %0, %struct.mcu_msg_create_channel_response* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.allegro_dev*, align 8
  %5 = alloca %struct.mcu_msg_create_channel_response*, align 8
  %6 = alloca %struct.allegro_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.allegro_dev* %0, %struct.allegro_dev** %4, align 8
  store %struct.mcu_msg_create_channel_response* %1, %struct.mcu_msg_create_channel_response** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %9 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %10 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.allegro_channel* @allegro_find_channel_by_user_id(%struct.allegro_dev* %8, i32 %11)
  store %struct.allegro_channel* %12, %struct.allegro_channel** %6, align 8
  %13 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %14 = call i64 @IS_ERR(%struct.allegro_channel* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %18 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %17, i32 0, i32 0
  %19 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %20 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @msg_type_name(i32 %22)
  %24 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %25 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @v4l2_warn(i32* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %144

30:                                               ; preds = %2
  %31 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %32 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %37 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %36, i32 0, i32 0
  %38 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %39 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %42 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32*, i8*, i32, ...) @v4l2_err(i32* %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %137

47:                                               ; preds = %30
  %48 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %49 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %52 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @debug, align 4
  %54 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %55 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %54, i32 0, i32 0
  %56 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %57 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %60 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i32, i32*, i8*, i32, i32, ...) @v4l2_dbg(i32 1, i32 %53, i32* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load i32, i32* @debug, align 4
  %64 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %65 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %64, i32 0, i32 0
  %66 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %67 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %70 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %73 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i32, i32*, i8*, i32, i32, ...) @v4l2_dbg(i32 1, i32 %63, i32* %65, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %71, i32 %74)
  %76 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %77 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %78 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %81 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @allocate_intermediate_buffers(%struct.allegro_channel* %76, i32 %79, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %47
  %87 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %88 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %87, i32 0, i32 0
  %89 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %90 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32*, i8*, i32, ...) @v4l2_err(i32* %88, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %137

93:                                               ; preds = %47
  %94 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %95 = call i32 @allegro_mcu_push_buffer_intermediate(%struct.allegro_channel* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %137

99:                                               ; preds = %93
  %100 = load i32, i32* @debug, align 4
  %101 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %102 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %101, i32 0, i32 0
  %103 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %104 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %107 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %110 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i32, i32*, i8*, i32, i32, ...) @v4l2_dbg(i32 1, i32 %100, i32* %102, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %105, i32 %108, i32 %111)
  %113 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %114 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %115 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.mcu_msg_create_channel_response*, %struct.mcu_msg_create_channel_response** %5, align 8
  %118 = getelementptr inbounds %struct.mcu_msg_create_channel_response, %struct.mcu_msg_create_channel_response* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @allocate_reference_buffers(%struct.allegro_channel* %113, i32 %116, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %99
  %124 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %125 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %124, i32 0, i32 0
  %126 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %127 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32*, i8*, i32, ...) @v4l2_err(i32* %125, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  br label %137

130:                                              ; preds = %99
  %131 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %132 = call i32 @allegro_mcu_push_buffer_reference(%struct.allegro_channel* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %137

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136, %135, %123, %98, %86, %35
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %140 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.allegro_channel*, %struct.allegro_channel** %6, align 8
  %142 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %141, i32 0, i32 1
  %143 = call i32 @complete(i32* %142)
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %137, %16
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.allegro_channel* @allegro_find_channel_by_user_id(%struct.allegro_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.allegro_channel*) #1

declare dso_local i32 @v4l2_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @msg_type_name(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @allocate_intermediate_buffers(%struct.allegro_channel*, i32, i32) #1

declare dso_local i32 @allegro_mcu_push_buffer_intermediate(%struct.allegro_channel*) #1

declare dso_local i32 @allocate_reference_buffers(%struct.allegro_channel*, i32, i32) #1

declare dso_local i32 @allegro_mcu_push_buffer_reference(%struct.allegro_channel*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
