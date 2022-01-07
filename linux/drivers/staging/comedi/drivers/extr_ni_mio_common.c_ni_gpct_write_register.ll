; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_gpct_write_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_gpct_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_device* }
%struct.comedi_device = type { i32 }

@NISTC_INTA_ENA_G0_GATE = common dso_local global i32 0, align 4
@NISTC_INTA_ENA_G0_TC = common dso_local global i32 0, align 4
@NISTC_INTB_ENA_G1_GATE = common dso_local global i32 0, align 4
@NISTC_INTB_ENA_G1_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ni_gpct*, i32, i32)* @ni_gpct_write_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_gpct_write_register(%struct.ni_gpct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ni_gpct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %10 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.comedi_device*, %struct.comedi_device** %12, align 8
  store %struct.comedi_device* %13, %struct.comedi_device** %7, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ni_gpct_to_stc_register(%struct.comedi_device* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %53

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %48 [
    i32 140, label %22
    i32 133, label %22
    i32 138, label %22
    i32 131, label %22
    i32 139, label %22
    i32 132, label %22
    i32 141, label %22
    i32 134, label %22
    i32 136, label %27
    i32 129, label %27
    i32 135, label %27
    i32 128, label %27
    i32 137, label %32
    i32 130, label %40
  ]

22:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %23 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ni_writew(%struct.comedi_device* %23, i32 %24, i32 %25)
  br label %53

27:                                               ; preds = %20, %20, %20, %20
  %28 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ni_stc_writel(%struct.comedi_device* %28, i32 %29, i32 %30)
  br label %53

32:                                               ; preds = %20
  %33 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @NISTC_INTA_ENA_G0_GATE, align 4
  %36 = load i32, i32* @NISTC_INTA_ENA_G0_TC, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ni_set_bitfield(%struct.comedi_device* %33, i32 %34, i32 %37, i32 %38)
  br label %53

40:                                               ; preds = %20
  %41 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @NISTC_INTB_ENA_G1_GATE, align 4
  %44 = load i32, i32* @NISTC_INTB_ENA_G1_TC, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ni_set_bitfield(%struct.comedi_device* %41, i32 %42, i32 %45, i32 %46)
  br label %53

48:                                               ; preds = %20
  %49 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @ni_stc_writew(%struct.comedi_device* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %19, %48, %40, %32, %27, %22
  ret void
}

declare dso_local i32 @ni_gpct_to_stc_register(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_stc_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_set_bitfield(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
