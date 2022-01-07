; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_hotk_thaw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_hotk_thaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.eeepc_laptop = type { i64 }

@CM_ASL_WLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @eeepc_hotk_thaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_hotk_thaw(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.eeepc_laptop*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.eeepc_laptop* @dev_get_drvdata(%struct.device* %5)
  store %struct.eeepc_laptop* %6, %struct.eeepc_laptop** %3, align 8
  %7 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %8 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %13 = load i32, i32* @CM_ASL_WLAN, align 4
  %14 = call i32 @get_acpi(%struct.eeepc_laptop* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %19 = load i32, i32* @CM_ASL_WLAN, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @set_acpi(%struct.eeepc_laptop* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %11
  br label %23

23:                                               ; preds = %22, %1
  ret i32 0
}

declare dso_local %struct.eeepc_laptop* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @get_acpi(%struct.eeepc_laptop*, i32) #1

declare dso_local i32 @set_acpi(%struct.eeepc_laptop*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
