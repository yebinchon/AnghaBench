; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_config_pix_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_config_pix_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufx_data = type { i32 }
%struct.pll_values = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"pixclock %d ps = clk_pixel %d Hz\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"error writing 0x7000\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"error writing 0x7008\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"error writing 0x7004\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"error clearing PLL0 bypass bits in 0x7000\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"error clearing PLL1 bypass bits in 0x7000\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"error clearing gate bits in 0x7000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufx_data*, i32)* @ufx_config_pix_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_config_pix_clk(%struct.ufx_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ufx_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pll_values, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ufx_data* %0, %struct.ufx_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = bitcast %struct.pll_values* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 36, i1 false)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @PICOS2KHZ(i32 %11)
  %13 = mul nsw i32 %12, 1000
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ufx_calc_pll_values(i32 %19, %struct.pll_values* %5)
  %21 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %22 = call i32 @ufx_reg_write(%struct.ufx_data* %21, i32 28672, i32 -2147483633)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @check_warn_return(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %26, %29
  %31 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %5, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 %30, %33
  %35 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %5, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 20
  %38 = or i32 %34, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ufx_reg_write(%struct.ufx_data* %39, i32 28680, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @check_warn_return(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %5, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %5, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %45, %48
  %50 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %5, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 16
  %53 = or i32 %49, %52
  %54 = getelementptr inbounds %struct.pll_values, %struct.pll_values* %5, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 20
  %57 = or i32 %53, %56
  store i32 %57, i32* %6, align 4
  %58 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @ufx_reg_write(%struct.ufx_data* %58, i32 28676, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @check_warn_return(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %64 = call i32 @ufx_reg_clear_bits(%struct.ufx_data* %63, i32 28672, i32 5)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @check_warn_return(i32 %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %67 = call i32 @msleep(i32 1)
  %68 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %69 = call i32 @ufx_reg_clear_bits(%struct.ufx_data* %68, i32 28672, i32 10)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @check_warn_return(i32 %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %72 = call i32 @msleep(i32 1)
  %73 = load %struct.ufx_data*, %struct.ufx_data** %3, align 8
  %74 = call i32 @ufx_reg_clear_bits(%struct.ufx_data* %73, i32 28672, i32 -2147483648)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @check_warn_return(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PICOS2KHZ(i32) #2

declare dso_local i32 @pr_debug(i8*, i32, i32) #2

declare dso_local i32 @ufx_calc_pll_values(i32, %struct.pll_values*) #2

declare dso_local i32 @ufx_reg_write(%struct.ufx_data*, i32, i32) #2

declare dso_local i32 @check_warn_return(i32, i8*) #2

declare dso_local i32 @ufx_reg_clear_bits(%struct.ufx_data*, i32, i32) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
