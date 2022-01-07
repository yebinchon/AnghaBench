; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835.c_snd_bcm2835_alsa_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835.c_snd_bcm2835_alsa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@num_channels = common dso_local global i64 0, align 8
@MAX_SUBSTREAMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Illegal num_channels value, will use %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @snd_bcm2835_alsa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bcm2835_alsa_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load i64, i64* @num_channels, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @num_channels, align 8
  %12 = load i64, i64* @MAX_SUBSTREAMS, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10, %1
  %15 = load i64, i64* @MAX_SUBSTREAMS, align 8
  store i64 %15, i64* @num_channels, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i64, i64* @num_channels, align 8
  %18 = call i32 @dev_warn(%struct.device* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %14, %10
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @bcm2835_devm_add_vchi_ctx(%struct.device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %35

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i64, i64* @num_channels, align 8
  %29 = call i32 @snd_add_child_devices(%struct.device* %27, i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %32, %24
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @bcm2835_devm_add_vchi_ctx(%struct.device*) #1

declare dso_local i32 @snd_add_child_devices(%struct.device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
