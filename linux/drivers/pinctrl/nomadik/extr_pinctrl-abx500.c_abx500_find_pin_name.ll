; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_find_pin_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_find_pin_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.abx500_pinctrl = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"GPIO%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pinctrl_dev*, i8*)* @abx500_find_pin_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @abx500_find_pin_name(%struct.pinctrl_dev* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.abx500_pinctrl*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %10 = call %struct.abx500_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %9)
  store %struct.abx500_pinctrl* %10, %struct.abx500_pinctrl** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @sscanf(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %7)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %52

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %48, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %8, align 8
  %18 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %15
  %24 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %8, align 8
  %25 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %23
  %37 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %8, align 8
  %38 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %3, align 8
  br label %53

47:                                               ; preds = %23
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %15

51:                                               ; preds = %15
  br label %52

52:                                               ; preds = %51, %2
  store i8* null, i8** %3, align 8
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i8*, i8** %3, align 8
  ret i8* %54
}

declare dso_local %struct.abx500_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
