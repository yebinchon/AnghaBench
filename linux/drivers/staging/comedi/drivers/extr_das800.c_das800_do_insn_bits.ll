; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das800.c_das800_do_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das800.c_das800_do_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.das800_private* }
%struct.das800_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@CONTROL1_INTE = common dso_local global i32 0, align 4
@CONTROL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das800_do_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das800_do_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.das800_private*, align 8
  %10 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.das800_private*, %struct.das800_private** %12, align 8
  store %struct.das800_private* %13, %struct.das800_private** %9, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @comedi_dio_update_state(%struct.comedi_subdevice* %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %4
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 4
  %23 = load %struct.das800_private*, %struct.das800_private** %9, align 8
  %24 = getelementptr inbounds %struct.das800_private, %struct.das800_private* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %30 = load i32, i32* @CONTROL1_INTE, align 4
  %31 = load %struct.das800_private*, %struct.das800_private** %9, align 8
  %32 = getelementptr inbounds %struct.das800_private, %struct.das800_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %30, %33
  %35 = load i32, i32* @CONTROL1, align 4
  %36 = call i32 @das800_ind_write(%struct.comedi_device* %29, i32 %34, i32 %35)
  %37 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %18, %4
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  ret i32 %49
}

declare dso_local i64 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @das800_ind_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
