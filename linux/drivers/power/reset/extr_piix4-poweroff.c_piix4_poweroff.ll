; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_piix4-poweroff.c_piix4_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_piix4-poweroff.c_piix4_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@io_offset = common dso_local global i64 0, align 8
@PIIX4_FUNC3IO_PMSTS = common dso_local global i64 0, align 8
@PIIX4_FUNC3IO_PMSTS_PWRBTN_STS = common dso_local global i32 0, align 4
@PIIX4_FUNC3IO_PMCNTRL_SUS_TYP_SOFF = common dso_local global i32 0, align 4
@PIIX4_FUNC3IO_PMCNTRL_SUS_EN = common dso_local global i32 0, align 4
@PIIX4_FUNC3IO_PMCNTRL = common dso_local global i64 0, align 8
@pm_dev = common dso_local global %struct.TYPE_2__* null, align 8
@PIIX4_SUSPEND_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to poweroff system\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @piix4_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @piix4_poweroff() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %0, %13
  %4 = load i64, i64* @io_offset, align 8
  %5 = load i64, i64* @PIIX4_FUNC3IO_PMSTS, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @inw(i64 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @PIIX4_FUNC3IO_PMSTS_PWRBTN_STS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %2, align 4
  %15 = load i64, i64* @io_offset, align 8
  %16 = load i64, i64* @PIIX4_FUNC3IO_PMSTS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outw(i32 %14, i64 %17)
  br label %3

19:                                               ; preds = %12
  %20 = load i32, i32* @PIIX4_FUNC3IO_PMCNTRL_SUS_TYP_SOFF, align 4
  %21 = load i32, i32* @PIIX4_FUNC3IO_PMCNTRL_SUS_EN, align 4
  %22 = or i32 %20, %21
  %23 = load i64, i64* @io_offset, align 8
  %24 = load i64, i64* @PIIX4_FUNC3IO_PMCNTRL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outw(i32 %22, i64 %25)
  %27 = call i32 @mdelay(i32 10)
  %28 = call i32 @PCI_DEVFN(i32 31, i32 7)
  %29 = call i32 @PCI_DEVID(i32 0, i32 %28)
  store i32 %29, i32* %1, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pm_dev, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @PIIX4_SUSPEND_MAGIC, align 4
  %35 = call i32 @pci_bus_write_config_dword(i32 %32, i32 %33, i32 0, i32 %34)
  %36 = call i32 @mdelay(i32 1000)
  %37 = call i32 @pr_emerg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @PCI_DEVID(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_bus_write_config_dword(i32, i32, i32, i32) #1

declare dso_local i32 @pr_emerg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
