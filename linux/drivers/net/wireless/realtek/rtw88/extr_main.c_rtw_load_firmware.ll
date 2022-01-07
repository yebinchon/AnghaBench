; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32, %struct.rtw_fw_state }
%struct.rtw_fw_state = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rtw_load_firmware_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"async firmware request failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i8*)* @rtw_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_load_firmware(%struct.rtw_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rtw_fw_state*, align 8
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 1
  store %struct.rtw_fw_state* %9, %struct.rtw_fw_state** %6, align 8
  %10 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %6, align 8
  %11 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %10, i32 0, i32 0
  %12 = call i32 @init_completion(i32* %11)
  %13 = load i32, i32* @THIS_MODULE, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %16 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %20 = load i32, i32* @rtw_load_firmware_cb, align 4
  %21 = call i32 @request_firmware_nowait(i32 %13, i32 1, i8* %14, i32 %17, i32 %18, %struct.rtw_dev* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %26 = call i32 @rtw_err(%struct.rtw_dev* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32, i32, %struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
