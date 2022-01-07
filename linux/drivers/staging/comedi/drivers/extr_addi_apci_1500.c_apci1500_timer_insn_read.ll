; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1500.c_apci1500_timer_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1500.c_apci1500_timer_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@Z8536_CT_CMDSTAT_GCB = common dso_local global i32 0, align 4
@Z8536_CT_CMD_RCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1500_timer_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci1500_timer_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @Z8536_CT_CMDSTAT_REG(i32 %18)
  %20 = call i32 @z8536_read(%struct.comedi_device* %17, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @Z8536_CT_CMDSTAT_GCB, align 4
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @Z8536_CT_CMD_RCC, align 4
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %55, %4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %30 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @Z8536_CT_CMDSTAT_REG(i32 %36)
  %38 = call i32 @z8536_write(%struct.comedi_device* %34, i32 %35, i32 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @Z8536_CT_VAL_MSB_REG(i32 %40)
  %42 = call i32 @z8536_read(%struct.comedi_device* %39, i32 %41)
  %43 = shl i32 %42, 8
  store i32 %43, i32* %11, align 4
  %44 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @Z8536_CT_VAL_LSB_REG(i32 %45)
  %47 = call i32 @z8536_read(%struct.comedi_device* %44, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %33
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %27

58:                                               ; preds = %27
  %59 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  ret i32 %61
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @z8536_read(%struct.comedi_device*, i32) #1

declare dso_local i32 @Z8536_CT_CMDSTAT_REG(i32) #1

declare dso_local i32 @z8536_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @Z8536_CT_VAL_MSB_REG(i32) #1

declare dso_local i32 @Z8536_CT_VAL_LSB_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
