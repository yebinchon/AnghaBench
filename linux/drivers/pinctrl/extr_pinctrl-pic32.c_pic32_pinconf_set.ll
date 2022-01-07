; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pic32_pinctrl = type { i32 }
%struct.pic32_gpio_bank = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"setting pin %d bank %d mask 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"   pullup\0A\00", align 1
@CNPU_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"   pulldown\0A\00", align 1
@CNPD_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"   digital\0A\00", align 1
@ANSEL_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"   analog\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"   opendrain\0A\00", align 1
@ODCU_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Property %u not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @pic32_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pic32_pinctrl*, align 8
  %11 = alloca %struct.pic32_gpio_bank*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %18 = call %struct.pic32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.pic32_pinctrl* %18, %struct.pic32_pinctrl** %10, align 8
  %19 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.pic32_gpio_bank* @pctl_to_bank(%struct.pic32_pinctrl* %19, i32 %20)
  store %struct.pic32_gpio_bank* %21, %struct.pic32_gpio_bank** %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %11, align 8
  %24 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub i32 %22, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @BIT(i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %10, align 8
  %31 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %11, align 8
  %35 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %16, align 4
  %39 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %37, i32 %38)
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %143, %4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %146

44:                                               ; preds = %40
  %45 = load i64*, i64** %8, align 8
  %46 = load i32, i32* %14, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @pinconf_to_config_param(i64 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i64*, i64** %8, align 8
  %52 = load i32, i32* %14, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @pinconf_to_config_argument(i64 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  switch i32 %57, label %134 [
    i32 133, label %58
    i32 134, label %71
    i32 129, label %84
    i32 130, label %97
    i32 132, label %110
    i32 131, label %123
    i32 128, label %128
  ]

58:                                               ; preds = %44
  %59 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %10, align 8
  %60 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @dev_dbg(i32 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %11, align 8
  %65 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @CNPU_REG, align 4
  %68 = call i64 @PIC32_SET(i32 %67)
  %69 = add nsw i64 %66, %68
  %70 = call i32 @writel(i32 %63, i64 %69)
  br label %142

71:                                               ; preds = %44
  %72 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %10, align 8
  %73 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @dev_dbg(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %11, align 8
  %78 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @CNPD_REG, align 4
  %81 = call i64 @PIC32_SET(i32 %80)
  %82 = add nsw i64 %79, %81
  %83 = call i32 @writel(i32 %76, i64 %82)
  br label %142

84:                                               ; preds = %44
  %85 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %10, align 8
  %86 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @dev_dbg(i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* %16, align 4
  %90 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %11, align 8
  %91 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @ANSEL_REG, align 4
  %94 = call i64 @PIC32_CLR(i32 %93)
  %95 = add nsw i64 %92, %94
  %96 = call i32 @writel(i32 %89, i64 %95)
  br label %142

97:                                               ; preds = %44
  %98 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %10, align 8
  %99 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @dev_dbg(i32 %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %11, align 8
  %104 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @ANSEL_REG, align 4
  %107 = call i64 @PIC32_SET(i32 %106)
  %108 = add nsw i64 %105, %107
  %109 = call i32 @writel(i32 %102, i64 %108)
  br label %142

110:                                              ; preds = %44
  %111 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %10, align 8
  %112 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @dev_dbg(i32 %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %11, align 8
  %117 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @ODCU_REG, align 4
  %120 = call i64 @PIC32_SET(i32 %119)
  %121 = add nsw i64 %118, %120
  %122 = call i32 @writel(i32 %115, i64 %121)
  br label %142

123:                                              ; preds = %44
  %124 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %11, align 8
  %125 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %124, i32 0, i32 0
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @pic32_gpio_direction_input(%struct.TYPE_3__* %125, i32 %126)
  br label %142

128:                                              ; preds = %44
  %129 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %11, align 8
  %130 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %129, i32 0, i32 0
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @pic32_gpio_direction_output(%struct.TYPE_3__* %130, i32 %131, i32 %132)
  br label %142

134:                                              ; preds = %44
  %135 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %10, align 8
  %136 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @dev_err(i32 %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @ENOTSUPP, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %5, align 4
  br label %147

142:                                              ; preds = %128, %123, %110, %97, %84, %71, %58
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %14, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %40

146:                                              ; preds = %40
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %146, %134
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local %struct.pic32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.pic32_gpio_bank* @pctl_to_bank(%struct.pic32_pinctrl*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @PIC32_SET(i32) #1

declare dso_local i64 @PIC32_CLR(i32) #1

declare dso_local i32 @pic32_gpio_direction_input(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pic32_gpio_direction_output(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
