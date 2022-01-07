; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctl_get_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctl_get_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.stm32_pinctrl = type { i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"st,package\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"No package detected, use default one\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"package detected: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, %struct.stm32_pinctrl*)* @stm32_pctl_get_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_pctl_get_package(%struct.device_node* %0, %struct.stm32_pinctrl* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.stm32_pinctrl*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.stm32_pinctrl* %1, %struct.stm32_pinctrl** %4, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %7 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %6, i32 0, i32 0
  %8 = call i64 @of_property_read_u32(%struct.device_node* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %12 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %14 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_warn(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %19 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %22 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %17, %10
  ret void
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
