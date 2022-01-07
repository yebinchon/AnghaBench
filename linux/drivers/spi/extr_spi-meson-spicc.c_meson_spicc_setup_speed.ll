; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spicc.c_meson_spicc_setup_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spicc.c_meson_spicc_setup_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_spicc_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"unable to get close to speed %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"parent %lu, speed %u -> %lu (%u)\0A\00", align 1
@SPICC_DATARATE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.meson_spicc_device*, i64, i64)* @meson_spicc_setup_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @meson_spicc_setup_speed(%struct.meson_spicc_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.meson_spicc_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.meson_spicc_device* %0, %struct.meson_spicc_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %4, align 8
  %12 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @clk_get_rate(i32 %13)
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %29, %3
  %16 = load i32, i32* %9, align 4
  %17 = icmp ult i32 %16, 7
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = add i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = lshr i64 %19, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ule i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %9, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %15

32:                                               ; preds = %27, %15
  %33 = load i32, i32* %9, align 4
  %34 = icmp ugt i32 %33, 7
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  store i32 7, i32* %10, align 4
  %36 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %4, align 8
  %37 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @dev_warn_once(i32* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %35
  %45 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %4, align 8
  %46 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @dev_dbg(i32* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 %50, i64 %51, i32 %52)
  %54 = load i64, i64* @SPICC_DATARATE_MASK, align 8
  %55 = xor i64 %54, -1
  %56 = load i64, i64* %5, align 8
  %57 = and i64 %56, %55
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* @SPICC_DATARATE_MASK, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @FIELD_PREP(i64 %58, i32 %59)
  %61 = load i64, i64* %5, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_warn_once(i32*, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64, i64, i32) #1

declare dso_local i64 @FIELD_PREP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
