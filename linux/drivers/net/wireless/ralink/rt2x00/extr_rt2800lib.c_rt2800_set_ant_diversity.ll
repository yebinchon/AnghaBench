; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_set_ant_diversity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_set_ant_diversity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@ANTENNA_A = common dso_local global i32 0, align 4
@E2PROM_CSR = common dso_local global i32 0, align 4
@E2PROM_CSR_DATA_CLOCK = common dso_local global i32 0, align 4
@MCU_ANT_SELECT = common dso_local global i32 0, align 4
@GPIO_CTRL = common dso_local global i32 0, align 4
@GPIO_CTRL_DIR3 = common dso_local global i32 0, align 4
@GPIO_CTRL_VAL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32)* @rt2800_set_ant_diversity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_set_ant_diversity(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ANTENNA_A, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ANTENNA_A, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 1
  store i32 %17, i32* %7, align 4
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %19 = call i64 @rt2x00_is_pci(%struct.rt2x00_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = load i32, i32* @E2PROM_CSR, align 4
  %24 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @E2PROM_CSR_DATA_CLOCK, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @rt2x00_set_field32(i32* %5, i32 %25, i32 %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = load i32, i32* @E2PROM_CSR, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %28, i32 %29, i32 %30)
  br label %42

32:                                               ; preds = %2
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %34 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %38 = load i32, i32* @MCU_ANT_SELECT, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %37, i32 %38, i32 255, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %36, %32
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %44 = load i32, i32* @GPIO_CTRL, align 4
  %45 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @GPIO_CTRL_DIR3, align 4
  %47 = call i32 @rt2x00_set_field32(i32* %5, i32 %46, i32 0)
  %48 = load i32, i32* @GPIO_CTRL_VAL3, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @rt2x00_set_field32(i32* %5, i32 %48, i32 %49)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %52 = load i32, i32* @GPIO_CTRL, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %51, i32 %52, i32 %53)
  ret void
}

declare dso_local i64 @rt2x00_is_pci(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_mcu_request(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
