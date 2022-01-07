; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_send_create_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_send_create_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32 }
%struct.allegro_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcu_msg_create_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MCU_MSG_TYPE_CREATE_CHANNEL = common dso_local global i32 0, align 4
@AL_OPT_RDO_COST_MODE = common dso_local global i32 0, align 4
@AL_OPT_LF_X_TILE = common dso_local global i32 0, align 4
@AL_OPT_LF_X_SLICE = common dso_local global i32 0, align 4
@AL_OPT_LF = common dso_local global i32 0, align 4
@SIZE_MACROBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*, %struct.allegro_channel*)* @allegro_mcu_send_create_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_mcu_send_create_channel(%struct.allegro_dev* %0, %struct.allegro_channel* %1) #0 {
  %3 = alloca %struct.allegro_dev*, align 8
  %4 = alloca %struct.allegro_channel*, align 8
  %5 = alloca %struct.mcu_msg_create_channel, align 8
  store %struct.allegro_dev* %0, %struct.allegro_dev** %3, align 8
  store %struct.allegro_channel* %1, %struct.allegro_channel** %4, align 8
  %6 = call i32 @memset(%struct.mcu_msg_create_channel* %5, i32 0, i32 224)
  %7 = load i32, i32* @MCU_MSG_TYPE_CREATE_CHANNEL, align 4
  %8 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 47
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 47
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 216, i32* %11, align 8
  %12 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %13 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 46
  store i32 %14, i32* %15, align 4
  %16 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %17 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 45
  store i32 %18, i32* %19, align 8
  %20 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %21 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 44
  store i32 %22, i32* %23, align 4
  %24 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %25 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @v4l2_pixelformat_to_mcu_format(i32 %26)
  %28 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 43
  store i32 %27, i32* %28, align 8
  %29 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %30 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @v4l2_colorspace_to_mcu_colorspace(i32 %31)
  %33 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 42
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %36 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @v4l2_profile_to_mcu_profile(i32 %37)
  %39 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 41
  store i32 %38, i32* %39, align 8
  %40 = call i32 @BIT(i32 1)
  %41 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %43 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @v4l2_pixelformat_to_mcu_codec(i32 %44)
  %46 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 40
  store i32 %45, i32* %46, align 4
  %47 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %48 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @v4l2_level_to_mcu_level(i32 %49)
  %51 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 39
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 38
  store i64 0, i64* %52, align 8
  %53 = call i32 @BIT(i32 20)
  %54 = or i32 %53, 74
  %55 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = call i32 @BIT(i32 2)
  %57 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @AL_OPT_RDO_COST_MODE, align 4
  %59 = load i32, i32* @AL_OPT_LF_X_TILE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @AL_OPT_LF_X_SLICE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @AL_OPT_LF, align 4
  %64 = or i32 %62, %63
  %65 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 4
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 5
  store i32 -1, i32* %66, align 4
  %67 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 6
  store i32 -1, i32* %67, align 8
  %68 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 7
  store i32 1, i32* %68, align 4
  %69 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 8
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 8, i32* %71, align 4
  %72 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 8
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 8, i32* %74, align 4
  %75 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 8
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 16, i32* %77, align 4
  %78 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 8
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 16, i32* %80, align 4
  %81 = load i32, i32* @SIZE_MACROBLOCK, align 4
  %82 = call i8* @ilog2(i32 %81)
  %83 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 37
  store i8* %82, i8** %83, align 8
  %84 = call i8* @ilog2(i32 8)
  %85 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 36
  store i8* %84, i8** %85, align 8
  %86 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 9
  store i32 2, i32* %86, align 8
  %87 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 10
  store i32 2, i32* %87, align 4
  %88 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 11
  store i32 1, i32* %88, align 8
  %89 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 12
  store i32 1, i32* %89, align 4
  %90 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %91 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @v4l2_bitrate_mode_to_mcu_mode(i32 %92)
  %94 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 35
  store i32 %93, i32* %94, align 4
  %95 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %96 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %97, 1000
  %99 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %100 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %98, %101
  %103 = mul nsw i32 %102, 90000
  %104 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 13
  store i32 %103, i32* %104, align 8
  %105 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %106 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, 1000
  %109 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %110 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %108, %111
  %113 = mul nsw i32 %112, 90000
  %114 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 14
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 15
  store i32 25, i32* %115, align 8
  %116 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 16
  store i32 1000, i32* %116, align 4
  %117 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %118 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 34
  store i32 %119, i32* %120, align 8
  %121 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %122 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 17
  store i32 %123, i32* %124, align 8
  %125 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 18
  store i32 25, i32* %125, align 4
  %126 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 19
  store i32 10, i32* %126, align 8
  %127 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 20
  store i32 51, i32* %127, align 4
  %128 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 21
  store i32 -1, i32* %128, align 8
  %129 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 22
  store i32 -1, i32* %129, align 4
  %130 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 33
  store i64 0, i64* %130, align 8
  %131 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 23
  store i32 2, i32* %131, align 8
  %132 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 24
  store i32 10, i32* %132, align 4
  %133 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 25
  store i32 0, i32* %133, align 8
  %134 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 26
  store i32 0, i32* %134, align 4
  %135 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 27
  store i32 2147483647, i32* %135, align 8
  %136 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 32
  store i64 0, i64* %136, align 8
  %137 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 28
  store i32 0, i32* %137, align 4
  %138 = load %struct.allegro_channel*, %struct.allegro_channel** %4, align 8
  %139 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 31
  store i32 %140, i32* %141, align 8
  %142 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 29
  store i32 0, i32* %142, align 8
  %143 = getelementptr inbounds %struct.mcu_msg_create_channel, %struct.mcu_msg_create_channel* %5, i32 0, i32 30
  store i32 1879900160, i32* %143, align 4
  %144 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %145 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %146 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %145, i32 0, i32 0
  %147 = call i32 @allegro_mbox_write(%struct.allegro_dev* %144, i32* %146, %struct.mcu_msg_create_channel* %5, i32 224)
  %148 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %149 = call i32 @allegro_mcu_interrupt(%struct.allegro_dev* %148)
  ret i32 0
}

declare dso_local i32 @memset(%struct.mcu_msg_create_channel*, i32, i32) #1

declare dso_local i32 @v4l2_pixelformat_to_mcu_format(i32) #1

declare dso_local i32 @v4l2_colorspace_to_mcu_colorspace(i32) #1

declare dso_local i32 @v4l2_profile_to_mcu_profile(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @v4l2_pixelformat_to_mcu_codec(i32) #1

declare dso_local i32 @v4l2_level_to_mcu_level(i32) #1

declare dso_local i8* @ilog2(i32) #1

declare dso_local i32 @v4l2_bitrate_mode_to_mcu_mode(i32) #1

declare dso_local i32 @allegro_mbox_write(%struct.allegro_dev*, i32*, %struct.mcu_msg_create_channel*, i32) #1

declare dso_local i32 @allegro_mcu_interrupt(%struct.allegro_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
