; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_RfOnOffDetect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_RfOnOffDetect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@rf_off = common dso_local global i32 0, align 4
@REG_HSISR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pwrdown, 0x5c(BIT(7))=%02x\0A\00", align 1
@rf_on = common dso_local global i32 0, align 4
@REG_MAC_PINMUX_CFG = common dso_local global i32 0, align 4
@REG_GPIO_IO_SEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"GPIO_IN=%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RfOnOffDetect(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load i32, i32* @rf_off, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = load i32, i32* @REG_HSISR, align 4
  %14 = call i32 @usb_read8(%struct.adapter* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @DBG_88E(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @BIT(i32 7)
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @rf_off, align 4
  br label %25

23:                                               ; preds = %11
  %24 = load i32, i32* @rf_on, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %1
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = load i32, i32* @REG_MAC_PINMUX_CFG, align 4
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = load i32, i32* @REG_MAC_PINMUX_CFG, align 4
  %32 = call i32 @usb_read8(%struct.adapter* %30, i32 %31)
  %33 = call i32 @BIT(i32 3)
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @usb_write8(%struct.adapter* %28, i32 %29, i32 %35)
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = load i32, i32* @REG_GPIO_IO_SEL, align 4
  %39 = call i32 @usb_read8(%struct.adapter* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @DBG_88E(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @BIT(i32 3)
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %27
  %47 = load i32, i32* @rf_on, align 4
  br label %50

48:                                               ; preds = %27
  %49 = load i32, i32* @rf_off, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @usb_read8(%struct.adapter*, i32) #1

declare dso_local i32 @DBG_88E(i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
