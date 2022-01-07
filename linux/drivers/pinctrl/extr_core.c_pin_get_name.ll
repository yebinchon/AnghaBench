; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pin_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pin_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pin_desc = type { i8* }

@.str = private unnamed_addr constant [28 x i8] c"failed to get pin(%d) name\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pin_get_name(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pin_desc*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev* %7, i32 %8)
  store %struct.pin_desc* %9, %struct.pin_desc** %6, align 8
  %10 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %11 = icmp ne %struct.pin_desc* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i8* null, i8** %3, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %20 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

declare dso_local %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
