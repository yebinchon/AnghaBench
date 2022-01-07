; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_set_pinmux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_set_pinmux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmt_pinctrl_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@NO_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"pin:%d no direction register defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"pin:%d no alt function available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmt_pinctrl_data*, i32, i32)* @wmt_set_pinmux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_set_pinmux(%struct.wmt_pinctrl_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmt_pinctrl_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.wmt_pinctrl_data* %0, %struct.wmt_pinctrl_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @WMT_BANK_FROM_PIN(i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @WMT_BIT_FROM_PIN(i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %17 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %24 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @NO_REG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %35 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %94

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %93 [
    i32 129, label %43
    i32 128, label %59
    i32 130, label %75
  ]

43:                                               ; preds = %41
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @NO_REG, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @BIT(i64 %50)
  %52 = call i32 @wmt_setbits(%struct.wmt_pinctrl_data* %48, i64 %49, i32 %51)
  br label %53

53:                                               ; preds = %47, %43
  %54 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @BIT(i64 %56)
  %58 = call i32 @wmt_clearbits(%struct.wmt_pinctrl_data* %54, i64 %55, i32 %57)
  br label %93

59:                                               ; preds = %41
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @NO_REG, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @BIT(i64 %66)
  %68 = call i32 @wmt_setbits(%struct.wmt_pinctrl_data* %64, i64 %65, i32 %67)
  br label %69

69:                                               ; preds = %63, %59
  %70 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @BIT(i64 %72)
  %74 = call i32 @wmt_setbits(%struct.wmt_pinctrl_data* %70, i64 %71, i32 %73)
  br label %93

75:                                               ; preds = %41
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @NO_REG, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %81 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %94

87:                                               ; preds = %75
  %88 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %5, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @BIT(i64 %90)
  %92 = call i32 @wmt_clearbits(%struct.wmt_pinctrl_data* %88, i64 %89, i32 %91)
  br label %93

93:                                               ; preds = %87, %41, %69, %53
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %79, %33
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @WMT_BANK_FROM_PIN(i32) #1

declare dso_local i64 @WMT_BIT_FROM_PIN(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wmt_setbits(%struct.wmt_pinctrl_data*, i64, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @wmt_clearbits(%struct.wmt_pinctrl_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
