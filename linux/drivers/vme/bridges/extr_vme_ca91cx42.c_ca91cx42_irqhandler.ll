; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_irqhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i64 }

@LINT_EN = common dso_local global i64 0, align 8
@LINT_STAT = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@CA91CX42_LINT_DMA = common dso_local global i32 0, align 4
@CA91CX42_LINT_LM0 = common dso_local global i32 0, align 4
@CA91CX42_LINT_LM1 = common dso_local global i32 0, align 4
@CA91CX42_LINT_LM2 = common dso_local global i32 0, align 4
@CA91CX42_LINT_LM3 = common dso_local global i32 0, align 4
@CA91CX42_LINT_MBOX = common dso_local global i32 0, align 4
@CA91CX42_LINT_SW_IACK = common dso_local global i32 0, align 4
@CA91CX42_LINT_VERR = common dso_local global i32 0, align 4
@CA91CX42_LINT_LERR = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ1 = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ2 = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ3 = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ4 = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ5 = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ6 = common dso_local global i32 0, align 4
@CA91CX42_LINT_VIRQ7 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ca91cx42_irqhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_irqhandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vme_bridge*, align 8
  %10 = alloca %struct.ca91cx42_driver*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.vme_bridge*
  store %struct.vme_bridge* %12, %struct.vme_bridge** %9, align 8
  %13 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %14 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %13, i32 0, i32 0
  %15 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %14, align 8
  store %struct.ca91cx42_driver* %15, %struct.ca91cx42_driver** %10, align 8
  %16 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %10, align 8
  %17 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LINT_EN, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @ioread32(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %10, align 8
  %23 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LINT_STAT, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @ioread32(i64 %26)
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
  br label %139

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @CA91CX42_LINT_DMA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %10, align 8
  %46 = call i32 @ca91cx42_DMA_irqhandler(%struct.ca91cx42_driver* %45)
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @CA91CX42_LINT_LM0, align 4
  %52 = load i32, i32* @CA91CX42_LINT_LM1, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CA91CX42_LINT_LM2, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CA91CX42_LINT_LM3, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %50, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %10, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ca91cx42_LM_irqhandler(%struct.ca91cx42_driver* %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %60, %49
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @CA91CX42_LINT_MBOX, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %10, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @ca91cx42_MB_irqhandler(%struct.ca91cx42_driver* %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @CA91CX42_LINT_SW_IACK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %10, align 8
  %84 = call i32 @ca91cx42_IACK_irqhandler(%struct.ca91cx42_driver* %83)
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @CA91CX42_LINT_VERR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %94 = call i32 @ca91cx42_VERR_irqhandler(%struct.vme_bridge* %93)
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @CA91CX42_LINT_LERR, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %104 = call i32 @ca91cx42_LERR_irqhandler(%struct.vme_bridge* %103)
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %102, %97
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @CA91CX42_LINT_VIRQ1, align 4
  %110 = load i32, i32* @CA91CX42_LINT_VIRQ2, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @CA91CX42_LINT_VIRQ3, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @CA91CX42_LINT_VIRQ4, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @CA91CX42_LINT_VIRQ5, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @CA91CX42_LINT_VIRQ6, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @CA91CX42_LINT_VIRQ7, align 4
  %121 = or i32 %119, %120
  %122 = and i32 %108, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %107
  %125 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @ca91cx42_VIRQ_irqhandler(%struct.vme_bridge* %125, i32 %126)
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %124, %107
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %10, align 8
  %133 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @LINT_STAT, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @iowrite32(i32 %131, i64 %136)
  %138 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %130, %37
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ca91cx42_DMA_irqhandler(%struct.ca91cx42_driver*) #1

declare dso_local i32 @ca91cx42_LM_irqhandler(%struct.ca91cx42_driver*, i32) #1

declare dso_local i32 @ca91cx42_MB_irqhandler(%struct.ca91cx42_driver*, i32) #1

declare dso_local i32 @ca91cx42_IACK_irqhandler(%struct.ca91cx42_driver*) #1

declare dso_local i32 @ca91cx42_VERR_irqhandler(%struct.vme_bridge*) #1

declare dso_local i32 @ca91cx42_LERR_irqhandler(%struct.vme_bridge*) #1

declare dso_local i32 @ca91cx42_VIRQ_irqhandler(%struct.vme_bridge*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
