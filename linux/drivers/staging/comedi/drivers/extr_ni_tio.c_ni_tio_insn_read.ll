; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.ni_gpct* }
%struct.ni_gpct = type { i32, i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32** }
%struct.comedi_insn = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ni_gpct*, align 8
  %10 = alloca %struct.ni_gpct_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.ni_gpct*, %struct.ni_gpct** %16, align 8
  store %struct.ni_gpct* %17, %struct.ni_gpct** %9, align 8
  %18 = load %struct.ni_gpct*, %struct.ni_gpct** %9, align 8
  %19 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %18, i32 0, i32 2
  %20 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %19, align 8
  store %struct.ni_gpct_device* %20, %struct.ni_gpct_device** %10, align 8
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CR_CHAN(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ni_gpct*, %struct.ni_gpct** %9, align 8
  %26 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.ni_gpct*, %struct.ni_gpct** %9, align 8
  %29 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %80, %4
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %34 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  switch i32 %38, label %79 [
    i32 0, label %39
    i32 1, label %47
    i32 2, label %63
  ]

39:                                               ; preds = %37
  %40 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %42 = call i32 @ni_tio_read_sw_save_reg(%struct.comedi_device* %40, %struct.comedi_subdevice* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %79

47:                                               ; preds = %37
  %48 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %10, align 8
  %49 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @NITIO_LOADA_REG(i32 %55)
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %79

63:                                               ; preds = %37
  %64 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %10, align 8
  %65 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %64, i32 0, i32 0
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i64 @NITIO_LOADB_REG(i32 %71)
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %37, %63, %47, %39
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %31

83:                                               ; preds = %31
  %84 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %85 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  ret i32 %86
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_tio_read_sw_save_reg(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i64 @NITIO_LOADA_REG(i32) #1

declare dso_local i64 @NITIO_LOADB_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
