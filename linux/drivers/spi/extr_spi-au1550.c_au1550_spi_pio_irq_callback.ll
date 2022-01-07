; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_pio_irq_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_pio_irq_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_spi = type { i64, i64, i64, i32, %struct.TYPE_2__*, {}*, {}*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PSC_SPISTAT_DI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unexpected IRQ!\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@PSC_SPIEVNT_MM = common dso_local global i32 0, align 4
@PSC_SPIEVNT_RO = common dso_local global i32 0, align 4
@PSC_SPIEVNT_RU = common dso_local global i32 0, align 4
@PSC_SPIEVNT_TO = common dso_local global i32 0, align 4
@PSC_SPIEVNT_SD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"pio transfer: unexpected SPI error (event=0x%x stat=0x%x)!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PSC_SPISTAT_RE = common dso_local global i32 0, align 4
@PSC_SPISTAT_TF = common dso_local global i32 0, align 4
@PSC_SPIEVNT_RR = common dso_local global i32 0, align 4
@PSC_SPIEVNT_TR = common dso_local global i32 0, align 4
@PSC_SPIEVNT_TU = common dso_local global i32 0, align 4
@PSC_SPIEVNT_MD = common dso_local global i32 0, align 4
@PSC_SPIPCR_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1550_spi*)* @au1550_spi_pio_irq_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_spi_pio_irq_callback(%struct.au1550_spi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.au1550_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.au1550_spi* %0, %struct.au1550_spi** %3, align 8
  %7 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %8 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %13 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = call i32 (...) @wmb()
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PSC_SPISTAT_DI, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %24 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %2, align 4
  br label %151

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PSC_SPIEVNT_MM, align 4
  %31 = load i32, i32* @PSC_SPIEVNT_RO, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PSC_SPIEVNT_RU, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @PSC_SPIEVNT_TO, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PSC_SPIEVNT_SD, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %29, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %28
  %42 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %43 = call i32 @au1550_spi_mask_ack_all(%struct.au1550_spi* %42)
  %44 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %45 = call i32 @au1550_spi_reset_fifos(%struct.au1550_spi* %44)
  %46 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %47 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %53 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %52, i32 0, i32 3
  %54 = call i32 @complete(i32* %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %2, align 4
  br label %151

56:                                               ; preds = %28
  br label %57

57:                                               ; preds = %104, %56
  store i32 0, i32* %4, align 4
  %58 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %59 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  %63 = call i32 (...) @wmb()
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @PSC_SPISTAT_RE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %103, label %68

68:                                               ; preds = %57
  %69 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %70 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %73 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %68
  %77 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %78 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %77, i32 0, i32 6
  %79 = bitcast {}** %78 to i32 (%struct.au1550_spi*)**
  %80 = load i32 (%struct.au1550_spi*)*, i32 (%struct.au1550_spi*)** %79, align 8
  %81 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %82 = call i32 %80(%struct.au1550_spi* %81)
  store i32 1, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @PSC_SPISTAT_TF, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %76
  %88 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %89 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %92 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %97 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %96, i32 0, i32 5
  %98 = bitcast {}** %97 to i32 (%struct.au1550_spi*)**
  %99 = load i32 (%struct.au1550_spi*)*, i32 (%struct.au1550_spi*)** %98, align 8
  %100 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %101 = call i32 %99(%struct.au1550_spi* %100)
  br label %102

102:                                              ; preds = %95, %87, %76
  br label %103

103:                                              ; preds = %102, %68, %57
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %57, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @PSC_SPIEVNT_RR, align 4
  %109 = load i32, i32* @PSC_SPIEVNT_TR, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %112 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %111, i32 0, i32 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 %110, i32* %114, align 4
  %115 = call i32 (...) @wmb()
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @PSC_SPIEVNT_TU, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %107
  %121 = load i32, i32* @PSC_SPIEVNT_TU, align 4
  %122 = load i32, i32* @PSC_SPIEVNT_MD, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %125 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %124, i32 0, i32 4
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i32 %123, i32* %127, align 4
  %128 = call i32 (...) @wmb()
  %129 = load i32, i32* @PSC_SPIPCR_MS, align 4
  %130 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %131 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %130, i32 0, i32 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  store i32 %129, i32* %133, align 4
  %134 = call i32 (...) @wmb()
  br label %135

135:                                              ; preds = %120, %107
  %136 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %137 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %140 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp sge i64 %138, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %135
  %144 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %145 = call i32 @au1550_spi_mask_ack_all(%struct.au1550_spi* %144)
  %146 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %147 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %146, i32 0, i32 3
  %148 = call i32 @complete(i32* %147)
  br label %149

149:                                              ; preds = %143, %135
  %150 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %41, %22
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @au1550_spi_mask_ack_all(%struct.au1550_spi*) #1

declare dso_local i32 @au1550_spi_reset_fifos(%struct.au1550_spi*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
