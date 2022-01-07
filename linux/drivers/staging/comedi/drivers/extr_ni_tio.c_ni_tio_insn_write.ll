; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.ni_gpct* }
%struct.ni_gpct = type { i32, i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32** }
%struct.comedi_insn = type { i32, i32 }

@GI_LOAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ni_gpct*, align 8
  %11 = alloca %struct.ni_gpct_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.ni_gpct*, %struct.ni_gpct** %18, align 8
  store %struct.ni_gpct* %19, %struct.ni_gpct** %10, align 8
  %20 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %21 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %20, i32 0, i32 2
  %22 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %21, align 8
  store %struct.ni_gpct_device* %22, %struct.ni_gpct_device** %11, align 8
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CR_CHAN(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %28 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %31 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %34 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %117

38:                                               ; preds = %4
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %41 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %110 [
    i32 0, label %48
    i32 1, label %76
    i32 2, label %93
  ]

48:                                               ; preds = %38
  %49 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %50 = call i32 @ni_tio_next_load_register(%struct.ni_gpct* %49)
  store i32 %50, i32* %15, align 4
  %51 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %15, align 4
  %54 = zext i32 %53 to i64
  %55 = call i32 @ni_tio_write(%struct.ni_gpct* %51, i32 %52, i64 %54)
  %56 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @NITIO_CMD_REG(i32 %57)
  %59 = load i32, i32* @GI_LOAD, align 4
  %60 = call i32 @ni_tio_set_bits_transient(%struct.ni_gpct* %56, i32 %58, i32 0, i32 0, i32 %59)
  %61 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %62 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %11, align 8
  %63 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %15, align 4
  %74 = zext i32 %73 to i64
  %75 = call i32 @ni_tio_write(%struct.ni_gpct* %61, i32 %72, i64 %74)
  br label %113

76:                                               ; preds = %38
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %11, align 8
  %79 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %78, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @NITIO_LOADA_REG(i32 %85)
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %77, i32* %87, align 4
  %88 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i64 @NITIO_LOADA_REG(i32 %90)
  %92 = call i32 @ni_tio_write(%struct.ni_gpct* %88, i32 %89, i64 %91)
  br label %113

93:                                               ; preds = %38
  %94 = load i32, i32* %16, align 4
  %95 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %11, align 8
  %96 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %95, i32 0, i32 0
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i64 @NITIO_LOADB_REG(i32 %102)
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %94, i32* %104, align 4
  %105 = load %struct.ni_gpct*, %struct.ni_gpct** %10, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i64 @NITIO_LOADB_REG(i32 %107)
  %109 = call i32 @ni_tio_write(%struct.ni_gpct* %105, i32 %106, i64 %108)
  br label %113

110:                                              ; preds = %38
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %117

113:                                              ; preds = %93, %76, %48
  %114 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %115 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %113, %110, %37
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_tio_next_load_register(%struct.ni_gpct*) #1

declare dso_local i32 @ni_tio_write(%struct.ni_gpct*, i32, i64) #1

declare dso_local i32 @ni_tio_set_bits_transient(%struct.ni_gpct*, i32, i32, i32, i32) #1

declare dso_local i32 @NITIO_CMD_REG(i32) #1

declare dso_local i64 @NITIO_LOADA_REG(i32) #1

declare dso_local i64 @NITIO_LOADB_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
