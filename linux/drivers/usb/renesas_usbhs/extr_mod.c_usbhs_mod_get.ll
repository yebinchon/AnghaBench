; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod.c_usbhs_mod_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod.c_usbhs_mod_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_mod = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.usbhs_mod_info = type { %struct.usbhs_mod** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usbhs_mod* @usbhs_mod_get(%struct.usbhs_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbhs_mod_info*, align 8
  %6 = alloca %struct.usbhs_mod*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %8 = call %struct.usbhs_mod_info* @usbhs_priv_to_modinfo(%struct.usbhs_priv* %7)
  store %struct.usbhs_mod_info* %8, %struct.usbhs_mod_info** %5, align 8
  store %struct.usbhs_mod* null, %struct.usbhs_mod** %6, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %18 [
    i32 128, label %10
    i32 129, label %10
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.usbhs_mod_info*, %struct.usbhs_mod_info** %5, align 8
  %12 = getelementptr inbounds %struct.usbhs_mod_info, %struct.usbhs_mod_info* %11, i32 0, i32 0
  %13 = load %struct.usbhs_mod**, %struct.usbhs_mod*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.usbhs_mod*, %struct.usbhs_mod** %13, i64 %15
  %17 = load %struct.usbhs_mod*, %struct.usbhs_mod** %16, align 8
  store %struct.usbhs_mod* %17, %struct.usbhs_mod** %6, align 8
  br label %18

18:                                               ; preds = %2, %10
  %19 = load %struct.usbhs_mod*, %struct.usbhs_mod** %6, align 8
  ret %struct.usbhs_mod* %19
}

declare dso_local %struct.usbhs_mod_info* @usbhs_priv_to_modinfo(%struct.usbhs_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
