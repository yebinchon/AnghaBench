; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pinmux_check_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pinmux_check_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pinmux_ops* }
%struct.pinmux_ops = type { i32 (%struct.pinctrl_dev.0*)*, i8* (%struct.pinctrl_dev.1*, i32)*, i32, i32 }
%struct.pinctrl_dev.0 = type opaque
%struct.pinctrl_dev.1 = type opaque

@.str = private unnamed_addr constant [38 x i8] c"pinmux ops lacks necessary functions\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"pinmux ops has no name for function%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinmux_check_ops(%struct.pinctrl_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pinctrl_dev*, align 8
  %4 = alloca %struct.pinmux_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %3, align 8
  %8 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.pinmux_ops*, %struct.pinmux_ops** %11, align 8
  store %struct.pinmux_ops* %12, %struct.pinmux_ops** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.pinmux_ops*, %struct.pinmux_ops** %4, align 8
  %14 = icmp ne %struct.pinmux_ops* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.pinmux_ops*, %struct.pinmux_ops** %4, align 8
  %17 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %16, i32 0, i32 0
  %18 = load i32 (%struct.pinctrl_dev.0*)*, i32 (%struct.pinctrl_dev.0*)** %17, align 8
  %19 = icmp ne i32 (%struct.pinctrl_dev.0*)* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load %struct.pinmux_ops*, %struct.pinmux_ops** %4, align 8
  %22 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %21, i32 0, i32 1
  %23 = load i8* (%struct.pinctrl_dev.1*, i32)*, i8* (%struct.pinctrl_dev.1*, i32)** %22, align 8
  %24 = icmp ne i8* (%struct.pinctrl_dev.1*, i32)* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.pinmux_ops*, %struct.pinmux_ops** %4, align 8
  %27 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.pinmux_ops*, %struct.pinmux_ops** %4, align 8
  %32 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30, %25, %20, %15, %1
  %36 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %37 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %75

42:                                               ; preds = %30
  %43 = load %struct.pinmux_ops*, %struct.pinmux_ops** %4, align 8
  %44 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %43, i32 0, i32 0
  %45 = load i32 (%struct.pinctrl_dev.0*)*, i32 (%struct.pinctrl_dev.0*)** %44, align 8
  %46 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %47 = bitcast %struct.pinctrl_dev* %46 to %struct.pinctrl_dev.0*
  %48 = call i32 %45(%struct.pinctrl_dev.0* %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %71, %42
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = load %struct.pinmux_ops*, %struct.pinmux_ops** %4, align 8
  %55 = getelementptr inbounds %struct.pinmux_ops, %struct.pinmux_ops* %54, i32 0, i32 1
  %56 = load i8* (%struct.pinctrl_dev.1*, i32)*, i8* (%struct.pinctrl_dev.1*, i32)** %55, align 8
  %57 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %58 = bitcast %struct.pinctrl_dev* %57 to %struct.pinctrl_dev.1*
  %59 = load i32, i32* %6, align 4
  %60 = call i8* %56(%struct.pinctrl_dev.1* %58, i32 %59)
  store i8* %60, i8** %7, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %53
  %64 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %65 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %75

71:                                               ; preds = %53
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %49

74:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %63, %35
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
