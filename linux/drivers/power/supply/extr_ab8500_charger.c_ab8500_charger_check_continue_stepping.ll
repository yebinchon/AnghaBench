; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_check_continue_stepping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_check_continue_stepping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_charger = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AB8500_USBCH_IPT_CRNTLVL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_charger*, i32)* @ab8500_charger_check_continue_stepping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_charger_check_continue_stepping(%struct.ab8500_charger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ab8500_charger*, align 8
  %5 = alloca i32, align 4
  store %struct.ab8500_charger* %0, %struct.ab8500_charger** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AB8500_USBCH_IPT_CRNTLVL_REG, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.ab8500_charger*, %struct.ab8500_charger** %4, align 8
  %11 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %9
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
