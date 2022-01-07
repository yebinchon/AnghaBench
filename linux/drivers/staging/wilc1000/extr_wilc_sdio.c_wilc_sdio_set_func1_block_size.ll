; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_set_func1_block_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_set_func1_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32 }
%struct.sdio_func = type { i32 }
%struct.sdio_cmd52 = type { i32, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"Failed cmd52, set 0x110 data...\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed cmd52, set 0x111 data...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32)* @wilc_sdio_set_func1_block_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_sdio_set_func1_block_size(%struct.wilc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdio_func*, align 8
  %7 = alloca %struct.sdio_cmd52, align 8
  %8 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.wilc*, %struct.wilc** %4, align 8
  %10 = getelementptr inbounds %struct.wilc, %struct.wilc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sdio_func* @dev_to_sdio_func(i32 %11)
  store %struct.sdio_func* %12, %struct.sdio_func** %6, align 8
  %13 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %7, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %7, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %7, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %7, i32 0, i32 1
  store i32 272, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %7, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load %struct.wilc*, %struct.wilc** %4, align 8
  %22 = call i32 @wilc_sdio_cmd52(%struct.wilc* %21, %struct.sdio_cmd52* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %27 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %45

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %7, i32 0, i32 1
  store i32 273, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %7, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = load %struct.wilc*, %struct.wilc** %4, align 8
  %37 = call i32 @wilc_sdio_cmd52(%struct.wilc* %36, %struct.sdio_cmd52* %7)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %42 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %45

44:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %46

45:                                               ; preds = %40, %25
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(i32) #1

declare dso_local i32 @wilc_sdio_cmd52(%struct.wilc*, %struct.sdio_cmd52*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
