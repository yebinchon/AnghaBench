; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_desc = type { i32 }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pinctrl_dev* @pinctrl_register(%struct.pinctrl_desc* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_desc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pinctrl_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.pinctrl_desc* %0, %struct.pinctrl_desc** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.pinctrl_dev* @pinctrl_init_controller(%struct.pinctrl_desc* %10, %struct.device* %11, i8* %12)
  store %struct.pinctrl_dev* %13, %struct.pinctrl_dev** %8, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %15 = call i64 @IS_ERR(%struct.pinctrl_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  store %struct.pinctrl_dev* %18, %struct.pinctrl_dev** %4, align 8
  br label %29

19:                                               ; preds = %3
  %20 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %21 = call i32 @pinctrl_enable(%struct.pinctrl_dev* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.pinctrl_dev* @ERR_PTR(i32 %25)
  store %struct.pinctrl_dev* %26, %struct.pinctrl_dev** %4, align 8
  br label %29

27:                                               ; preds = %19
  %28 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  store %struct.pinctrl_dev* %28, %struct.pinctrl_dev** %4, align 8
  br label %29

29:                                               ; preds = %27, %24, %17
  %30 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  ret %struct.pinctrl_dev* %30
}

declare dso_local %struct.pinctrl_dev* @pinctrl_init_controller(%struct.pinctrl_desc*, %struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinctrl_enable(%struct.pinctrl_dev*) #1

declare dso_local %struct.pinctrl_dev* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
