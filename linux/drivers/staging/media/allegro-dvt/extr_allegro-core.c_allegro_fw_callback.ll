; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_fw_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_fw_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i32 }
%struct.allegro_dev = type { i32*, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }
%struct.fw_info = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"al5e.fw\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"requesting codec firmware '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"firmware is not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"using mcu firmware version '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to reset mcu\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to initialize mcu\0A\00", align 1
@allegro_m2m_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to init mem2mem device\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to register video device\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"allegro codec registered as /dev/video%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @allegro_fw_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allegro_fw_callback(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.allegro_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_info*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.allegro_dev*
  store %struct.allegro_dev* %11, %struct.allegro_dev** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %12 = load %struct.firmware*, %struct.firmware** %3, align 8
  %13 = icmp ne %struct.firmware* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %136

15:                                               ; preds = %2
  %16 = load i32, i32* @debug, align 4
  %17 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %18 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %17, i32 0, i32 2
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @v4l2_dbg(i32 1, i32 %16, i32* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %23 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @request_firmware(%struct.firmware** %7, i8* %21, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %133

30:                                               ; preds = %15
  %31 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %32 = load %struct.firmware*, %struct.firmware** %3, align 8
  %33 = load %struct.firmware*, %struct.firmware** %7, align 8
  %34 = call %struct.fw_info* @allegro_get_firmware_info(%struct.allegro_dev* %31, %struct.firmware* %32, %struct.firmware* %33)
  store %struct.fw_info* %34, %struct.fw_info** %9, align 8
  %35 = load %struct.fw_info*, %struct.fw_info** %9, align 8
  %36 = icmp ne %struct.fw_info* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %39 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %38, i32 0, i32 2
  %40 = call i32 @v4l2_err(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %130

41:                                               ; preds = %30
  %42 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %43 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %42, i32 0, i32 2
  %44 = load %struct.fw_info*, %struct.fw_info** %9, align 8
  %45 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @v4l2_info(i32* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %49 = call i32 @allegro_mcu_reset(%struct.allegro_dev* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %54 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %53, i32 0, i32 2
  %55 = call i32 @v4l2_err(i32* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %130

56:                                               ; preds = %41
  %57 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %58 = load %struct.firmware*, %struct.firmware** %3, align 8
  %59 = getelementptr inbounds %struct.firmware, %struct.firmware* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.firmware*, %struct.firmware** %3, align 8
  %62 = getelementptr inbounds %struct.firmware, %struct.firmware* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @allegro_copy_firmware(%struct.allegro_dev* %57, i32 %60, i32 %63)
  %65 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %66 = load %struct.firmware*, %struct.firmware** %7, align 8
  %67 = getelementptr inbounds %struct.firmware, %struct.firmware* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.firmware*, %struct.firmware** %7, align 8
  %70 = getelementptr inbounds %struct.firmware, %struct.firmware* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @allegro_copy_fw_codec(%struct.allegro_dev* %65, i32 %68, i32 %71)
  %73 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %74 = load %struct.fw_info*, %struct.fw_info** %9, align 8
  %75 = call i32 @allegro_mcu_hw_init(%struct.allegro_dev* %73, %struct.fw_info* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %56
  %79 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %80 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %79, i32 0, i32 2
  %81 = call i32 @v4l2_err(i32* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %127

82:                                               ; preds = %56
  %83 = call i32* @v4l2_m2m_init(i32* @allegro_m2m_ops)
  %84 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %85 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %84, i32 0, i32 0
  store i32* %83, i32** %85, align 8
  %86 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %87 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @IS_ERR(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %93 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %92, i32 0, i32 2
  %94 = call i32 @v4l2_err(i32* %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %124

95:                                               ; preds = %82
  %96 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %97 = call i32 @allegro_register_device(%struct.allegro_dev* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %102 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %101, i32 0, i32 2
  %103 = call i32 @v4l2_err(i32* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %117

104:                                              ; preds = %95
  %105 = load i32, i32* @debug, align 4
  %106 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %107 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %106, i32 0, i32 2
  %108 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %109 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @v4l2_dbg(i32 1, i32 %105, i32* %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* %111)
  %113 = load %struct.firmware*, %struct.firmware** %7, align 8
  %114 = call i32 @release_firmware(%struct.firmware* %113)
  %115 = load %struct.firmware*, %struct.firmware** %3, align 8
  %116 = call i32 @release_firmware(%struct.firmware* %115)
  br label %136

117:                                              ; preds = %100
  %118 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %119 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @v4l2_m2m_release(i32* %120)
  %122 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %123 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %122, i32 0, i32 0
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %117, %91
  %125 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %126 = call i32 @allegro_mcu_hw_deinit(%struct.allegro_dev* %125)
  br label %127

127:                                              ; preds = %124, %78
  %128 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %129 = call i32 @allegro_free_fw_codec(%struct.allegro_dev* %128)
  br label %130

130:                                              ; preds = %127, %52, %37
  %131 = load %struct.firmware*, %struct.firmware** %7, align 8
  %132 = call i32 @release_firmware(%struct.firmware* %131)
  br label %133

133:                                              ; preds = %130, %29
  %134 = load %struct.firmware*, %struct.firmware** %3, align 8
  %135 = call i32 @release_firmware(%struct.firmware* %134)
  br label %136

136:                                              ; preds = %133, %104, %14
  ret void
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local %struct.fw_info* @allegro_get_firmware_info(%struct.allegro_dev*, %struct.firmware*, %struct.firmware*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

declare dso_local i32 @allegro_mcu_reset(%struct.allegro_dev*) #1

declare dso_local i32 @allegro_copy_firmware(%struct.allegro_dev*, i32, i32) #1

declare dso_local i32 @allegro_copy_fw_codec(%struct.allegro_dev*, i32, i32) #1

declare dso_local i32 @allegro_mcu_hw_init(%struct.allegro_dev*, %struct.fw_info*) #1

declare dso_local i32* @v4l2_m2m_init(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @allegro_register_device(%struct.allegro_dev*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @v4l2_m2m_release(i32*) #1

declare dso_local i32 @allegro_mcu_hw_deinit(%struct.allegro_dev*) #1

declare dso_local i32 @allegro_free_fw_codec(%struct.allegro_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
