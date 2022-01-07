; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod.c_usbhs_mod_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod.c_usbhs_mod_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhs_mod_info = type { %struct.usbhs_mod*, %struct.usbhs_mod** }
%struct.usbhs_mod = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbhs_mod_change(%struct.usbhs_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbhs_mod_info*, align 8
  %6 = alloca %struct.usbhs_mod*, align 8
  %7 = alloca i32, align 4
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %9 = call %struct.usbhs_mod_info* @usbhs_priv_to_modinfo(%struct.usbhs_priv* %8)
  store %struct.usbhs_mod_info* %9, %struct.usbhs_mod_info** %5, align 8
  store %struct.usbhs_mod* null, %struct.usbhs_mod** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %19 [
    i32 128, label %11
    i32 129, label %11
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.usbhs_mod_info*, %struct.usbhs_mod_info** %5, align 8
  %13 = getelementptr inbounds %struct.usbhs_mod_info, %struct.usbhs_mod_info* %12, i32 0, i32 1
  %14 = load %struct.usbhs_mod**, %struct.usbhs_mod*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.usbhs_mod*, %struct.usbhs_mod** %14, i64 %16
  %18 = load %struct.usbhs_mod*, %struct.usbhs_mod** %17, align 8
  store %struct.usbhs_mod* %18, %struct.usbhs_mod** %6, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %11
  %23 = load %struct.usbhs_mod*, %struct.usbhs_mod** %6, align 8
  %24 = load %struct.usbhs_mod_info*, %struct.usbhs_mod_info** %5, align 8
  %25 = getelementptr inbounds %struct.usbhs_mod_info, %struct.usbhs_mod_info* %24, i32 0, i32 0
  store %struct.usbhs_mod* %23, %struct.usbhs_mod** %25, align 8
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local %struct.usbhs_mod_info* @usbhs_priv_to_modinfo(%struct.usbhs_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
