; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_pinctrl_dt_node_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_pinctrl_dt_node_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { i32 }

@PIN_MAP_TYPE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*)* @atlas7_pinctrl_dt_node_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas7_pinctrl_dt_node_to_map(%struct.pinctrl_dev* %0, %struct.device_node* %1, %struct.pinctrl_map** %2, i32* %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.pinctrl_map**, align 8
  %8 = alloca i32*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.pinctrl_map** %2, %struct.pinctrl_map*** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %10 = load %struct.device_node*, %struct.device_node** %6, align 8
  %11 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %7, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* @PIN_MAP_TYPE_INVALID, align 4
  %14 = call i32 @pinconf_generic_dt_node_to_map(%struct.pinctrl_dev* %9, %struct.device_node* %10, %struct.pinctrl_map** %11, i32* %12, i32 %13)
  ret i32 %14
}

declare dso_local i32 @pinconf_generic_dt_node_to_map(%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
