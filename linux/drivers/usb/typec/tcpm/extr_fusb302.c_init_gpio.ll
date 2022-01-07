; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_init_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_init_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"fcs,int_n\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot get named GPIO Int_N, ret=%d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"cannot request GPIO Int_N, ret=%d\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot set GPIO Int_N to input, ret=%d\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"cannot request IRQ for GPIO Int_N, ret=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*)* @init_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_gpio(%struct.fusb302_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fusb302_chip*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %7 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = call i32 @of_get_named_gpio(%struct.device_node* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %13 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %14 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %16 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @gpio_is_valid(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %22 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %25 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_err(%struct.TYPE_3__* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %79

30:                                               ; preds = %1
  %31 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %32 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %35 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @devm_gpio_request(%struct.TYPE_3__* %33, i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %42 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_err(%struct.TYPE_3__* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %79

47:                                               ; preds = %30
  %48 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %49 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @gpio_direction_input(i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %56 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @dev_err(%struct.TYPE_3__* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %79

61:                                               ; preds = %47
  %62 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %63 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @gpio_to_irq(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %70 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @dev_err(%struct.TYPE_3__* %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %79

75:                                               ; preds = %61
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %78 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %68, %54, %40, %20
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @devm_gpio_request(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
