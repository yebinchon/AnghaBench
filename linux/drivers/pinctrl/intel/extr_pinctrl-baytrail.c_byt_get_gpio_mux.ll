; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-baytrail.c_byt_get_gpio_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-baytrail.c_byt_get_gpio_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.byt_gpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BYT_SCORE_ACPI_UID = common dso_local global i32 0, align 4
@BYT_ALTER_GPIO_MUX = common dso_local global i32 0, align 4
@BYT_SUS_ACPI_UID = common dso_local global i32 0, align 4
@BYT_DEFAULT_GPIO_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.byt_gpio*, i32)* @byt_get_gpio_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_get_gpio_mux(%struct.byt_gpio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.byt_gpio*, align 8
  %5 = alloca i32, align 4
  store %struct.byt_gpio* %0, %struct.byt_gpio** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.byt_gpio*, %struct.byt_gpio** %4, align 8
  %7 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BYT_SCORE_ACPI_UID, align 4
  %12 = call i32 @strcmp(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp uge i32 %15, 92
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp ule i32 %18, 93
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @BYT_ALTER_GPIO_MUX, align 4
  store i32 %21, i32* %3, align 4
  br label %41

22:                                               ; preds = %17, %14, %2
  %23 = load %struct.byt_gpio*, %struct.byt_gpio** %4, align 8
  %24 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BYT_SUS_ACPI_UID, align 4
  %29 = call i32 @strcmp(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = icmp uge i32 %32, 11
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp ule i32 %35, 21
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @BYT_ALTER_GPIO_MUX, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %34, %31, %22
  %40 = load i32, i32* @BYT_DEFAULT_GPIO_MUX, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %37, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
