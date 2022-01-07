; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinctrl_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinctrl_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pinctrl = type opaque
%struct.pinctrl_state = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sprd_pinctrl_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.pinctrl*, align 8
  %4 = alloca %struct.pinctrl_state*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.pinctrl_state* @devm_pinctrl_get(i32* %6)
  %8 = bitcast %struct.pinctrl_state* %7 to %struct.pinctrl*
  store %struct.pinctrl* %8, %struct.pinctrl** %3, align 8
  %9 = load %struct.pinctrl*, %struct.pinctrl** %3, align 8
  %10 = bitcast %struct.pinctrl* %9 to %struct.pinctrl_state*
  %11 = call i64 @IS_ERR(%struct.pinctrl_state* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.pinctrl*, %struct.pinctrl** %3, align 8
  %16 = bitcast %struct.pinctrl* %15 to %struct.pinctrl_state*
  %17 = call %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.pinctrl_state* %17, %struct.pinctrl_state** %4, align 8
  %18 = load %struct.pinctrl_state*, %struct.pinctrl_state** %4, align 8
  %19 = call i64 @IS_ERR(%struct.pinctrl_state* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %27

22:                                               ; preds = %14
  %23 = load %struct.pinctrl*, %struct.pinctrl** %3, align 8
  %24 = bitcast %struct.pinctrl* %23 to %struct.pinctrl_state*
  %25 = load %struct.pinctrl_state*, %struct.pinctrl_state** %4, align 8
  %26 = call i32 @pinctrl_select_state(%struct.pinctrl_state* %24, %struct.pinctrl_state* %25)
  br label %27

27:                                               ; preds = %22, %21, %13
  ret void
}

declare dso_local %struct.pinctrl_state* @devm_pinctrl_get(i32*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_state*) #1

declare dso_local %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state*, i8*) #1

declare dso_local i32 @pinctrl_select_state(%struct.pinctrl_state*, %struct.pinctrl_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
