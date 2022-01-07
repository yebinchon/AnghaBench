; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_init(%struct.vnt_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnt_private*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  %4 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %5 = call i32 @vnt_init_registers(%struct.vnt_private* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EAGAIN, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %12 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %15 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SET_IEEE80211_PERM_ADDR(i32 %13, i32 %16)
  %18 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %19 = call i32 @vnt_init_bands(%struct.vnt_private* %18)
  %20 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %21 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ieee80211_register_hw(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %33

28:                                               ; preds = %10
  %29 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %30 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %32 = call i32 @vnt_radio_power_off(%struct.vnt_private* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %25, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @vnt_init_registers(%struct.vnt_private*) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(i32, i32) #1

declare dso_local i32 @vnt_init_bands(%struct.vnt_private*) #1

declare dso_local i64 @ieee80211_register_hw(i32) #1

declare dso_local i32 @vnt_radio_power_off(%struct.vnt_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
