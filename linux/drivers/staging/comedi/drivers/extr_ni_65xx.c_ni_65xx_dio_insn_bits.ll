; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_dio_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_dio_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32, i32, i64 }
%struct.comedi_insn = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_65xx_dio_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_65xx_dio_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CR_CHAN(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub i32 %29, 1
  %31 = call i32 @NI_65XX_CHAN_TO_PORT(i32 %30)
  store i32 %31, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @NI_65XX_CHAN_TO_PORT(i32 %32)
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %147, %4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %150

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %39, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @NI_65XX_PORT_TO_CHAN(i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub i32 %46, %47
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp sge i32 %49, 32
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %150

52:                                               ; preds = %38
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %16, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %19, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* %16, align 4
  %64 = lshr i32 %63, %62
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %17, align 4
  %67 = lshr i32 %66, %65
  store i32 %67, i32* %17, align 4
  br label %77

68:                                               ; preds = %52
  %69 = load i32, i32* %19, align 4
  %70 = sub nsw i32 0, %69
  %71 = load i32, i32* %16, align 4
  %72 = shl i32 %71, %70
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %19, align 4
  %74 = sub nsw i32 0, %73
  %75 = load i32, i32* %17, align 4
  %76 = shl i32 %75, %74
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %68, %61
  %78 = load i32, i32* %16, align 4
  %79 = and i32 %78, 255
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %17, align 4
  %81 = and i32 %80, 255
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %119

84:                                               ; preds = %77
  %85 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i64 @NI_65XX_IO_DATA_REG(i32 %88)
  %90 = add nsw i64 %87, %89
  %91 = call i32 @readb(i64 %90)
  store i32 %91, i32* %18, align 4
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %93 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %18, align 4
  %96 = xor i32 %95, %94
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %16, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %18, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %16, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* %18, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %18, align 4
  %106 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %107 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %18, align 4
  %110 = xor i32 %109, %108
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i64 @NI_65XX_IO_DATA_REG(i32 %115)
  %117 = add nsw i64 %114, %116
  %118 = call i32 @writeb(i32 %111, i64 %117)
  br label %119

119:                                              ; preds = %84, %77
  %120 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %121 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i64 @NI_65XX_IO_DATA_REG(i32 %123)
  %125 = add nsw i64 %122, %124
  %126 = call i32 @readb(i64 %125)
  store i32 %126, i32* %18, align 4
  %127 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %128 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %18, align 4
  %131 = xor i32 %130, %129
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %19, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %119
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %18, align 4
  %137 = shl i32 %136, %135
  store i32 %137, i32* %18, align 4
  br label %143

138:                                              ; preds = %119
  %139 = load i32, i32* %19, align 4
  %140 = sub nsw i32 0, %139
  %141 = load i32, i32* %18, align 4
  %142 = lshr i32 %141, %140
  store i32 %142, i32* %18, align 4
  br label %143

143:                                              ; preds = %138, %134
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %12, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %34

150:                                              ; preds = %51, %34
  %151 = load i32, i32* %12, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  ret i32 %156
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @NI_65XX_CHAN_TO_PORT(i32) #1

declare dso_local i32 @NI_65XX_PORT_TO_CHAN(i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @NI_65XX_IO_DATA_REG(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
