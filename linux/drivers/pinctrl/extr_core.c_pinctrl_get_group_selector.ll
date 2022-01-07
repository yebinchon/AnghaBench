; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_get_group_selector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_get_group_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pinctrl_ops* }
%struct.pinctrl_ops = type { i32 (%struct.pinctrl_dev.0*)*, i8* (%struct.pinctrl_dev.1*, i32)* }
%struct.pinctrl_dev.0 = type opaque
%struct.pinctrl_dev.1 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"found group selector %u for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"does not have pin group %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinctrl_get_group_selector(%struct.pinctrl_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pinctrl_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.pinctrl_ops*, %struct.pinctrl_ops** %13, align 8
  store %struct.pinctrl_ops* %14, %struct.pinctrl_ops** %6, align 8
  %15 = load %struct.pinctrl_ops*, %struct.pinctrl_ops** %6, align 8
  %16 = getelementptr inbounds %struct.pinctrl_ops, %struct.pinctrl_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.pinctrl_dev.0*)*, i32 (%struct.pinctrl_dev.0*)** %16, align 8
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %19 = bitcast %struct.pinctrl_dev* %18 to %struct.pinctrl_dev.0*
  %20 = call i32 %17(%struct.pinctrl_dev.0* %19)
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %48, %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = load %struct.pinctrl_ops*, %struct.pinctrl_ops** %6, align 8
  %27 = getelementptr inbounds %struct.pinctrl_ops, %struct.pinctrl_ops* %26, i32 0, i32 1
  %28 = load i8* (%struct.pinctrl_dev.1*, i32)*, i8* (%struct.pinctrl_dev.1*, i32)** %27, align 8
  %29 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %30 = bitcast %struct.pinctrl_dev* %29 to %struct.pinctrl_dev.1*
  %31 = load i32, i32* %8, align 4
  %32 = call i8* %28(%struct.pinctrl_dev.1* %30, i32 %31)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %25
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strcmp(i8* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %59

48:                                               ; preds = %35, %25
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %21

51:                                               ; preds = %21
  %52 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %51, %40
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
