; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_pinmux_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_pinmux_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pic32_pinctrl = type { i32, i64, %struct.pic32_function*, %struct.pic32_pin_group* }
%struct.pic32_function = type { i8* }
%struct.pic32_pin_group = type { %struct.pic32_desc_function* }
%struct.pic32_desc_function = type { i64, i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"setting function %s reg 0x%x = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot mux pin %u to function %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @pic32_pinmux_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_pinmux_enable(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pic32_pinctrl*, align 8
  %9 = alloca %struct.pic32_pin_group*, align 8
  %10 = alloca %struct.pic32_function*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pic32_desc_function*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.pic32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.pic32_pinctrl* %14, %struct.pic32_pinctrl** %8, align 8
  %15 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %8, align 8
  %16 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %15, i32 0, i32 3
  %17 = load %struct.pic32_pin_group*, %struct.pic32_pin_group** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pic32_pin_group, %struct.pic32_pin_group* %17, i64 %19
  store %struct.pic32_pin_group* %20, %struct.pic32_pin_group** %9, align 8
  %21 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %8, align 8
  %22 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %21, i32 0, i32 2
  %23 = load %struct.pic32_function*, %struct.pic32_function** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pic32_function, %struct.pic32_function* %23, i64 %25
  store %struct.pic32_function* %26, %struct.pic32_function** %10, align 8
  %27 = load %struct.pic32_function*, %struct.pic32_function** %10, align 8
  %28 = getelementptr inbounds %struct.pic32_function, %struct.pic32_function* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %11, align 8
  %30 = load %struct.pic32_pin_group*, %struct.pic32_pin_group** %9, align 8
  %31 = getelementptr inbounds %struct.pic32_pin_group, %struct.pic32_pin_group* %30, i32 0, i32 0
  %32 = load %struct.pic32_desc_function*, %struct.pic32_desc_function** %31, align 8
  store %struct.pic32_desc_function* %32, %struct.pic32_desc_function** %12, align 8
  br label %33

33:                                               ; preds = %68, %3
  %34 = load %struct.pic32_desc_function*, %struct.pic32_desc_function** %12, align 8
  %35 = getelementptr inbounds %struct.pic32_desc_function, %struct.pic32_desc_function* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %33
  %39 = load %struct.pic32_desc_function*, %struct.pic32_desc_function** %12, align 8
  %40 = getelementptr inbounds %struct.pic32_desc_function, %struct.pic32_desc_function* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @strcmp(i64 %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %68, label %45

45:                                               ; preds = %38
  %46 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %8, align 8
  %47 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.pic32_desc_function*, %struct.pic32_desc_function** %12, align 8
  %51 = getelementptr inbounds %struct.pic32_desc_function, %struct.pic32_desc_function* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.pic32_desc_function*, %struct.pic32_desc_function** %12, align 8
  %54 = getelementptr inbounds %struct.pic32_desc_function, %struct.pic32_desc_function* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %49, i64 %52, i32 %55)
  %57 = load %struct.pic32_desc_function*, %struct.pic32_desc_function** %12, align 8
  %58 = getelementptr inbounds %struct.pic32_desc_function, %struct.pic32_desc_function* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %8, align 8
  %61 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.pic32_desc_function*, %struct.pic32_desc_function** %12, align 8
  %64 = getelementptr inbounds %struct.pic32_desc_function, %struct.pic32_desc_function* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = call i32 @writel(i32 %59, i64 %66)
  store i32 0, i32* %4, align 4
  br label %80

68:                                               ; preds = %38
  %69 = load %struct.pic32_desc_function*, %struct.pic32_desc_function** %12, align 8
  %70 = getelementptr inbounds %struct.pic32_desc_function, %struct.pic32_desc_function* %69, i32 1
  store %struct.pic32_desc_function* %70, %struct.pic32_desc_function** %12, align 8
  br label %33

71:                                               ; preds = %33
  %72 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %8, align 8
  %73 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %71, %45
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.pic32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
