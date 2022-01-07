; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_irqhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64 }

@TSI148_LCSR_INTEO = common dso_local global i64 0, align 8
@TSI148_LCSR_INTS = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_DMA1S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_DMA0S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM3S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM2S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM1S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_LM0S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_MB3S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_MB2S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_MB1S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_MB0S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_PERRS = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_VERRS = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IACKS = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ7S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ6S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ5S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ4S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ3S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ2S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTS_IRQ1S = common dso_local global i32 0, align 4
@TSI148_LCSR_INTC = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tsi148_irqhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_irqhandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vme_bridge*, align 8
  %10 = alloca %struct.tsi148_driver*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.vme_bridge*
  store %struct.vme_bridge* %12, %struct.vme_bridge** %9, align 8
  %13 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %14 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %13, i32 0, i32 0
  %15 = load %struct.tsi148_driver*, %struct.tsi148_driver** %14, align 8
  store %struct.tsi148_driver* %15, %struct.tsi148_driver** %10, align 8
  %16 = load %struct.tsi148_driver*, %struct.tsi148_driver** %10, align 8
  %17 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TSI148_LCSR_INTEO, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @ioread32be(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.tsi148_driver*, %struct.tsi148_driver** %10, align 8
  %23 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TSI148_LCSR_INTS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @ioread32be(i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %148

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @TSI148_LCSR_INTS_DMA1S, align 4
  %42 = load i32, i32* @TSI148_LCSR_INTS_DMA0S, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.tsi148_driver*, %struct.tsi148_driver** %10, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @tsi148_DMA_irqhandler(%struct.tsi148_driver* %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %46, %39
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @TSI148_LCSR_INTS_LM3S, align 4
  %55 = load i32, i32* @TSI148_LCSR_INTS_LM2S, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @TSI148_LCSR_INTS_LM1S, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @TSI148_LCSR_INTS_LM0S, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %53, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load %struct.tsi148_driver*, %struct.tsi148_driver** %10, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @tsi148_LM_irqhandler(%struct.tsi148_driver* %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %63, %52
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @TSI148_LCSR_INTS_MB3S, align 4
  %72 = load i32, i32* @TSI148_LCSR_INTS_MB2S, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @TSI148_LCSR_INTS_MB1S, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @TSI148_LCSR_INTS_MB0S, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %70, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @tsi148_MB_irqhandler(%struct.vme_bridge* %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %80, %69
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @TSI148_LCSR_INTS_PERRS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %93 = call i32 @tsi148_PERR_irqhandler(%struct.vme_bridge* %92)
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @TSI148_LCSR_INTS_VERRS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %103 = call i32 @tsi148_VERR_irqhandler(%struct.vme_bridge* %102)
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @TSI148_LCSR_INTS_IACKS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.tsi148_driver*, %struct.tsi148_driver** %10, align 8
  %113 = call i32 @tsi148_IACK_irqhandler(%struct.tsi148_driver* %112)
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %111, %106
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @TSI148_LCSR_INTS_IRQ7S, align 4
  %119 = load i32, i32* @TSI148_LCSR_INTS_IRQ6S, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @TSI148_LCSR_INTS_IRQ5S, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @TSI148_LCSR_INTS_IRQ4S, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @TSI148_LCSR_INTS_IRQ3S, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @TSI148_LCSR_INTS_IRQ2S, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @TSI148_LCSR_INTS_IRQ1S, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %117, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %116
  %134 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @tsi148_VIRQ_irqhandler(%struct.vme_bridge* %134, i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %133, %116
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.tsi148_driver*, %struct.tsi148_driver** %10, align 8
  %142 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @TSI148_LCSR_INTC, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @iowrite32be(i32 %140, i64 %145)
  %147 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %139, %37
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tsi148_DMA_irqhandler(%struct.tsi148_driver*, i32) #1

declare dso_local i32 @tsi148_LM_irqhandler(%struct.tsi148_driver*, i32) #1

declare dso_local i32 @tsi148_MB_irqhandler(%struct.vme_bridge*, i32) #1

declare dso_local i32 @tsi148_PERR_irqhandler(%struct.vme_bridge*) #1

declare dso_local i32 @tsi148_VERR_irqhandler(%struct.vme_bridge*) #1

declare dso_local i32 @tsi148_IACK_irqhandler(%struct.tsi148_driver*) #1

declare dso_local i32 @tsi148_VIRQ_irqhandler(%struct.vme_bridge*, i32) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
