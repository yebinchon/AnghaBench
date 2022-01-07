; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835.c_snd_add_child_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835.c_snd_add_child_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.bcm2835_audio_driver*, i64* }
%struct.bcm2835_audio_driver = type { i32 }
%struct.device = type { i32 }

@children_devices = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"minchannels %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"extrachannels %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"extrachannels_per_driver %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"extrachannels_remainder %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Out of channels, needed %d but only %d left\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @snd_add_child_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_add_child_devices(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bcm2835_audio_driver*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %33, %2
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @children_devices, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @children_devices, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %155

40:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %67, %40
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @children_devices, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @children_devices, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %46
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @children_devices, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.bcm2835_audio_driver*, %struct.bcm2835_audio_driver** %60, align 8
  %62 = getelementptr inbounds %struct.bcm2835_audio_driver, %struct.bcm2835_audio_driver* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %55, %46
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %41

70:                                               ; preds = %41
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sdiv i32 %78, %79
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = srem i32 %81, %82
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %74, %70
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @dev_dbg(%struct.device* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @dev_dbg(%struct.device* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @dev_dbg(%struct.device* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @dev_dbg(%struct.device* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %151, %84
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @children_devices, align 8
  %100 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %99)
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %154

102:                                              ; preds = %97
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @children_devices, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %102
  br label %151

112:                                              ; preds = %102
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @children_devices, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load %struct.bcm2835_audio_driver*, %struct.bcm2835_audio_driver** %117, align 8
  store %struct.bcm2835_audio_driver* %118, %struct.bcm2835_audio_driver** %12, align 8
  %119 = load %struct.bcm2835_audio_driver*, %struct.bcm2835_audio_driver** %12, align 8
  %120 = getelementptr inbounds %struct.bcm2835_audio_driver, %struct.bcm2835_audio_driver* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %112
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = load %struct.bcm2835_audio_driver*, %struct.bcm2835_audio_driver** %12, align 8
  %127 = getelementptr inbounds %struct.bcm2835_audio_driver, %struct.bcm2835_audio_driver* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @dev_err(%struct.device* %125, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %128, i32 %129)
  br label %151

131:                                              ; preds = %112
  %132 = load %struct.bcm2835_audio_driver*, %struct.bcm2835_audio_driver** %12, align 8
  %133 = getelementptr inbounds %struct.bcm2835_audio_driver, %struct.bcm2835_audio_driver* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %136, %137
  store i32 %138, i32* %13, align 4
  store i32 0, i32* %7, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %5, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %5, align 4
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = load %struct.bcm2835_audio_driver*, %struct.bcm2835_audio_driver** %12, align 8
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @snd_add_child_device(%struct.device* %142, %struct.bcm2835_audio_driver* %143, i32 %144)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %131
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %3, align 4
  br label %155

150:                                              ; preds = %131
  br label %151

151:                                              ; preds = %150, %124, %111
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %97

154:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %148, %39
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @snd_add_child_device(%struct.device*, %struct.bcm2835_audio_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
