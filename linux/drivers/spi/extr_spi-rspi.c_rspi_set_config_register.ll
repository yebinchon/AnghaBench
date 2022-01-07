; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_set_config_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_set_config_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { i32, i32, i32, i64, i32 }

@RSPI_SPPCR = common dso_local global i32 0, align 4
@RSPI_SPBR = common dso_local global i32 0, align 4
@RSPI_SPDCR = common dso_local global i32 0, align 4
@RSPI_SPCKD = common dso_local global i32 0, align 4
@RSPI_SSLND = common dso_local global i32 0, align 4
@RSPI_SPND = common dso_local global i32 0, align 4
@RSPI_SPCR2 = common dso_local global i32 0, align 4
@RSPI_SPSCR = common dso_local global i32 0, align 4
@RSPI_SPCMD0 = common dso_local global i32 0, align 4
@SPCR_MSTR = common dso_local global i32 0, align 4
@RSPI_SPCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rspi_data*, i32)* @rspi_set_config_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rspi_set_config_register(%struct.rspi_data* %0, i32 %1) #0 {
  %3 = alloca %struct.rspi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rspi_data* %0, %struct.rspi_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %7 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %8 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RSPI_SPPCR, align 4
  %11 = call i32 @rspi_write8(%struct.rspi_data* %6, i32 %9, i32 %10)
  %12 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %13 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_get_rate(i32 %14)
  %16 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %17 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 2, %18
  %20 = call i32 @DIV_ROUND_UP(i32 %15, i32 %19)
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @clamp(i32 %23, i32 0, i32 255)
  %25 = load i32, i32* @RSPI_SPBR, align 4
  %26 = call i32 @rspi_write8(%struct.rspi_data* %22, i32 %24, i32 %25)
  %27 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %28 = load i32, i32* @RSPI_SPDCR, align 4
  %29 = call i32 @rspi_write8(%struct.rspi_data* %27, i32 0, i32 %28)
  %30 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %31 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %33 = load i32, i32* @RSPI_SPCKD, align 4
  %34 = call i32 @rspi_write8(%struct.rspi_data* %32, i32 0, i32 %33)
  %35 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %36 = load i32, i32* @RSPI_SSLND, align 4
  %37 = call i32 @rspi_write8(%struct.rspi_data* %35, i32 0, i32 %36)
  %38 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %39 = load i32, i32* @RSPI_SPND, align 4
  %40 = call i32 @rspi_write8(%struct.rspi_data* %38, i32 0, i32 %39)
  %41 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %42 = load i32, i32* @RSPI_SPCR2, align 4
  %43 = call i32 @rspi_write8(%struct.rspi_data* %41, i32 0, i32 %42)
  %44 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %45 = load i32, i32* @RSPI_SPSCR, align 4
  %46 = call i32 @rspi_write8(%struct.rspi_data* %44, i32 0, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @SPCMD_SPB_8_TO_16(i32 %47)
  %49 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %50 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %54 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %55 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @RSPI_SPCMD0, align 4
  %58 = call i32 @rspi_write16(%struct.rspi_data* %53, i32 %56, i32 %57)
  %59 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %60 = load i32, i32* @SPCR_MSTR, align 4
  %61 = load i32, i32* @RSPI_SPCR, align 4
  %62 = call i32 @rspi_write8(%struct.rspi_data* %59, i32 %60, i32 %61)
  ret i32 0
}

declare dso_local i32 @rspi_write8(%struct.rspi_data*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @SPCMD_SPB_8_TO_16(i32) #1

declare dso_local i32 @rspi_write16(%struct.rspi_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
