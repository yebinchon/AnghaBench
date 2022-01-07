; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_watchdog.c_addi_watchdog_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_watchdog.c_addi_watchdog_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.addi_watchdog_private* }
%struct.addi_watchdog_private = type { i32, i64 }
%struct.comedi_insn = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"watchdog is disabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADDI_TCW_CTRL_TRIG = common dso_local global i32 0, align 4
@ADDI_TCW_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @addi_watchdog_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addi_watchdog_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.addi_watchdog_private*, align 8
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load %struct.addi_watchdog_private*, %struct.addi_watchdog_private** %13, align 8
  store %struct.addi_watchdog_private* %14, %struct.addi_watchdog_private** %10, align 8
  %15 = load %struct.addi_watchdog_private*, %struct.addi_watchdog_private** %10, align 8
  %16 = getelementptr inbounds %struct.addi_watchdog_private, %struct.addi_watchdog_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_warn(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %52

26:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %30 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.addi_watchdog_private*, %struct.addi_watchdog_private** %10, align 8
  %35 = getelementptr inbounds %struct.addi_watchdog_private, %struct.addi_watchdog_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ADDI_TCW_CTRL_TRIG, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.addi_watchdog_private*, %struct.addi_watchdog_private** %10, align 8
  %40 = getelementptr inbounds %struct.addi_watchdog_private, %struct.addi_watchdog_private* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ADDI_TCW_CTRL_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outl(i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %27

48:                                               ; preds = %27
  %49 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %50 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %19
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
