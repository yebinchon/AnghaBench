; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-scu.c_imx_pinctrl_parse_pin_scu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-scu.c_imx_pinctrl_parse_pin_scu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_pinctrl = type { i32, %struct.imx_pinctrl_soc_info* }
%struct.imx_pinctrl_soc_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.imx_pin = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.imx_pin_scu }
%struct.imx_pin_scu = type { i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"%s: 0x%x 0x%08lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_pinctrl_parse_pin_scu(%struct.imx_pinctrl* %0, i32* %1, %struct.imx_pin* %2, i32** %3) #0 {
  %5 = alloca %struct.imx_pinctrl*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.imx_pin*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.imx_pinctrl_soc_info*, align 8
  %10 = alloca %struct.imx_pin_scu*, align 8
  %11 = alloca i32*, align 8
  store %struct.imx_pinctrl* %0, %struct.imx_pinctrl** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.imx_pin* %2, %struct.imx_pin** %7, align 8
  store i32** %3, i32*** %8, align 8
  %12 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %5, align 8
  %13 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %12, i32 0, i32 1
  %14 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %13, align 8
  store %struct.imx_pinctrl_soc_info* %14, %struct.imx_pinctrl_soc_info** %9, align 8
  %15 = load %struct.imx_pin*, %struct.imx_pin** %7, align 8
  %16 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.imx_pin_scu* %17, %struct.imx_pin_scu** %10, align 8
  %18 = load i32**, i32*** %8, align 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* %20, align 4
  %23 = call i8* @be32_to_cpu(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.imx_pin*, %struct.imx_pin** %7, align 8
  %26 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.imx_pin*, %struct.imx_pin** %7, align 8
  %28 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %11, align 8
  %33 = load i32, i32* %31, align 4
  %34 = call i8* @be32_to_cpu(i32 %33)
  %35 = load %struct.imx_pin_scu*, %struct.imx_pin_scu** %10, align 8
  %36 = getelementptr inbounds %struct.imx_pin_scu, %struct.imx_pin_scu* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %11, align 8
  %39 = load i32, i32* %37, align 4
  %40 = call i8* @be32_to_cpu(i32 %39)
  %41 = load %struct.imx_pin_scu*, %struct.imx_pin_scu** %10, align 8
  %42 = getelementptr inbounds %struct.imx_pin_scu, %struct.imx_pin_scu* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32**, i32*** %8, align 8
  store i32* %43, i32** %44, align 8
  %45 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %5, align 8
  %46 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %9, align 8
  %49 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.imx_pin*, %struct.imx_pin** %7, align 8
  %52 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.imx_pin_scu*, %struct.imx_pin_scu** %10, align 8
  %59 = getelementptr inbounds %struct.imx_pin_scu, %struct.imx_pin_scu* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.imx_pin_scu*, %struct.imx_pin_scu** %10, align 8
  %62 = getelementptr inbounds %struct.imx_pin_scu, %struct.imx_pin_scu* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %57, i8* %60, i8* %63)
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
