; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_spi_data_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_spi_data_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.wilc_spi*, i32 }
%struct.wilc_spi = type { i32 }
%struct.spi_device = type { i32 }

@DATA_PKT_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed data block cmd write, bus error...\0A\00", align 1
@N_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed data block write, bus error...\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed data block crc write, bus error...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32*, i32)* @spi_data_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_data_write(%struct.wilc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca %struct.wilc_spi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  store %struct.wilc* %0, %struct.wilc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.wilc*, %struct.wilc** %4, align 8
  %16 = getelementptr inbounds %struct.wilc, %struct.wilc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.spi_device* @to_spi_device(i32 %17)
  store %struct.spi_device* %18, %struct.spi_device** %7, align 8
  %19 = load %struct.wilc*, %struct.wilc** %4, align 8
  %20 = getelementptr inbounds %struct.wilc, %struct.wilc* %19, i32 0, i32 0
  %21 = load %struct.wilc_spi*, %struct.wilc_spi** %20, align 8
  store %struct.wilc_spi* %21, %struct.wilc_spi** %8, align 8
  store i32 1, i32* %11, align 4
  %22 = bitcast [2 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 8, i1 false)
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %85, %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DATA_PKT_SZ, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %10, align 4
  store i32 3, i32* %13, align 4
  br label %36

29:                                               ; preds = %23
  %30 = load i32, i32* @DATA_PKT_SZ, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %13, align 4
  br label %35

34:                                               ; preds = %29
  store i32 2, i32* %13, align 4
  br label %35

35:                                               ; preds = %34, %33
  br label %36

36:                                               ; preds = %35, %27
  store i32 240, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load %struct.wilc*, %struct.wilc** %4, align 8
  %41 = call i64 @wilc_spi_tx(%struct.wilc* %40, i32* %12, i32 1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @N_FAIL, align 4
  store i32 %47, i32* %11, align 4
  br label %88

48:                                               ; preds = %36
  %49 = load %struct.wilc*, %struct.wilc** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @wilc_spi_tx(%struct.wilc* %49, i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %59 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @N_FAIL, align 4
  store i32 %61, i32* %11, align 4
  br label %88

62:                                               ; preds = %48
  %63 = load %struct.wilc_spi*, %struct.wilc_spi** %8, align 8
  %64 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %62
  %68 = load %struct.wilc*, %struct.wilc** %4, align 8
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %70 = call i64 @wilc_spi_tx(%struct.wilc* %68, i32* %69, i32 2)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @N_FAIL, align 4
  store i32 %76, i32* %11, align 4
  br label %88

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %62
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %23, label %88

88:                                               ; preds = %85, %72, %57, %43
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @wilc_spi_tx(%struct.wilc*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
