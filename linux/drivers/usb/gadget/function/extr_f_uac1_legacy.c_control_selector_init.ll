; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uac1_legacy.c_control_selector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uac1_legacy.c_control_selector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.f_audio = type { i32 }

@feature_unit = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@mute_control = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@volume_control = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@UAC__CUR = common dso_local global i64 0, align 8
@UAC__MIN = common dso_local global i64 0, align 8
@UAC__MAX = common dso_local global i64 0, align 8
@UAC__RES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_audio*)* @control_selector_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_selector_init(%struct.f_audio* %0) #0 {
  %2 = alloca %struct.f_audio*, align 8
  store %struct.f_audio* %0, %struct.f_audio** %2, align 8
  %3 = load %struct.f_audio*, %struct.f_audio** %2, align 8
  %4 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %3, i32 0, i32 0
  %5 = call i32 @INIT_LIST_HEAD(i32* %4)
  %6 = load %struct.f_audio*, %struct.f_audio** %2, align 8
  %7 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %6, i32 0, i32 0
  %8 = call i32 @list_add(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @feature_unit, i32 0, i32 1), i32* %7)
  %9 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @feature_unit, i32 0, i32 0))
  %10 = call i32 @list_add(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mute_control, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @feature_unit, i32 0, i32 0))
  %11 = call i32 @list_add(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @volume_control, i32 0, i32 1), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @feature_unit, i32 0, i32 0))
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @volume_control, i32 0, i32 0), align 8
  %13 = load i64, i64* @UAC__CUR, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 65472, i32* %14, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @volume_control, i32 0, i32 0), align 8
  %16 = load i64, i64* @UAC__MIN, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 58272, i32* %17, align 4
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @volume_control, i32 0, i32 0), align 8
  %19 = load i64, i64* @UAC__MAX, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 65520, i32* %20, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @volume_control, i32 0, i32 0), align 8
  %22 = load i64, i64* @UAC__RES, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 48, i32* %23, align 4
  ret i32 0
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
