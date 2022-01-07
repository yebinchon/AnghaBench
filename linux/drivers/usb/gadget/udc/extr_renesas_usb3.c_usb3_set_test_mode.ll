; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_set_test_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_set_test_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32 }

@USB3_USB20_CON = common dso_local global i32 0, align 4
@USB20_CON_B2_TSTMOD_MASK = common dso_local global i32 0, align 4
@USB20_CON_B2_TSTMOD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*)* @usb3_set_test_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_set_test_mode(%struct.renesas_usb3* %0) #0 {
  %2 = alloca %struct.renesas_usb3*, align 8
  %3 = alloca i32, align 4
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %2, align 8
  %4 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %5 = load i32, i32* @USB3_USB20_CON, align 4
  %6 = call i32 @usb3_read(%struct.renesas_usb3* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @USB20_CON_B2_TSTMOD_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %12 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @USB20_CON_B2_TSTMOD(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @USB20_CON_B2_TSTMOD_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @USB3_USB20_CON, align 4
  %22 = call i32 @usb3_write(%struct.renesas_usb3* %17, i32 %20, i32 %21)
  %23 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %24 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %29 = load i32, i32* @USB20_CON_B2_TSTMOD_EN, align 4
  %30 = load i32, i32* @USB3_USB20_CON, align 4
  %31 = call i32 @usb3_clear_bit(%struct.renesas_usb3* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @usb3_read(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @USB20_CON_B2_TSTMOD(i32) #1

declare dso_local i32 @usb3_write(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_clear_bit(%struct.renesas_usb3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
