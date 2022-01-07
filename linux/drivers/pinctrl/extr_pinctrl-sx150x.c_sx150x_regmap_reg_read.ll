; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_regmap_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_regmap_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx150x_pinctrl = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @sx150x_regmap_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx150x_regmap_reg_read(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sx150x_pinctrl*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.sx150x_pinctrl*
  store %struct.sx150x_pinctrl* %16, %struct.sx150x_pinctrl** %10, align 8
  %17 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %18 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %17, i32 0, i32 0
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @sx150x_regmap_reg_width(%struct.sx150x_pinctrl* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %42, %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i32, i32* %14, align 4
  %30 = shl i32 %29, 8
  store i32 %30, i32* %14, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %14, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 8
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %25

47:                                               ; preds = %25
  %48 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @sx150x_maybe_swizzle(%struct.sx150x_pinctrl* %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %47, %36
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @sx150x_regmap_reg_width(%struct.sx150x_pinctrl*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @sx150x_maybe_swizzle(%struct.sx150x_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
