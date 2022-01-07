; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_set_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_set_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_lpspi_data = type { i32, i64, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@TCR_CONT = common dso_local global i32 0, align 4
@TCR_CONTC = common dso_local global i32 0, align 4
@IMX7ULP_TCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"TCR=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_lpspi_data*)* @fsl_lpspi_set_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_lpspi_set_cmd(%struct.fsl_lpspi_data* %0) #0 {
  %2 = alloca %struct.fsl_lpspi_data*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_lpspi_data* %0, %struct.fsl_lpspi_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sub nsw i32 %7, 1
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %12 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 3
  %16 = shl i32 %15, 30
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %20 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %62, label %23

23:                                               ; preds = %1
  %24 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %25 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %32 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 3
  %36 = shl i32 %35, 24
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %40 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %23
  %44 = load i32, i32* @TCR_CONT, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %48 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i32, i32* @TCR_CONTC, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %43
  %57 = load i32, i32* @TCR_CONTC, align 4
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %51
  br label %61

61:                                               ; preds = %60, %23
  br label %62

62:                                               ; preds = %61, %1
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %65 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IMX7ULP_TCR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %71 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @dev_dbg(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %73)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
