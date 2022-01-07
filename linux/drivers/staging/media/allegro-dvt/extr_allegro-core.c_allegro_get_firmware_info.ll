; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_get_firmware_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_get_firmware_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_info = type { i32, i32 }
%struct.allegro_dev = type { i32 }
%struct.firmware = type { i32 }

@supported_firmware = common dso_local global %struct.fw_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_info* (%struct.allegro_dev*, %struct.firmware*, %struct.firmware*)* @allegro_get_firmware_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_info* @allegro_get_firmware_info(%struct.allegro_dev* %0, %struct.firmware* %1, %struct.firmware* %2) #0 {
  %4 = alloca %struct.fw_info*, align 8
  %5 = alloca %struct.allegro_dev*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.allegro_dev* %0, %struct.allegro_dev** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store %struct.firmware* %2, %struct.firmware** %7, align 8
  %11 = load %struct.firmware*, %struct.firmware** %6, align 8
  %12 = getelementptr inbounds %struct.firmware, %struct.firmware* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.firmware*, %struct.firmware** %7, align 8
  %15 = getelementptr inbounds %struct.firmware, %struct.firmware* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %46, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.fw_info*, %struct.fw_info** @supported_firmware, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.fw_info* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load %struct.fw_info*, %struct.fw_info** @supported_firmware, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %23, i64 %25
  %27 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %22
  %32 = load %struct.fw_info*, %struct.fw_info** @supported_firmware, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %32, i64 %34
  %36 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.fw_info*, %struct.fw_info** @supported_firmware, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %41, i64 %43
  store %struct.fw_info* %44, %struct.fw_info** %4, align 8
  br label %50

45:                                               ; preds = %31, %22
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %17

49:                                               ; preds = %17
  store %struct.fw_info* null, %struct.fw_info** %4, align 8
  br label %50

50:                                               ; preds = %49, %40
  %51 = load %struct.fw_info*, %struct.fw_info** %4, align 8
  ret %struct.fw_info* %51
}

declare dso_local i32 @ARRAY_SIZE(%struct.fw_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
