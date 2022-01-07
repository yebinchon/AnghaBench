; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_devm_pinctrl_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_devm_pinctrl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl = type { i32 }

@devm_pinctrl_release = common dso_local global i32 0, align 4
@devm_pinctrl_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devm_pinctrl_put(%struct.pinctrl* %0) #0 {
  %2 = alloca %struct.pinctrl*, align 8
  store %struct.pinctrl* %0, %struct.pinctrl** %2, align 8
  %3 = load %struct.pinctrl*, %struct.pinctrl** %2, align 8
  %4 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @devm_pinctrl_release, align 4
  %7 = load i32, i32* @devm_pinctrl_match, align 4
  %8 = load %struct.pinctrl*, %struct.pinctrl** %2, align 8
  %9 = call i32 @devres_release(i32 %5, i32 %6, i32 %7, %struct.pinctrl* %8)
  %10 = call i32 @WARN_ON(i32 %9)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @devres_release(i32, i32, i32, %struct.pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
