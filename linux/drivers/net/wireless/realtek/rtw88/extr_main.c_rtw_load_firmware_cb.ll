; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_load_firmware_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_load_firmware_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.rtw_dev = type { %struct.rtw_fw_state }
%struct.rtw_fw_state = type { i32, %struct.firmware* }

@.str = private unnamed_addr constant [28 x i8] c"failed to request firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @rtw_load_firmware_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_load_firmware_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca %struct.rtw_fw_state*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.rtw_dev*
  store %struct.rtw_dev* %8, %struct.rtw_dev** %5, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 0
  store %struct.rtw_fw_state* %10, %struct.rtw_fw_state** %6, align 8
  %11 = load %struct.firmware*, %struct.firmware** %3, align 8
  %12 = icmp ne %struct.firmware* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %15 = call i32 @rtw_err(%struct.rtw_dev* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.firmware*, %struct.firmware** %3, align 8
  %18 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %6, align 8
  %19 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %18, i32 0, i32 1
  store %struct.firmware* %17, %struct.firmware** %19, align 8
  %20 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %6, align 8
  %21 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %20, i32 0, i32 0
  %22 = call i32 @complete_all(i32* %21)
  ret void
}

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
