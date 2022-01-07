; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_m66592-udc.c_m66592_udc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_m66592-udc.c_m66592_udc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.m66592 = type { i32, i32, i32, %struct.usb_gadget_driver* }

@M66592_VBSE = common dso_local global i32 0, align 4
@M66592_URST = common dso_local global i32 0, align 4
@M66592_INTENB0 = common dso_local global i32 0, align 4
@M66592_INTSTS0 = common dso_local global i32 0, align 4
@M66592_VBSTS = common dso_local global i32 0, align 4
@M66592_MAX_SAMPLING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @m66592_udc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m66592_udc_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  %5 = alloca %struct.m66592*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %4, align 8
  %6 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %7 = call %struct.m66592* @to_m66592(%struct.usb_gadget* %6)
  store %struct.m66592* %7, %struct.m66592** %5, align 8
  %8 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %9 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %12 = load %struct.m66592*, %struct.m66592** %5, align 8
  %13 = getelementptr inbounds %struct.m66592, %struct.m66592* %12, i32 0, i32 3
  store %struct.usb_gadget_driver* %11, %struct.usb_gadget_driver** %13, align 8
  %14 = load %struct.m66592*, %struct.m66592** %5, align 8
  %15 = load i32, i32* @M66592_VBSE, align 4
  %16 = load i32, i32* @M66592_URST, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @M66592_INTENB0, align 4
  %19 = call i32 @m66592_bset(%struct.m66592* %14, i32 %17, i32 %18)
  %20 = load %struct.m66592*, %struct.m66592** %5, align 8
  %21 = load i32, i32* @M66592_INTSTS0, align 4
  %22 = call i32 @m66592_read(%struct.m66592* %20, i32 %21)
  %23 = load i32, i32* @M66592_VBSTS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %2
  %27 = load %struct.m66592*, %struct.m66592** %5, align 8
  %28 = call i32 @m66592_start_xclock(%struct.m66592* %27)
  %29 = load %struct.m66592*, %struct.m66592** %5, align 8
  %30 = load i32, i32* @M66592_INTSTS0, align 4
  %31 = call i32 @m66592_read(%struct.m66592* %29, i32 %30)
  %32 = load i32, i32* @M66592_VBSTS, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.m66592*, %struct.m66592** %5, align 8
  %35 = getelementptr inbounds %struct.m66592, %struct.m66592* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @M66592_MAX_SAMPLING, align 4
  %37 = load %struct.m66592*, %struct.m66592** %5, align 8
  %38 = getelementptr inbounds %struct.m66592, %struct.m66592* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.m66592*, %struct.m66592** %5, align 8
  %40 = getelementptr inbounds %struct.m66592, %struct.m66592* %39, i32 0, i32 1
  %41 = load i64, i64* @jiffies, align 8
  %42 = call i64 @msecs_to_jiffies(i32 50)
  %43 = add nsw i64 %41, %42
  %44 = call i32 @mod_timer(i32* %40, i64 %43)
  br label %45

45:                                               ; preds = %26, %2
  ret i32 0
}

declare dso_local %struct.m66592* @to_m66592(%struct.usb_gadget*) #1

declare dso_local i32 @m66592_bset(%struct.m66592*, i32, i32) #1

declare dso_local i32 @m66592_read(%struct.m66592*, i32) #1

declare dso_local i32 @m66592_start_xclock(%struct.m66592*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
