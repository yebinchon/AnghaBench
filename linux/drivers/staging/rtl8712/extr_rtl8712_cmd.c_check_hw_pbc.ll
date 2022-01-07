; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_cmd.c_check_hw_pbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_cmd.c_check_hw_pbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i64 }

@MAC_PINMUX_CTRL = common dso_local global i32 0, align 4
@GPIOMUX_EN = common dso_local global i32 0, align 4
@GPIOSEL_GPIO = common dso_local global i32 0, align 4
@GPIO_IO_SEL = common dso_local global i32 0, align 4
@HAL_8192S_HW_GPIO_WPS_BIT = common dso_local global i32 0, align 4
@GPIO_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"CheckPbcGPIO - PBC is pressed !!!!\0A\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*)* @check_hw_pbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_hw_pbc(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %4 = load %struct._adapter*, %struct._adapter** %2, align 8
  %5 = load i32, i32* @MAC_PINMUX_CTRL, align 4
  %6 = load i32, i32* @GPIOMUX_EN, align 4
  %7 = load i32, i32* @GPIOSEL_GPIO, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @r8712_write8(%struct._adapter* %4, i32 %5, i32 %8)
  %10 = load %struct._adapter*, %struct._adapter** %2, align 8
  %11 = load i32, i32* @GPIO_IO_SEL, align 4
  %12 = call i32 @r8712_read8(%struct._adapter* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @HAL_8192S_HW_GPIO_WPS_BIT, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct._adapter*, %struct._adapter** %2, align 8
  %18 = load i32, i32* @GPIO_IO_SEL, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @r8712_write8(%struct._adapter* %17, i32 %18, i32 %19)
  %21 = load %struct._adapter*, %struct._adapter** %2, align 8
  %22 = load i32, i32* @GPIO_CTRL, align 4
  %23 = call i32 @r8712_read8(%struct._adapter* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %46

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @HAL_8192S_HW_GPIO_WPS_BIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = call i32 @DBG_8712(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct._adapter*, %struct._adapter** %2, align 8
  %35 = getelementptr inbounds %struct._adapter, %struct._adapter* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %46

39:                                               ; preds = %32
  %40 = load %struct._adapter*, %struct._adapter** %2, align 8
  %41 = getelementptr inbounds %struct._adapter, %struct._adapter* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @find_vpid(i64 %42)
  %44 = load i32, i32* @SIGUSR1, align 4
  %45 = call i32 @kill_pid(i32 %43, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %26, %38, %39, %27
  ret void
}

declare dso_local i32 @r8712_write8(%struct._adapter*, i32, i32) #1

declare dso_local i32 @r8712_read8(%struct._adapter*, i32) #1

declare dso_local i32 @DBG_8712(i8*) #1

declare dso_local i32 @kill_pid(i32, i32, i32) #1

declare dso_local i32 @find_vpid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
