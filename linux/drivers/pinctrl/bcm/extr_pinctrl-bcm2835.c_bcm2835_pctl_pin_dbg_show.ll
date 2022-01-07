; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pctl_pin_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pctl_pin_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }
%struct.bcm2835_pinctrl = type { i64*, %struct.gpio_chip }
%struct.gpio_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@bcm2835_functions = common dso_local global i8** null, align 8
@GPLEV0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"function %s in %s; irq %d (%s)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@irq_type_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @bcm2835_pctl_pin_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_pctl_pin_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm2835_pinctrl*, align 8
  %8 = alloca %struct.gpio_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %14 = call %struct.bcm2835_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.bcm2835_pinctrl* %14, %struct.bcm2835_pinctrl** %7, align 8
  %15 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %7, align 8
  %16 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %15, i32 0, i32 1
  store %struct.gpio_chip* %16, %struct.gpio_chip** %8, align 8
  %17 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @bcm2835_pinctrl_fsel_get(%struct.bcm2835_pinctrl* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i8**, i8*** @bcm2835_functions, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %7, align 8
  %26 = load i32, i32* @GPLEV0, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @bcm2835_gpio_get_bit(%struct.bcm2835_pinctrl* %25, i32 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %30 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @irq_find_mapping(i32 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** @irq_type_names, align 8
  %43 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %7, align 8
  %44 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %42, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %40, i32 %41, i32 %51)
  ret void
}

declare dso_local %struct.bcm2835_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @bcm2835_pinctrl_fsel_get(%struct.bcm2835_pinctrl*, i32) #1

declare dso_local i32 @bcm2835_gpio_get_bit(%struct.bcm2835_pinctrl*, i32, i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
