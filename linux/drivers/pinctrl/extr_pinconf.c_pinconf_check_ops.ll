; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinconf.c_pinconf_check_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinconf.c_pinconf_check_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pinconf_ops* }
%struct.pinconf_ops = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"pinconf has to be able to set a pins config\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinconf_check_ops(%struct.pinctrl_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pinctrl_dev*, align 8
  %4 = alloca %struct.pinconf_ops*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %3, align 8
  %5 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.pinconf_ops*, %struct.pinconf_ops** %8, align 8
  store %struct.pinconf_ops* %9, %struct.pinconf_ops** %4, align 8
  %10 = load %struct.pinconf_ops*, %struct.pinconf_ops** %4, align 8
  %11 = getelementptr inbounds %struct.pinconf_ops, %struct.pinconf_ops* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load %struct.pinconf_ops*, %struct.pinconf_ops** %4, align 8
  %16 = getelementptr inbounds %struct.pinconf_ops, %struct.pinconf_ops* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
