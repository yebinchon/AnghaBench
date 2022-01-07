; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod.c_usbhs_mod_is_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod.c_usbhs_mod_is_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhs_mod = type { i32 }
%struct.usbhs_mod_info = type { %struct.usbhs_mod** }

@EINVAL = common dso_local global i32 0, align 4
@USBHS_HOST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbhs_mod_is_host(%struct.usbhs_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca %struct.usbhs_mod*, align 8
  %5 = alloca %struct.usbhs_mod_info*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  %6 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %7 = call %struct.usbhs_mod* @usbhs_mod_get_current(%struct.usbhs_priv* %6)
  store %struct.usbhs_mod* %7, %struct.usbhs_mod** %4, align 8
  %8 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %9 = call %struct.usbhs_mod_info* @usbhs_priv_to_modinfo(%struct.usbhs_priv* %8)
  store %struct.usbhs_mod_info* %9, %struct.usbhs_mod_info** %5, align 8
  %10 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %11 = icmp ne %struct.usbhs_mod* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.usbhs_mod_info*, %struct.usbhs_mod_info** %5, align 8
  %17 = getelementptr inbounds %struct.usbhs_mod_info, %struct.usbhs_mod_info* %16, i32 0, i32 0
  %18 = load %struct.usbhs_mod**, %struct.usbhs_mod*** %17, align 8
  %19 = load i64, i64* @USBHS_HOST, align 8
  %20 = getelementptr inbounds %struct.usbhs_mod*, %struct.usbhs_mod** %18, i64 %19
  %21 = load %struct.usbhs_mod*, %struct.usbhs_mod** %20, align 8
  %22 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %23 = icmp eq %struct.usbhs_mod* %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %15, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.usbhs_mod* @usbhs_mod_get_current(%struct.usbhs_priv*) #1

declare dso_local %struct.usbhs_mod_info* @usbhs_priv_to_modinfo(%struct.usbhs_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
