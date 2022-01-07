; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl = type { i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"obtain a copy of previously claimed pinctrl\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pinctrl* @pinctrl_get(%struct.device* %0) #0 {
  %2 = alloca %struct.pinctrl*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pinctrl*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = icmp ne %struct.device* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.pinctrl* @ERR_PTR(i32 %13)
  store %struct.pinctrl* %14, %struct.pinctrl** %2, align 8
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call %struct.pinctrl* @find_pinctrl(%struct.device* %16)
  store %struct.pinctrl* %17, %struct.pinctrl** %4, align 8
  %18 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %19 = icmp ne %struct.pinctrl* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %24 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %23, i32 0, i32 0
  %25 = call i32 @kref_get(i32* %24)
  %26 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  store %struct.pinctrl* %26, %struct.pinctrl** %2, align 8
  br label %30

27:                                               ; preds = %15
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call %struct.pinctrl* @create_pinctrl(%struct.device* %28, i32* null)
  store %struct.pinctrl* %29, %struct.pinctrl** %2, align 8
  br label %30

30:                                               ; preds = %27, %20, %11
  %31 = load %struct.pinctrl*, %struct.pinctrl** %2, align 8
  ret %struct.pinctrl* %31
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.pinctrl* @ERR_PTR(i32) #1

declare dso_local %struct.pinctrl* @find_pinctrl(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.pinctrl* @create_pinctrl(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
