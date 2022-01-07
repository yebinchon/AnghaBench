; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_freq_out_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_freq_out_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@NISTC_CLK_FOUT_TIMEBASE_SEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NISTC_CLK_FOUT_REG = common dso_local global i32 0, align 4
@TIMEBASE_2_NS = common dso_local global i32 0, align 4
@TIMEBASE_1_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_freq_out_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_freq_out_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  switch i32 %16, label %65 [
    i32 130, label %17
    i32 131, label %44
  ]

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %34 [
    i32 129, label %21
    i32 128, label %28
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @NISTC_CLK_FOUT_TIMEBASE_SEL, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %25 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %37

28:                                               ; preds = %17
  %29 = load i32, i32* @NISTC_CLK_FOUT_TIMEBASE_SEL, align 4
  %30 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %31 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %37

34:                                               ; preds = %17
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %72

37:                                               ; preds = %28, %21
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %40 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NISTC_CLK_FOUT_REG, align 4
  %43 = call i32 @ni_stc_writew(%struct.comedi_device* %38, i32 %41, i32 %42)
  br label %68

44:                                               ; preds = %4
  %45 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %46 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NISTC_CLK_FOUT_TIMEBASE_SEL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 128, i32* %53, align 4
  %54 = load i32, i32* @TIMEBASE_2_NS, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %54, i32* %56, align 4
  br label %64

57:                                               ; preds = %44
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 129, i32* %59, align 4
  %60 = load i32, i32* @TIMEBASE_1_NS, align 4
  %61 = mul nsw i32 %60, 2
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %57, %51
  br label %68

65:                                               ; preds = %4
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %72

68:                                               ; preds = %64, %37
  %69 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %70 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %65, %34
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
