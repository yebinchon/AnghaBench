; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.wilc_sdio*, i32 }
%struct.wilc_sdio = type { i32 }
%struct.sdio_func = type { i32 }
%struct.sdio_cmd52 = type { i32, i32, i32, i64, i64 }
%struct.sdio_cmd53 = type { i32, i32, i32, i32, i32, i32*, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"Failed cmd 52, read reg (%08x) ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed cmd53, write reg (%08x)...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32, i32)* @wilc_sdio_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_sdio_write_reg(%struct.wilc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wilc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdio_func*, align 8
  %9 = alloca %struct.wilc_sdio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sdio_cmd52, align 8
  %12 = alloca %struct.sdio_cmd53, align 8
  store %struct.wilc* %0, %struct.wilc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.wilc*, %struct.wilc** %5, align 8
  %14 = getelementptr inbounds %struct.wilc, %struct.wilc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.sdio_func* @dev_to_sdio_func(i32 %15)
  store %struct.sdio_func* %16, %struct.sdio_func** %8, align 8
  %17 = load %struct.wilc*, %struct.wilc** %5, align 8
  %18 = getelementptr inbounds %struct.wilc, %struct.wilc* %17, i32 0, i32 0
  %19 = load %struct.wilc_sdio*, %struct.wilc_sdio** %18, align 8
  store %struct.wilc_sdio* %19, %struct.wilc_sdio** %9, align 8
  %20 = call i32 @cpu_to_le32s(i32* %7)
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 240
  br i1 %22, label %23, label %44

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %24, 255
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %11, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %11, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %11, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %11, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %11, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = load %struct.wilc*, %struct.wilc** %5, align 8
  %35 = call i32 @wilc_sdio_cmd52(%struct.wilc* %34, %struct.sdio_cmd52* %11)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %40 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %73

43:                                               ; preds = %26
  br label %72

44:                                               ; preds = %23, %3
  %45 = load %struct.wilc*, %struct.wilc** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @wilc_sdio_set_func0_csa_address(%struct.wilc* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %73

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %12, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %12, i32 0, i32 7
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %12, i32 0, i32 1
  store i32 271, i32* %53, align 4
  %54 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %12, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %12, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %12, i32 0, i32 3
  store i32 4, i32* %56, align 4
  %57 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %12, i32 0, i32 5
  store i32* %7, i32** %57, align 8
  %58 = load %struct.wilc_sdio*, %struct.wilc_sdio** %9, align 8
  %59 = getelementptr inbounds %struct.wilc_sdio, %struct.wilc_sdio* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %12, i32 0, i32 4
  store i32 %60, i32* %61, align 8
  %62 = load %struct.wilc*, %struct.wilc** %5, align 8
  %63 = call i32 @wilc_sdio_cmd53(%struct.wilc* %62, %struct.sdio_cmd53* %12)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %50
  %67 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %68 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %67, i32 0, i32 0
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %73

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %71, %43
  store i32 1, i32* %4, align 4
  br label %74

73:                                               ; preds = %66, %49, %38
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %72
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(i32) #1

declare dso_local i32 @cpu_to_le32s(i32*) #1

declare dso_local i32 @wilc_sdio_cmd52(%struct.wilc*, %struct.sdio_cmd52*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @wilc_sdio_set_func0_csa_address(%struct.wilc*, i32) #1

declare dso_local i32 @wilc_sdio_cmd53(%struct.wilc*, %struct.sdio_cmd53*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
