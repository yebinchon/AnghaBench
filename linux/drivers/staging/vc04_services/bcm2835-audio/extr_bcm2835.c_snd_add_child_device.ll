; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835.c_snd_add_child_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835.c_snd_add_child_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bcm2835_audio_driver = type { i32 (%struct.bcm2835_chip*, i32, i32, i32)*, i32 (%struct.bcm2835_chip*)*, i32, i32, i32, %struct.TYPE_2__ }
%struct.bcm2835_chip = type { i32, i32, %struct.device*, %struct.snd_card* }
%struct.snd_card = type { i32, i32, i32, %struct.bcm2835_chip* }
%struct.TYPE_2__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to create card\00", align 1
@bcm2835_devm_free_vchi_ctx = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to create pcm, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to create controls, error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to register card, error %d\0A\00", align 1
@bcm2835_card_free = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to add devm action, err %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"card created with %d channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.bcm2835_audio_driver*, i32)* @snd_add_child_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_add_child_device(%struct.device* %0, %struct.bcm2835_audio_driver* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.bcm2835_audio_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcm2835_chip*, align 8
  %9 = alloca %struct.snd_card*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.bcm2835_audio_driver* %1, %struct.bcm2835_audio_driver** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @THIS_MODULE, align 4
  %13 = call i32 @snd_card_new(%struct.device* %11, i32 -1, i32* null, i32 %12, i32 24, %struct.snd_card** %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %129

20:                                               ; preds = %3
  %21 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %22 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %21, i32 0, i32 3
  %23 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %22, align 8
  store %struct.bcm2835_chip* %23, %struct.bcm2835_chip** %8, align 8
  %24 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %25 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %26 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %25, i32 0, i32 3
  store %struct.snd_card* %24, %struct.snd_card** %26, align 8
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %29 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %28, i32 0, i32 2
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %31 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %30, i32 0, i32 1
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* @bcm2835_devm_free_vchi_ctx, align 4
  %35 = call i32 @devres_find(%struct.device* %33, i32 %34, i32* null, i32* null)
  %36 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %37 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %39 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %20
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %125

45:                                               ; preds = %20
  %46 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %47 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.bcm2835_audio_driver*, %struct.bcm2835_audio_driver** %6, align 8
  %50 = getelementptr inbounds %struct.bcm2835_audio_driver, %struct.bcm2835_audio_driver* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strcpy(i32 %48, i32 %52)
  %54 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %55 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bcm2835_audio_driver*, %struct.bcm2835_audio_driver** %6, align 8
  %58 = getelementptr inbounds %struct.bcm2835_audio_driver, %struct.bcm2835_audio_driver* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strcpy(i32 %56, i32 %59)
  %61 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %62 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.bcm2835_audio_driver*, %struct.bcm2835_audio_driver** %6, align 8
  %65 = getelementptr inbounds %struct.bcm2835_audio_driver, %struct.bcm2835_audio_driver* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @strcpy(i32 %63, i32 %66)
  %68 = load %struct.bcm2835_audio_driver*, %struct.bcm2835_audio_driver** %6, align 8
  %69 = getelementptr inbounds %struct.bcm2835_audio_driver, %struct.bcm2835_audio_driver* %68, i32 0, i32 0
  %70 = load i32 (%struct.bcm2835_chip*, i32, i32, i32)*, i32 (%struct.bcm2835_chip*, i32, i32, i32)** %69, align 8
  %71 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %72 = load %struct.bcm2835_audio_driver*, %struct.bcm2835_audio_driver** %6, align 8
  %73 = getelementptr inbounds %struct.bcm2835_audio_driver, %struct.bcm2835_audio_driver* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bcm2835_audio_driver*, %struct.bcm2835_audio_driver** %6, align 8
  %76 = getelementptr inbounds %struct.bcm2835_audio_driver, %struct.bcm2835_audio_driver* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 %70(%struct.bcm2835_chip* %71, i32 %74, i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %45
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %125

86:                                               ; preds = %45
  %87 = load %struct.bcm2835_audio_driver*, %struct.bcm2835_audio_driver** %6, align 8
  %88 = getelementptr inbounds %struct.bcm2835_audio_driver, %struct.bcm2835_audio_driver* %87, i32 0, i32 1
  %89 = load i32 (%struct.bcm2835_chip*)*, i32 (%struct.bcm2835_chip*)** %88, align 8
  %90 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %91 = call i32 %89(%struct.bcm2835_chip* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %125

98:                                               ; preds = %86
  %99 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %100 = call i32 @snd_card_register(%struct.snd_card* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.device*, %struct.device** %5, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %125

107:                                              ; preds = %98
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %110 = call i32 @dev_set_drvdata(%struct.device* %108, %struct.bcm2835_chip* %109)
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = load i32, i32* @bcm2835_card_free, align 4
  %113 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %114 = call i32 @devm_add_action(%struct.device* %111, i32 %112, %struct.snd_card* %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %107
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  br label %125

121:                                              ; preds = %107
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @dev_info(%struct.device* %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  store i32 0, i32* %4, align 4
  br label %129

125:                                              ; preds = %117, %103, %94, %82, %42
  %126 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %127 = call i32 @snd_card_free(%struct.snd_card* %126)
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %125, %121, %16
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @snd_card_new(%struct.device*, i32, i32*, i32, i32, %struct.snd_card**) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devres_find(%struct.device*, i32, i32*, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.bcm2835_chip*) #1

declare dso_local i32 @devm_add_action(%struct.device*, i32, %struct.snd_card*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
