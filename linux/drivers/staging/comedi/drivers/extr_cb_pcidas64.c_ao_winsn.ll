; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_winsn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_winsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private*, %struct.pcidas64_board* }
%struct.pcidas64_private = type { i32, i64 }
%struct.pcidas64_board = type { i64 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@DAC_CONTROL0_REG = common dso_local global i64 0, align 8
@DAC_CONTROL1_REG = common dso_local global i64 0, align 8
@LAYOUT_4020 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ao_winsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ao_winsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pcidas64_board*, align 8
  %10 = alloca %struct.pcidas64_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.pcidas64_board*, %struct.pcidas64_board** %16, align 8
  store %struct.pcidas64_board* %17, %struct.pcidas64_board** %9, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load %struct.pcidas64_private*, %struct.pcidas64_private** %19, align 8
  store %struct.pcidas64_private* %20, %struct.pcidas64_private** %10, align 8
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CR_CHAN(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CR_RANGE(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load %struct.pcidas64_private*, %struct.pcidas64_private** %10, align 8
  %37 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DAC_CONTROL0_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writew(i32 0, i64 %40)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %43 = load %struct.pcidas64_private*, %struct.pcidas64_private** %10, align 8
  %44 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %43, i32 0, i32 0
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @set_dac_range_bits(%struct.comedi_device* %42, i32* %44, i32 %45, i32 %46)
  %48 = load %struct.pcidas64_private*, %struct.pcidas64_private** %10, align 8
  %49 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pcidas64_private*, %struct.pcidas64_private** %10, align 8
  %52 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DAC_CONTROL1_REG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writew(i32 %50, i64 %55)
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %104, %4
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %107

63:                                               ; preds = %57
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %14, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %13, align 4
  %69 = load %struct.pcidas64_board*, %struct.pcidas64_board** %9, align 8
  %70 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @LAYOUT_4020, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %63
  %75 = load i32, i32* %13, align 4
  %76 = and i32 %75, 255
  %77 = load %struct.pcidas64_private*, %struct.pcidas64_private** %10, align 8
  %78 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @dac_lsb_4020_reg(i32 %80)
  %82 = add nsw i64 %79, %81
  %83 = call i32 @writew(i32 %76, i64 %82)
  %84 = load i32, i32* %13, align 4
  %85 = lshr i32 %84, 8
  %86 = and i32 %85, 15
  %87 = load %struct.pcidas64_private*, %struct.pcidas64_private** %10, align 8
  %88 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @dac_msb_4020_reg(i32 %90)
  %92 = add nsw i64 %89, %91
  %93 = call i32 @writew(i32 %86, i64 %92)
  br label %103

94:                                               ; preds = %63
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.pcidas64_private*, %struct.pcidas64_private** %10, align 8
  %97 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i64 @dac_convert_reg(i32 %99)
  %101 = add nsw i64 %98, %100
  %102 = call i32 @writew(i32 %95, i64 %101)
  br label %103

103:                                              ; preds = %94, %74
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %14, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %57

107:                                              ; preds = %57
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %110 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  %115 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %116 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  ret i32 %117
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @set_dac_range_bits(%struct.comedi_device*, i32*, i32, i32) #1

declare dso_local i64 @dac_lsb_4020_reg(i32) #1

declare dso_local i64 @dac_msb_4020_reg(i32) #1

declare dso_local i64 @dac_convert_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
