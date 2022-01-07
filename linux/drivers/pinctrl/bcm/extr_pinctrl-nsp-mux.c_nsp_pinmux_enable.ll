; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-mux.c_nsp_pinmux_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-mux.c_nsp_pinmux_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.nsp_pinctrl = type { i32, i32, i32, %struct.nsp_pin_group*, %struct.nsp_pin_function* }
%struct.nsp_pin_group = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nsp_pin_function = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"func:%u name:%s grp:%u name:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"shift:%u alt:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @nsp_pinmux_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_pinmux_enable(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nsp_pinctrl*, align 8
  %9 = alloca %struct.nsp_pin_function*, align 8
  %10 = alloca %struct.nsp_pin_group*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %12 = call %struct.nsp_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.nsp_pinctrl* %12, %struct.nsp_pinctrl** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %8, align 8
  %15 = getelementptr inbounds %struct.nsp_pinctrl, %struct.nsp_pinctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp uge i32 %13, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %8, align 8
  %21 = getelementptr inbounds %struct.nsp_pinctrl, %struct.nsp_pinctrl* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp uge i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %71

27:                                               ; preds = %18
  %28 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %8, align 8
  %29 = getelementptr inbounds %struct.nsp_pinctrl, %struct.nsp_pinctrl* %28, i32 0, i32 4
  %30 = load %struct.nsp_pin_function*, %struct.nsp_pin_function** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.nsp_pin_function, %struct.nsp_pin_function* %30, i64 %32
  store %struct.nsp_pin_function* %33, %struct.nsp_pin_function** %9, align 8
  %34 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %8, align 8
  %35 = getelementptr inbounds %struct.nsp_pinctrl, %struct.nsp_pinctrl* %34, i32 0, i32 3
  %36 = load %struct.nsp_pin_group*, %struct.nsp_pin_group** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nsp_pin_group, %struct.nsp_pin_group* %36, i64 %38
  store %struct.nsp_pin_group* %39, %struct.nsp_pin_group** %10, align 8
  %40 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %41 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.nsp_pin_function*, %struct.nsp_pin_function** %9, align 8
  %45 = getelementptr inbounds %struct.nsp_pin_function, %struct.nsp_pin_function* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.nsp_pin_group*, %struct.nsp_pin_group** %10, align 8
  %49 = getelementptr inbounds %struct.nsp_pin_group, %struct.nsp_pin_group* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46, i32 %47, i32 %50)
  %52 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %53 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nsp_pin_group*, %struct.nsp_pin_group** %10, align 8
  %56 = getelementptr inbounds %struct.nsp_pin_group, %struct.nsp_pin_group* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nsp_pin_group*, %struct.nsp_pin_group** %10, align 8
  %60 = getelementptr inbounds %struct.nsp_pin_group, %struct.nsp_pin_group* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %62)
  %64 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %8, align 8
  %65 = load %struct.nsp_pin_function*, %struct.nsp_pin_function** %9, align 8
  %66 = load %struct.nsp_pin_group*, %struct.nsp_pin_group** %10, align 8
  %67 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %8, align 8
  %68 = getelementptr inbounds %struct.nsp_pinctrl, %struct.nsp_pinctrl* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @nsp_pinmux_set(%struct.nsp_pinctrl* %64, %struct.nsp_pin_function* %65, %struct.nsp_pin_group* %66, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %27, %24
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.nsp_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @nsp_pinmux_set(%struct.nsp_pinctrl*, %struct.nsp_pin_function*, %struct.nsp_pin_group*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
