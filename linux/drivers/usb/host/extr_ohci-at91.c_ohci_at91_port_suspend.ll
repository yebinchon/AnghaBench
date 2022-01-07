; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-at91.c_ohci_at91_port_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-at91.c_ohci_at91_port_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@AT91_SFR_OHCIICR = common dso_local global i32 0, align 4
@AT91_OHCIICR_USB_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i64)* @ohci_at91_port_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_at91_port_suspend(%struct.regmap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.regmap*, %struct.regmap** %4, align 8
  %9 = icmp ne %struct.regmap* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

11:                                               ; preds = %2
  %12 = load %struct.regmap*, %struct.regmap** %4, align 8
  %13 = load i32, i32* @AT91_SFR_OHCIICR, align 4
  %14 = call i32 @regmap_read(%struct.regmap* %12, i32 %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %11
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @AT91_OHCIICR_USB_SUSPEND, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @AT91_OHCIICR_USB_SUSPEND, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load %struct.regmap*, %struct.regmap** %4, align 8
  %33 = load i32, i32* @AT91_SFR_OHCIICR, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @regmap_write(%struct.regmap* %32, i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %17, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
