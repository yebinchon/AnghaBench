; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32, i64 }
%struct.comedi_insn = type { i32, i32 }

@NI_65XX_FILTER_REG = common dso_local global i64 0, align 8
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NI_65XX_IO_SEL_OUTPUT = common dso_local global i32 0, align 4
@NI_65XX_IO_SEL_INPUT = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i32 0, align 4
@COMEDI_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_65xx_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_65xx_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @NI_65XX_CHAN_TO_MASK(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @NI_65XX_CHAN_TO_PORT(i32 %26)
  %28 = add i64 %25, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %13, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %145 [
    i32 128, label %33
    i32 130, label %81
    i32 131, label %99
    i32 129, label %117
  ]

33:                                               ; preds = %4
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %36, 100
  %38 = udiv i32 %37, 200
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ugt i32 %39, 1048575
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1048575, i32* %14, align 4
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, i32* %14, align 4
  %44 = mul i32 %43, 200
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @NI_65XX_FILTER_ENA(i32 %50)
  %52 = add nsw i64 %49, %51
  %53 = call i32 @readb(i64 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %42
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NI_65XX_FILTER_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %15, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %15, align 4
  br label %72

67:                                               ; preds = %42
  %68 = load i32, i32* %12, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %15, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %67, %56
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i64 @NI_65XX_FILTER_ENA(i32 %77)
  %79 = add nsw i64 %76, %78
  %80 = call i32 @writeb(i32 %73, i64 %79)
  br label %148

81:                                               ; preds = %4
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %152

90:                                               ; preds = %81
  %91 = load i32, i32* @NI_65XX_IO_SEL_OUTPUT, align 4
  %92 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i64 @NI_65XX_IO_SEL_REG(i32 %95)
  %97 = add nsw i64 %94, %96
  %98 = call i32 @writeb(i32 %91, i64 %97)
  br label %148

99:                                               ; preds = %4
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %152

108:                                              ; preds = %99
  %109 = load i32, i32* @NI_65XX_IO_SEL_INPUT, align 4
  %110 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %111 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i64 @NI_65XX_IO_SEL_REG(i32 %113)
  %115 = add nsw i64 %112, %114
  %116 = call i32 @writeb(i32 %109, i64 %115)
  br label %148

117:                                              ; preds = %4
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %119 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %152

126:                                              ; preds = %117
  %127 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %128 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i64 @NI_65XX_IO_SEL_REG(i32 %130)
  %132 = add nsw i64 %129, %131
  %133 = call i32 @readb(i64 %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @NI_65XX_IO_SEL_INPUT, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %126
  %138 = load i32, i32* @COMEDI_INPUT, align 4
  br label %141

139:                                              ; preds = %126
  %140 = load i32, i32* @COMEDI_OUTPUT, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  %143 = load i32*, i32** %9, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %142, i32* %144, align 4
  br label %148

145:                                              ; preds = %4
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %5, align 4
  br label %152

148:                                              ; preds = %141, %108, %90, %72
  %149 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %150 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %148, %145, %123, %105, %87
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @NI_65XX_CHAN_TO_MASK(i32) #1

declare dso_local i64 @NI_65XX_CHAN_TO_PORT(i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @NI_65XX_FILTER_ENA(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @NI_65XX_IO_SEL_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
