; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_setup_psc_as_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_setup_psc_as_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_spi = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@PSC_CTRL_DISABLE = common dso_local global i32 0, align 4
@PSC_SEL_PS_SPIMODE = common dso_local global i32 0, align 4
@PSC_CTRL_ENABLE = common dso_local global i32 0, align 4
@PSC_SPISTAT_SR = common dso_local global i32 0, align 4
@PSC_SPICFG_DD_DISABLE = common dso_local global i32 0, align 4
@PSC_SPICFG_RT_FIFO8 = common dso_local global i32 0, align 4
@PSC_SPICFG_TT_FIFO8 = common dso_local global i32 0, align 4
@PSC_SPICFG_DE_ENABLE = common dso_local global i32 0, align 4
@PSC_SPISTAT_DR = common dso_local global i32 0, align 4
@PSC_SPICFG_LB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1550_spi*)* @au1550_spi_setup_psc_as_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1550_spi_setup_psc_as_spi(%struct.au1550_spi* %0) #0 {
  %2 = alloca %struct.au1550_spi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.au1550_spi* %0, %struct.au1550_spi** %2, align 8
  %5 = load i32, i32* @PSC_CTRL_DISABLE, align 4
  %6 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %7 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  store i32 %5, i32* %9, align 4
  %10 = call i32 (...) @wmb()
  %11 = load i32, i32* @PSC_SEL_PS_SPIMODE, align 4
  %12 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %13 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %11, i32* %15, align 4
  %16 = call i32 (...) @wmb()
  %17 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %18 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = call i32 (...) @wmb()
  %22 = load i32, i32* @PSC_CTRL_ENABLE, align 4
  %23 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %24 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 4
  %27 = call i32 (...) @wmb()
  br label %28

28:                                               ; preds = %35, %1
  %29 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %30 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  %34 = call i32 (...) @wmb()
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @PSC_SPISTAT_SR, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %28, label %40

40:                                               ; preds = %35
  %41 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %42 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @PSC_SPICFG_DD_DISABLE, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ 0, %45 ], [ %47, %46 ]
  store i32 %49, i32* %4, align 4
  %50 = call i32 @PSC_SPICFG_SET_LEN(i32 8)
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @PSC_SPICFG_RT_FIFO8, align 4
  %54 = load i32, i32* @PSC_SPICFG_TT_FIFO8, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = call i32 @PSC_SPICFG_SET_BAUD(i32 4)
  %59 = call i32 @PSC_SPICFG_SET_DIV(i32 0)
  %60 = or i32 %58, %59
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %65 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = call i32 (...) @wmb()
  %69 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %70 = call i32 @au1550_spi_mask_ack_all(%struct.au1550_spi* %69)
  %71 = load i32, i32* @PSC_SPICFG_DE_ENABLE, align 4
  %72 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %73 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %71
  store i32 %77, i32* %75, align 4
  %78 = call i32 (...) @wmb()
  br label %79

79:                                               ; preds = %86, %48
  %80 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %81 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %3, align 4
  %85 = call i32 (...) @wmb()
  br label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @PSC_SPISTAT_DR, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %79, label %91

91:                                               ; preds = %86
  %92 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %93 = call i32 @au1550_spi_reset_fifos(%struct.au1550_spi* %92)
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @PSC_SPICFG_SET_LEN(i32) #1

declare dso_local i32 @PSC_SPICFG_SET_BAUD(i32) #1

declare dso_local i32 @PSC_SPICFG_SET_DIV(i32) #1

declare dso_local i32 @au1550_spi_mask_ack_all(%struct.au1550_spi*) #1

declare dso_local i32 @au1550_spi_reset_fifos(%struct.au1550_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
