; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_set_clk_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_set_clk_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_msiof_spi_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid clock rate parameters %lu and %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Requested SPI transfer rate %d is too low\0A\00", align 1
@sh_msiof_spi_div_array = common dso_local global i32* null, align 8
@TSCR = common dso_local global i32 0, align 4
@SPI_CONTROLLER_MUST_TX = common dso_local global i32 0, align 4
@RSCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_msiof_spi_priv*, i64, i32)* @sh_msiof_spi_set_clk_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_msiof_spi_set_clk_regs(%struct.sh_msiof_spi_priv* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sh_msiof_spi_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sh_msiof_spi_priv* %0, %struct.sh_msiof_spi_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %12 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %3
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %21)
  br label %97

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @DIV_ROUND_UP(i64 %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ule i64 %27, 1024
  br i1 %28, label %29, label %64

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = icmp ule i64 %33, 32
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i64, i64* %7, align 8
  %37 = icmp ugt i64 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %38, %35, %32, %29
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = lshr i64 %44, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  br label %52

49:                                               ; preds = %39
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %60, %52
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %54, 32
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %53

63:                                               ; preds = %53
  br label %71

64:                                               ; preds = %23
  %65 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %66 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i32 5, i32* %10, align 4
  store i32 32, i32* %8, align 4
  br label %71

71:                                               ; preds = %64, %63
  %72 = load i32*, i32** @sh_msiof_spi_div_array, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @SCR_BRPS(i32 %77)
  %79 = or i32 %76, %78
  store i32 %79, i32* %9, align 4
  %80 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %81 = load i32, i32* @TSCR, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %80, i32 %81, i32 %82)
  %84 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %85 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SPI_CONTROLLER_MUST_TX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %71
  %93 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %94 = load i32, i32* @RSCR, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %19, %92, %71
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @SCR_BRPS(i32) #1

declare dso_local i32 @sh_msiof_write(%struct.sh_msiof_spi_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
