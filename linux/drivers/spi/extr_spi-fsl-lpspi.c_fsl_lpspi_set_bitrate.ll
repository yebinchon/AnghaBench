; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_set_bitrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_set_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_lpspi_data = type { i32, i64, %struct.lpspi_config, i32 }
%struct.lpspi_config = type { i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"per-clk should be at least two times of transfer speed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@clkdivs = common dso_local global i32* null, align 8
@IMX7ULP_CCR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"perclk=%d, speed=%d, prescale=%d, scldiv=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_lpspi_data*)* @fsl_lpspi_set_bitrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_lpspi_set_bitrate(%struct.fsl_lpspi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_lpspi_data*, align 8
  %4 = alloca %struct.lpspi_config, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsl_lpspi_data* %0, %struct.fsl_lpspi_data** %3, align 8
  %8 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %8, i32 0, i32 2
  %10 = bitcast %struct.lpspi_config* %4 to i8*
  %11 = bitcast %struct.lpspi_config* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 8 %11, i64 8, i1 false)
  %12 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_get_rate(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = getelementptr inbounds %struct.lpspi_config, %struct.lpspi_config* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = udiv i32 %18, 2
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %23 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %88

28:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** @clkdivs, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.lpspi_config, %struct.lpspi_config* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul i32 %38, %40
  %42 = udiv i32 %33, %41
  %43 = sub i32 %42, 2
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ult i32 %44, 256
  br i1 %45, label %46, label %51

46:                                               ; preds = %32
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %49 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.lpspi_config, %struct.lpspi_config* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  br label %55

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %29

55:                                               ; preds = %46, %29
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 8
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp uge i32 %59, 256
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %88

64:                                               ; preds = %58, %55
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %65, %67
  %69 = load i32, i32* %6, align 4
  %70 = lshr i32 %69, 1
  %71 = shl i32 %70, 16
  %72 = or i32 %68, %71
  %73 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %74 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IMX7ULP_CCR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  %79 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %80 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = getelementptr inbounds %struct.lpspi_config, %struct.lpspi_config* %4, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @dev_dbg(i32 %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %84, i32 %85, i32 %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %64, %61, %21
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @clk_get_rate(i32) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @writel(i32, i64) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
