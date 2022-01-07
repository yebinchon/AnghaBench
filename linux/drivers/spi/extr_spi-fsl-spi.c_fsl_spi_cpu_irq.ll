; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_cpu_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_cpu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc8xxx_spi = type { i32 (%struct.mpc8xxx_spi*)*, i32, i64, i32 (i32, %struct.mpc8xxx_spi*)*, i64, %struct.fsl_spi_reg* }
%struct.fsl_spi_reg = type { i32, i32, i32 }

@SPIE_NE = common dso_local global i32 0, align 4
@SPIE_NF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpc8xxx_spi*, i32)* @fsl_spi_cpu_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_spi_cpu_irq(%struct.mpc8xxx_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.mpc8xxx_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_spi_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mpc8xxx_spi* %0, %struct.mpc8xxx_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %9 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %8, i32 0, i32 5
  %10 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %9, align 8
  store %struct.fsl_spi_reg* %10, %struct.fsl_spi_reg** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SPIE_NE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %5, align 8
  %17 = getelementptr inbounds %struct.fsl_spi_reg, %struct.fsl_spi_reg* %16, i32 0, i32 2
  %18 = call i32 @mpc8xxx_spi_read_reg(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %20 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %25 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %24, i32 0, i32 3
  %26 = load i32 (i32, %struct.mpc8xxx_spi*)*, i32 (i32, %struct.mpc8xxx_spi*)** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %29 = call i32 %26(i32 %27, %struct.mpc8xxx_spi* %28)
  br label %30

30:                                               ; preds = %23, %15
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SPIE_NF, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %44, %36
  %38 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %5, align 8
  %39 = getelementptr inbounds %struct.fsl_spi_reg, %struct.fsl_spi_reg* %38, i32 0, i32 1
  %40 = call i32 @mpc8xxx_spi_read_reg(i32* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @SPIE_NF, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (...) @cpu_relax()
  br label %37

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %5, align 8
  %49 = getelementptr inbounds %struct.fsl_spi_reg, %struct.fsl_spi_reg* %48, i32 0, i32 1
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @mpc8xxx_spi_write_reg(i32* %49, i32 %50)
  %52 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %53 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %57 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %47
  %61 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %62 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %61, i32 0, i32 0
  %63 = load i32 (%struct.mpc8xxx_spi*)*, i32 (%struct.mpc8xxx_spi*)** %62, align 8
  %64 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %65 = call i32 %63(%struct.mpc8xxx_spi* %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %5, align 8
  %67 = getelementptr inbounds %struct.fsl_spi_reg, %struct.fsl_spi_reg* %66, i32 0, i32 0
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @mpc8xxx_spi_write_reg(i32* %67, i32 %68)
  br label %74

70:                                               ; preds = %47
  %71 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %72 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %71, i32 0, i32 1
  %73 = call i32 @complete(i32* %72)
  br label %74

74:                                               ; preds = %70, %60
  ret void
}

declare dso_local i32 @mpc8xxx_spi_read_reg(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @mpc8xxx_spi_write_reg(i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
