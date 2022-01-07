; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_gpio.c_sh_pfc_register_gpiochip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_gpio.c_sh_pfc_register_gpiochip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_pfc = type { i32, i64, i32, i64, %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.sh_pfc_pin_range*, %struct.sh_pfc_chip*, %struct.sh_pfc_window* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.sh_pfc_pin_range = type { i64, i64 }
%struct.sh_pfc_chip = type { i32 }
%struct.sh_pfc_window = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"invalid number of IRQ resources\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@gpio_pin_setup = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@gpio_function_setup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sh_pfc_register_gpiochip(%struct.sh_pfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_pfc*, align 8
  %4 = alloca %struct.sh_pfc_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_pfc_window*, align 8
  store %struct.sh_pfc* %0, %struct.sh_pfc** %3, align 8
  %8 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %9 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %8, i32 0, i32 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %113

15:                                               ; preds = %1
  %16 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %17 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %16, i32 0, i32 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %54, %15
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %27 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %24
  %31 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %32 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %31, i32 0, i32 8
  %33 = load %struct.sh_pfc_window*, %struct.sh_pfc_window** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sh_pfc_window, %struct.sh_pfc_window* %33, i64 %35
  store %struct.sh_pfc_window* %36, %struct.sh_pfc_window** %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.sh_pfc_window*, %struct.sh_pfc_window** %7, align 8
  %39 = getelementptr inbounds %struct.sh_pfc_window, %struct.sh_pfc_window* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %30
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.sh_pfc_window*, %struct.sh_pfc_window** %7, align 8
  %45 = getelementptr inbounds %struct.sh_pfc_window, %struct.sh_pfc_window* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sh_pfc_window*, %struct.sh_pfc_window** %7, align 8
  %48 = getelementptr inbounds %struct.sh_pfc_window, %struct.sh_pfc_window* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = icmp slt i64 %43, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %57

53:                                               ; preds = %42, %30
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %24

57:                                               ; preds = %52, %24
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %60 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %113

64:                                               ; preds = %57
  %65 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %66 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %69 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %68, i32 0, i32 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %67, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %76 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %75, i32 0, i32 5
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = call i32 @dev_err(%struct.TYPE_7__* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %113

81:                                               ; preds = %64
  %82 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %83 = load i32, i32* @gpio_pin_setup, align 4
  %84 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %85 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %84, i32 0, i32 8
  %86 = load %struct.sh_pfc_window*, %struct.sh_pfc_window** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.sh_pfc_window, %struct.sh_pfc_window* %86, i64 %88
  %90 = call %struct.sh_pfc_chip* @sh_pfc_add_gpiochip(%struct.sh_pfc* %82, i32 %83, %struct.sh_pfc_window* %89)
  store %struct.sh_pfc_chip* %90, %struct.sh_pfc_chip** %4, align 8
  %91 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %4, align 8
  %92 = call i64 @IS_ERR(%struct.sh_pfc_chip* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %81
  %95 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %4, align 8
  %96 = call i32 @PTR_ERR(%struct.sh_pfc_chip* %95)
  store i32 %96, i32* %2, align 4
  br label %113

97:                                               ; preds = %81
  %98 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %4, align 8
  %99 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %100 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %99, i32 0, i32 7
  store %struct.sh_pfc_chip* %98, %struct.sh_pfc_chip** %100, align 8
  %101 = load i32, i32* @CONFIG_OF, align 4
  %102 = call i64 @IS_ENABLED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %97
  %105 = load %struct.sh_pfc*, %struct.sh_pfc** %3, align 8
  %106 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %105, i32 0, i32 5
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %113

112:                                              ; preds = %104, %97
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %111, %94, %74, %63, %14
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.sh_pfc_chip* @sh_pfc_add_gpiochip(%struct.sh_pfc*, i32, %struct.sh_pfc_window*) #1

declare dso_local i64 @IS_ERR(%struct.sh_pfc_chip*) #1

declare dso_local i32 @PTR_ERR(%struct.sh_pfc_chip*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
