; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_calculate_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_calculate_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extra_config = common dso_local global i32 0, align 4
@ds2482_active_pullup = common dso_local global i64 0, align 8
@DS2482_REG_CFG_APU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ds2482_calculate_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2482_calculate_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @extra_config, align 4
  %4 = load i32, i32* %2, align 4
  %5 = or i32 %4, %3
  store i32 %5, i32* %2, align 4
  %6 = load i64, i64* @ds2482_active_pullup, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @DS2482_REG_CFG_APU, align 4
  %10 = load i32, i32* %2, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %15, 15
  %17 = shl i32 %16, 4
  %18 = or i32 %13, %17
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
