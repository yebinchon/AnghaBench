; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_parport.c_parport_ctrl_reg_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_parport.c_parport_ctrl_reg_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@PARPORT_CTRL_REG = common dso_local global i64 0, align 8
@PARPORT_CTRL_IRQ_ENA = common dso_local global i32 0, align 4
@PARPORT_CTRL_BIDIR_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @parport_ctrl_reg_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_ctrl_reg_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i64 @comedi_dio_update_state(%struct.comedi_subdevice* %10, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PARPORT_CTRL_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @inb(i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @PARPORT_CTRL_IRQ_ENA, align 4
  %22 = load i32, i32* @PARPORT_CTRL_BIDIR_ENA, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PARPORT_CTRL_REG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outb(i32 %31, i64 %36)
  br label %38

38:                                               ; preds = %14, %4
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  ret i32 %46
}

declare dso_local i64 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
