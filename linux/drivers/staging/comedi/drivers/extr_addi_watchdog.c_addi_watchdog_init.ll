; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_watchdog.c_addi_watchdog_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_watchdog.c_addi_watchdog_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.addi_watchdog_private = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_TIMER = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@addi_watchdog_insn_config = common dso_local global i32 0, align 4
@addi_watchdog_insn_read = common dso_local global i32 0, align 4
@addi_watchdog_insn_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addi_watchdog_init(%struct.comedi_subdevice* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.addi_watchdog_private*, align 8
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %8 = call %struct.addi_watchdog_private* @comedi_alloc_spriv(%struct.comedi_subdevice* %7, i32 8)
  store %struct.addi_watchdog_private* %8, %struct.addi_watchdog_private** %6, align 8
  %9 = load %struct.addi_watchdog_private*, %struct.addi_watchdog_private** %6, align 8
  %10 = icmp ne %struct.addi_watchdog_private* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.addi_watchdog_private*, %struct.addi_watchdog_private** %6, align 8
  %17 = getelementptr inbounds %struct.addi_watchdog_private, %struct.addi_watchdog_private* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* @COMEDI_SUBD_TIMER, align 4
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @SDF_WRITABLE, align 4
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %25 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 1
  store i32 255, i32* %27, align 4
  %28 = load i32, i32* @addi_watchdog_insn_config, align 4
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @addi_watchdog_insn_read, align 4
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @addi_watchdog_insn_write, align 4
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %14, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.addi_watchdog_private* @comedi_alloc_spriv(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
