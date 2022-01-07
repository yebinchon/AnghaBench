; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_config_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad2s1210_state = type { i32*, i8*, i32 }
%struct.spi_transfer = type { i32, i32*, i8* }

@MOD_CONFIG = common dso_local global i32 0, align 4
@AD2S1210_MSB_IS_HIGH = common dso_local global i8 0, align 1
@AD2S1210_REG_FAULT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad2s1210_state*, i8)* @ad2s1210_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s1210_config_read(%struct.ad2s1210_state* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad2s1210_state*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.spi_transfer, align 8
  %7 = alloca i32, align 4
  store %struct.ad2s1210_state* %0, %struct.ad2s1210_state** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %6, i32 0, i32 0
  store i32 2, i32* %8, align 8
  %9 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %6, i32 0, i32 1
  %10 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %4, align 8
  %11 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %9, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %6, i32 0, i32 2
  %14 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %4, align 8
  %15 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %13, align 8
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* @MOD_CONFIG, align 4
  %18 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %4, align 8
  %19 = call i32 @ad2s1210_set_mode(i32 %17, %struct.ad2s1210_state* %18)
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @AD2S1210_MSB_IS_HIGH, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %21, %23
  %25 = trunc i32 %24 to i8
  %26 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %4, align 8
  %27 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 %25, i8* %29, align 1
  %30 = load i8, i8* @AD2S1210_REG_FAULT, align 1
  %31 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %4, align 8
  %32 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %30, i8* %34, align 1
  %35 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %4, align 8
  %36 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @spi_sync_transfer(i32 %37, %struct.spi_transfer* %6, i32 1)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %49

43:                                               ; preds = %2
  %44 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %4, align 8
  %45 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %41
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ad2s1210_set_mode(i32, %struct.ad2s1210_state*) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
