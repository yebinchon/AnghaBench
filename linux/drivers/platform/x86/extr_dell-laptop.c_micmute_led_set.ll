; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_micmute_led_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_micmute_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.calling_interface_buffer = type { i32 }
%struct.calling_interface_token = type { i32, i32 }

@LED_OFF = common dso_local global i32 0, align 4
@GLOBAL_MIC_MUTE_DISABLE = common dso_local global i32 0, align 4
@GLOBAL_MIC_MUTE_ENABLE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CLASS_TOKEN_WRITE = common dso_local global i32 0, align 4
@SELECT_TOKEN_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @micmute_led_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micmute_led_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.calling_interface_buffer, align 4
  %7 = alloca %struct.calling_interface_token*, align 8
  %8 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @LED_OFF, align 4
  %11 = icmp ne i32 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @GLOBAL_MIC_MUTE_DISABLE, align 4
  %17 = call %struct.calling_interface_token* @dell_smbios_find_token(i32 %16)
  store %struct.calling_interface_token* %17, %struct.calling_interface_token** %7, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @GLOBAL_MIC_MUTE_ENABLE, align 4
  %20 = call %struct.calling_interface_token* @dell_smbios_find_token(i32 %19)
  store %struct.calling_interface_token* %20, %struct.calling_interface_token** %7, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.calling_interface_token*, %struct.calling_interface_token** %7, align 8
  %23 = icmp ne %struct.calling_interface_token* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %38

27:                                               ; preds = %21
  %28 = load %struct.calling_interface_token*, %struct.calling_interface_token** %7, align 8
  %29 = getelementptr inbounds %struct.calling_interface_token, %struct.calling_interface_token* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.calling_interface_token*, %struct.calling_interface_token** %7, align 8
  %32 = getelementptr inbounds %struct.calling_interface_token, %struct.calling_interface_token* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dell_fill_request(%struct.calling_interface_buffer* %6, i32 %30, i32 %33, i32 0, i32 0)
  %35 = load i32, i32* @CLASS_TOKEN_WRITE, align 4
  %36 = load i32, i32* @SELECT_TOKEN_STD, align 4
  %37 = call i32 @dell_send_request(%struct.calling_interface_buffer* %6, i32 %35, i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %27, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.calling_interface_token* @dell_smbios_find_token(i32) #1

declare dso_local i32 @dell_fill_request(%struct.calling_interface_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @dell_send_request(%struct.calling_interface_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
