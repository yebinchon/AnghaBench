; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_init_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_init_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx150x_pinctrl = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SX150X_789_REG_MISC_AUTOCLEAR_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown chip model %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sx150x_pinctrl*)* @sx150x_init_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx150x_init_misc(%struct.sx150x_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sx150x_pinctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sx150x_pinctrl* %0, %struct.sx150x_pinctrl** %3, align 8
  %6 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %3, align 8
  %7 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %6, i32 0, i32 1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %40 [
    i32 128, label %11
    i32 129, label %20
    i32 130, label %32
  ]

11:                                               ; preds = %1
  %12 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %3, align 8
  %13 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @SX150X_789_REG_MISC_AUTOCLEAR_OFF, align 4
  store i32 %19, i32* %5, align 4
  br label %49

20:                                               ; preds = %1
  %21 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %3, align 8
  %22 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %56

31:                                               ; preds = %20
  br label %49

32:                                               ; preds = %1
  %33 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %3, align 8
  %34 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %49

40:                                               ; preds = %1
  %41 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %3, align 8
  %42 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %56

49:                                               ; preds = %32, %31, %11
  %50 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %3, align 8
  %51 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @regmap_write(i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %49, %40, %30
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
