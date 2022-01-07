; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_e_series_enable_second_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_e_series_enable_second_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i64 }

@NISTC_INTA2_ENA_REG = common dso_local global i32 0, align 4
@NISTC_INTA_ENA_G0_GATE = common dso_local global i32 0, align 4
@NISTC_INTB2_ENA_REG = common dso_local global i32 0, align 4
@NISTC_INTB_ENA_G1_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i16)* @ni_e_series_enable_second_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_e_series_enable_second_irq(%struct.comedi_device* %0, i32 %1, i16 signext %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca %struct.ni_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 %2, i16* %6, align 2
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  store %struct.ni_private* %12, %struct.ni_private** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %14 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %3
  br label %43

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @NISTC_INTA2_ENA_REG, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i16, i16* %6, align 2
  %27 = icmp ne i16 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @NISTC_INTA_ENA_G0_GATE, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %24
  br label %38

31:                                               ; preds = %21
  %32 = load i32, i32* @NISTC_INTB2_ENA_REG, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i16, i16* %6, align 2
  %34 = icmp ne i16 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @NISTC_INTB_ENA_G1_GATE, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @ni_stc_writew(%struct.comedi_device* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %20
  ret void
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
