; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/renesas/extr_r9a06g032-smp.c_r9a06g032_smp_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/renesas/extr_r9a06g032-smp.c_r9a06g032_smp_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@cpu_bootaddr = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cpu_lock = common dso_local global i32 0, align 4
@secondary_startup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @r9a06g032_smp_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r9a06g032_smp_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %6 = load i32, i32* @cpu_bootaddr, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = call i32 @spin_lock(i32* @cpu_lock)
  %13 = load i32, i32* @secondary_startup, align 4
  %14 = call i32 @__pa_symbol(i32 %13)
  %15 = load i32, i32* @cpu_bootaddr, align 4
  %16 = call i32 @writel(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @cpumask_of(i32 %17)
  %19 = call i32 @arch_send_wakeup_ipi_mask(i32 %18)
  %20 = call i32 @spin_unlock(i32* @cpu_lock)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %11, %8
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @__pa_symbol(i32) #1

declare dso_local i32 @arch_send_wakeup_ipi_mask(i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
