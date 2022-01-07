; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_dio_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_dio_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@NISTC_DIO_SDIN = common dso_local global i32 0, align 4
@NISTC_DIO_SDOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NISTC_DIO_OUT_PARALLEL_MASK = common dso_local global i32 0, align 4
@NISTC_DIO_OUT_REG = common dso_local global i32 0, align 4
@NISTC_DIO_IN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_dio_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_dio_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ni_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.ni_private*, %struct.ni_private** %12, align 8
  store %struct.ni_private* %13, %struct.ni_private** %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NISTC_DIO_SDIN, align 4
  %18 = load i32, i32* @NISTC_DIO_SDOUT, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %24 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %65

30:                                               ; preds = %22, %4
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @comedi_dio_update_state(%struct.comedi_subdevice* %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = load i32, i32* @NISTC_DIO_OUT_PARALLEL_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %39 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @NISTC_DIO_OUT_PARALLEL(i32 %44)
  %46 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %47 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %51 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %52 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @NISTC_DIO_OUT_REG, align 4
  %55 = call i32 @ni_stc_writew(%struct.comedi_device* %50, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %35, %30
  %57 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %58 = load i32, i32* @NISTC_DIO_IN_REG, align 4
  %59 = call i32 @ni_stc_readw(%struct.comedi_device* %57, i32 %58)
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %63 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %56, %27
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

declare dso_local i32 @NISTC_DIO_OUT_PARALLEL(i32) #1

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_stc_readw(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
