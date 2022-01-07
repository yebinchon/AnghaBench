; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uac1.c_f_audio_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uac1.c_f_audio_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32 }
%struct.usb_function = type { i32 }
%struct.g_audio = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_configuration*, %struct.usb_function*)* @f_audio_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_audio_unbind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca %struct.g_audio*, align 8
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  store %struct.usb_function* %1, %struct.usb_function** %4, align 8
  %6 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %7 = call %struct.g_audio* @func_to_g_audio(%struct.usb_function* %6)
  store %struct.g_audio* %7, %struct.g_audio** %5, align 8
  %8 = load %struct.g_audio*, %struct.g_audio** %5, align 8
  %9 = call i32 @g_audio_cleanup(%struct.g_audio* %8)
  %10 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %11 = call i32 @usb_free_all_descriptors(%struct.usb_function* %10)
  %12 = load %struct.g_audio*, %struct.g_audio** %5, align 8
  %13 = getelementptr inbounds %struct.g_audio, %struct.g_audio* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  ret void
}

declare dso_local %struct.g_audio* @func_to_g_audio(%struct.usb_function*) #1

declare dso_local i32 @g_audio_cleanup(%struct.g_audio*) #1

declare dso_local i32 @usb_free_all_descriptors(%struct.usb_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
