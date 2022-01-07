; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_set_config_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_set_config_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { i32, i32, i32, i32, i32 }

@RSPI_SPPCR = common dso_local global i32 0, align 4
@RSPI_SPBR = common dso_local global i32 0, align 4
@RSPI_SPDCR = common dso_local global i32 0, align 4
@RSPI_SPCKD = common dso_local global i32 0, align 4
@RSPI_SSLND = common dso_local global i32 0, align 4
@RSPI_SPND = common dso_local global i32 0, align 4
@SPCMD_SPB_8BIT = common dso_local global i32 0, align 4
@SPCMD_SPB_16BIT = common dso_local global i32 0, align 4
@SPCMD_SPB_32BIT = common dso_local global i32 0, align 4
@SPCMD_SCKDEN = common dso_local global i32 0, align 4
@SPCMD_SLNDEN = common dso_local global i32 0, align 4
@SPCMD_SPNDEN = common dso_local global i32 0, align 4
@QSPI_SPBMUL0 = common dso_local global i32 0, align 4
@SPBFCR_TXRST = common dso_local global i32 0, align 4
@SPBFCR_RXRST = common dso_local global i32 0, align 4
@QSPI_SPBFCR = common dso_local global i32 0, align 4
@RSPI_SPSCR = common dso_local global i32 0, align 4
@RSPI_SPCMD0 = common dso_local global i32 0, align 4
@SPCR_MSTR = common dso_local global i32 0, align 4
@RSPI_SPCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rspi_data*, i32)* @qspi_set_config_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qspi_set_config_register(%struct.rspi_data* %0, i32 %1) #0 {
  %3 = alloca %struct.rspi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rspi_data* %0, %struct.rspi_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %7 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %8 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RSPI_SPPCR, align 4
  %11 = call i32 @rspi_write8(%struct.rspi_data* %6, i32 %9, i32 %10)
  %12 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %13 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_get_rate(i32 %14)
  %16 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %17 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 2, %18
  %20 = call i32 @DIV_ROUND_UP(i32 %15, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @clamp(i32 %22, i32 0, i32 255)
  %24 = load i32, i32* @RSPI_SPBR, align 4
  %25 = call i32 @rspi_write8(%struct.rspi_data* %21, i32 %23, i32 %24)
  %26 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %27 = load i32, i32* @RSPI_SPDCR, align 4
  %28 = call i32 @rspi_write8(%struct.rspi_data* %26, i32 0, i32 %27)
  %29 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %30 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %29, i32 0, i32 2
  store i32 1, i32* %30, align 4
  %31 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %32 = load i32, i32* @RSPI_SPCKD, align 4
  %33 = call i32 @rspi_write8(%struct.rspi_data* %31, i32 0, i32 %32)
  %34 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %35 = load i32, i32* @RSPI_SSLND, align 4
  %36 = call i32 @rspi_write8(%struct.rspi_data* %34, i32 0, i32 %35)
  %37 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %38 = load i32, i32* @RSPI_SPND, align 4
  %39 = call i32 @rspi_write8(%struct.rspi_data* %37, i32 0, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load i32, i32* @SPCMD_SPB_8BIT, align 4
  %44 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %45 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %64

48:                                               ; preds = %2
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 16
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @SPCMD_SPB_16BIT, align 4
  %53 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %54 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %63

57:                                               ; preds = %48
  %58 = load i32, i32* @SPCMD_SPB_32BIT, align 4
  %59 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %60 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i32, i32* @SPCMD_SCKDEN, align 4
  %66 = load i32, i32* @SPCMD_SLNDEN, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SPCMD_SPNDEN, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %71 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %75 = load i32, i32* @QSPI_SPBMUL0, align 4
  %76 = call i32 @rspi_write32(%struct.rspi_data* %74, i32 0, i32 %75)
  %77 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %78 = load i32, i32* @SPBFCR_TXRST, align 4
  %79 = load i32, i32* @SPBFCR_RXRST, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @QSPI_SPBFCR, align 4
  %82 = call i32 @rspi_write8(%struct.rspi_data* %77, i32 %80, i32 %81)
  %83 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %84 = load i32, i32* @QSPI_SPBFCR, align 4
  %85 = call i32 @rspi_write8(%struct.rspi_data* %83, i32 0, i32 %84)
  %86 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %87 = load i32, i32* @RSPI_SPSCR, align 4
  %88 = call i32 @rspi_write8(%struct.rspi_data* %86, i32 0, i32 %87)
  %89 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %90 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %91 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RSPI_SPCMD0, align 4
  %94 = call i32 @rspi_write16(%struct.rspi_data* %89, i32 %92, i32 %93)
  %95 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %96 = load i32, i32* @SPCR_MSTR, align 4
  %97 = load i32, i32* @RSPI_SPCR, align 4
  %98 = call i32 @rspi_write8(%struct.rspi_data* %95, i32 %96, i32 %97)
  ret i32 0
}

declare dso_local i32 @rspi_write8(%struct.rspi_data*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @rspi_write32(%struct.rspi_data*, i32, i32) #1

declare dso_local i32 @rspi_write16(%struct.rspi_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
