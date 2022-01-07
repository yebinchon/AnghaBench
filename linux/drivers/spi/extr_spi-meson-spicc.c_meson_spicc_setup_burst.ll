; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spicc.c_meson_spicc_setup_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spicc.c_meson_spicc_setup_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_spicc_device = type { i32, i32, i32, i32, i32, i64, i64 }

@SPICC_BURST_MAX = common dso_local global i32 0, align 4
@SPICC_BURSTLENGTH_MASK = common dso_local global i32 0, align 4
@SPICC_CONREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_spicc_device*, i32)* @meson_spicc_setup_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_spicc_setup_burst(%struct.meson_spicc_device* %0, i32 %1) #0 {
  %3 = alloca %struct.meson_spicc_device*, align 8
  %4 = alloca i32, align 4
  store %struct.meson_spicc_device* %0, %struct.meson_spicc_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %7 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %10 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %13 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = mul i32 %11, %14
  %16 = zext i32 %15 to i64
  %17 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %18 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, %16
  store i64 %20, i64* %18, align 8
  %21 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %22 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %21, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SPICC_BURST_MAX, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %28 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %33 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %32, i32 0, i32 4
  store i32 1, i32* %33, align 8
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %36 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %35, i32 0, i32 4
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @SPICC_BURSTLENGTH_MASK, align 4
  %39 = load i32, i32* @SPICC_BURSTLENGTH_MASK, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @FIELD_PREP(i32 %39, i32 %40)
  %42 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %43 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SPICC_CONREG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_bits_relaxed(i32 %38, i32 %41, i64 %46)
  %48 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %49 = call i32 @meson_spicc_tx(%struct.meson_spicc_device* %48)
  ret void
}

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @meson_spicc_tx(%struct.meson_spicc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
