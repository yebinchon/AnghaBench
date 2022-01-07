; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_rz_set_config_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_rz_set_config_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { i32, i64, i32, i32, i32 }

@RSPI_SPPCR = common dso_local global i32 0, align 4
@RSPI_SPBR = common dso_local global i32 0, align 4
@SPDCR_SPLBYTE = common dso_local global i32 0, align 4
@RSPI_SPDCR = common dso_local global i32 0, align 4
@RSPI_SPCKD = common dso_local global i32 0, align 4
@RSPI_SSLND = common dso_local global i32 0, align 4
@RSPI_SPND = common dso_local global i32 0, align 4
@RSPI_SPSCR = common dso_local global i32 0, align 4
@RSPI_SPCMD0 = common dso_local global i32 0, align 4
@SPCR_MSTR = common dso_local global i32 0, align 4
@RSPI_SPCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rspi_data*, i32)* @rspi_rz_set_config_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rspi_rz_set_config_register(%struct.rspi_data* %0, i32 %1) #0 {
  %3 = alloca %struct.rspi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rspi_data* %0, %struct.rspi_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %9 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %10 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RSPI_SPPCR, align 4
  %13 = call i32 @rspi_write8(%struct.rspi_data* %8, i32 %11, i32 %12)
  %14 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %15 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @clk_get_rate(i32 %16)
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %29, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %23 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = udiv i64 %25, 4
  %27 = icmp uge i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %34

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load i64, i64* %7, align 8
  %33 = udiv i64 %32, 2
  store i64 %33, i64* %7, align 8
  br label %18

34:                                               ; preds = %28, %18
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %37 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = mul i64 2, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @DIV_ROUND_UP(i64 %35, i32 %40)
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @clamp(i32 %44, i32 0, i32 255)
  %46 = load i32, i32* @RSPI_SPBR, align 4
  %47 = call i32 @rspi_write8(%struct.rspi_data* %43, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 %48, 2
  %50 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %51 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %55 = load i32, i32* @SPDCR_SPLBYTE, align 4
  %56 = load i32, i32* @RSPI_SPDCR, align 4
  %57 = call i32 @rspi_write8(%struct.rspi_data* %54, i32 %55, i32 %56)
  %58 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %59 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %58, i32 0, i32 3
  store i32 1, i32* %59, align 4
  %60 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %61 = load i32, i32* @RSPI_SPCKD, align 4
  %62 = call i32 @rspi_write8(%struct.rspi_data* %60, i32 0, i32 %61)
  %63 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %64 = load i32, i32* @RSPI_SSLND, align 4
  %65 = call i32 @rspi_write8(%struct.rspi_data* %63, i32 0, i32 %64)
  %66 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %67 = load i32, i32* @RSPI_SPND, align 4
  %68 = call i32 @rspi_write8(%struct.rspi_data* %66, i32 0, i32 %67)
  %69 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %70 = load i32, i32* @RSPI_SPSCR, align 4
  %71 = call i32 @rspi_write8(%struct.rspi_data* %69, i32 0, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @SPCMD_SPB_8_TO_16(i32 %72)
  %74 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %75 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %79 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %80 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @RSPI_SPCMD0, align 4
  %83 = call i32 @rspi_write16(%struct.rspi_data* %78, i32 %81, i32 %82)
  %84 = load %struct.rspi_data*, %struct.rspi_data** %3, align 8
  %85 = load i32, i32* @SPCR_MSTR, align 4
  %86 = load i32, i32* @RSPI_SPCR, align 4
  %87 = call i32 @rspi_write8(%struct.rspi_data* %84, i32 %85, i32 %86)
  ret i32 0
}

declare dso_local i32 @rspi_write8(%struct.rspi_data*, i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @SPCMD_SPB_8_TO_16(i32) #1

declare dso_local i32 @rspi_write16(%struct.rspi_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
