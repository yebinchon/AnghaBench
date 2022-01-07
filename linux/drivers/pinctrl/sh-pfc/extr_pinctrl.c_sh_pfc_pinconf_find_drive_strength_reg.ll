; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_pinconf_find_drive_strength_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_pinconf_find_drive_strength_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_pfc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pinmux_drive_reg* }
%struct.pinmux_drive_reg = type { i64, %struct.pinmux_drive_reg_field* }
%struct.pinmux_drive_reg_field = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sh_pfc*, i32, i32*, i32*)* @sh_pfc_pinconf_find_drive_strength_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sh_pfc_pinconf_find_drive_strength_reg(%struct.sh_pfc* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.sh_pfc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pinmux_drive_reg_field*, align 8
  %11 = alloca %struct.pinmux_drive_reg*, align 8
  %12 = alloca i32, align 4
  store %struct.sh_pfc* %0, %struct.sh_pfc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.sh_pfc*, %struct.sh_pfc** %6, align 8
  %14 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.pinmux_drive_reg*, %struct.pinmux_drive_reg** %16, align 8
  store %struct.pinmux_drive_reg* %17, %struct.pinmux_drive_reg** %11, align 8
  br label %18

18:                                               ; preds = %65, %4
  %19 = load %struct.pinmux_drive_reg*, %struct.pinmux_drive_reg** %11, align 8
  %20 = getelementptr inbounds %struct.pinmux_drive_reg, %struct.pinmux_drive_reg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %18
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %61, %23
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.pinmux_drive_reg*, %struct.pinmux_drive_reg** %11, align 8
  %27 = getelementptr inbounds %struct.pinmux_drive_reg, %struct.pinmux_drive_reg* %26, i32 0, i32 1
  %28 = load %struct.pinmux_drive_reg_field*, %struct.pinmux_drive_reg_field** %27, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.pinmux_drive_reg_field* %28)
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %24
  %32 = load %struct.pinmux_drive_reg*, %struct.pinmux_drive_reg** %11, align 8
  %33 = getelementptr inbounds %struct.pinmux_drive_reg, %struct.pinmux_drive_reg* %32, i32 0, i32 1
  %34 = load %struct.pinmux_drive_reg_field*, %struct.pinmux_drive_reg_field** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pinmux_drive_reg_field, %struct.pinmux_drive_reg_field* %34, i64 %36
  store %struct.pinmux_drive_reg_field* %37, %struct.pinmux_drive_reg_field** %10, align 8
  %38 = load %struct.pinmux_drive_reg_field*, %struct.pinmux_drive_reg_field** %10, align 8
  %39 = getelementptr inbounds %struct.pinmux_drive_reg_field, %struct.pinmux_drive_reg_field* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %31
  %43 = load %struct.pinmux_drive_reg_field*, %struct.pinmux_drive_reg_field** %10, align 8
  %44 = getelementptr inbounds %struct.pinmux_drive_reg_field, %struct.pinmux_drive_reg_field* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load %struct.pinmux_drive_reg_field*, %struct.pinmux_drive_reg_field** %10, align 8
  %50 = getelementptr inbounds %struct.pinmux_drive_reg_field, %struct.pinmux_drive_reg_field* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.pinmux_drive_reg_field*, %struct.pinmux_drive_reg_field** %10, align 8
  %54 = getelementptr inbounds %struct.pinmux_drive_reg_field, %struct.pinmux_drive_reg_field* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.pinmux_drive_reg*, %struct.pinmux_drive_reg** %11, align 8
  %58 = getelementptr inbounds %struct.pinmux_drive_reg, %struct.pinmux_drive_reg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %5, align 8
  br label %69

60:                                               ; preds = %42, %31
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %24

64:                                               ; preds = %24
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.pinmux_drive_reg*, %struct.pinmux_drive_reg** %11, align 8
  %67 = getelementptr inbounds %struct.pinmux_drive_reg, %struct.pinmux_drive_reg* %66, i32 1
  store %struct.pinmux_drive_reg* %67, %struct.pinmux_drive_reg** %11, align 8
  br label %18

68:                                               ; preds = %18
  store i64 0, i64* %5, align 8
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local i32 @ARRAY_SIZE(%struct.pinmux_drive_reg_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
