; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-cygnus-mux.c_cygnus_pinmux_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-cygnus-mux.c_cygnus_pinmux_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.cygnus_pinctrl = type { i32, %struct.cygnus_pin_group*, %struct.cygnus_pin_function* }
%struct.cygnus_pin_group = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.cygnus_pin_function = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"func:%u name:%s grp:%u name:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"offset:0x%08x shift:%u alt:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @cygnus_pinmux_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cygnus_pinmux_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cygnus_pinctrl*, align 8
  %8 = alloca %struct.cygnus_pin_function*, align 8
  %9 = alloca %struct.cygnus_pin_group*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %11 = call %struct.cygnus_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.cygnus_pinctrl* %11, %struct.cygnus_pinctrl** %7, align 8
  %12 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %7, align 8
  %13 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %12, i32 0, i32 2
  %14 = load %struct.cygnus_pin_function*, %struct.cygnus_pin_function** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cygnus_pin_function, %struct.cygnus_pin_function* %14, i64 %16
  store %struct.cygnus_pin_function* %17, %struct.cygnus_pin_function** %8, align 8
  %18 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %7, align 8
  %19 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %18, i32 0, i32 1
  %20 = load %struct.cygnus_pin_group*, %struct.cygnus_pin_group** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cygnus_pin_group, %struct.cygnus_pin_group* %20, i64 %22
  store %struct.cygnus_pin_group* %23, %struct.cygnus_pin_group** %9, align 8
  %24 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.cygnus_pin_function*, %struct.cygnus_pin_function** %8, align 8
  %29 = getelementptr inbounds %struct.cygnus_pin_function, %struct.cygnus_pin_function* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.cygnus_pin_group*, %struct.cygnus_pin_group** %9, align 8
  %33 = getelementptr inbounds %struct.cygnus_pin_group, %struct.cygnus_pin_group* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %31, i32 %34)
  %36 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cygnus_pin_group*, %struct.cygnus_pin_group** %9, align 8
  %40 = getelementptr inbounds %struct.cygnus_pin_group, %struct.cygnus_pin_group* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cygnus_pin_group*, %struct.cygnus_pin_group** %9, align 8
  %44 = getelementptr inbounds %struct.cygnus_pin_group, %struct.cygnus_pin_group* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cygnus_pin_group*, %struct.cygnus_pin_group** %9, align 8
  %48 = getelementptr inbounds %struct.cygnus_pin_group, %struct.cygnus_pin_group* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %46, i32 %50)
  %52 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %7, align 8
  %53 = load %struct.cygnus_pin_function*, %struct.cygnus_pin_function** %8, align 8
  %54 = load %struct.cygnus_pin_group*, %struct.cygnus_pin_group** %9, align 8
  %55 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %7, align 8
  %56 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @cygnus_pinmux_set(%struct.cygnus_pinctrl* %52, %struct.cygnus_pin_function* %53, %struct.cygnus_pin_group* %54, i32 %57)
  ret i32 %58
}

declare dso_local %struct.cygnus_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @cygnus_pinmux_set(%struct.cygnus_pinctrl*, %struct.cygnus_pin_function*, %struct.cygnus_pin_group*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
