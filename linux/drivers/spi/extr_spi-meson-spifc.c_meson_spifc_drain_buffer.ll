; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spifc.c_meson_spifc_drain_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spifc.c_meson_spifc_drain_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_spifc = type { i32 }

@REG_C0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_spifc*, i32*, i32)* @meson_spifc_drain_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_spifc_drain_buffer(%struct.meson_spifc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.meson_spifc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.meson_spifc* %0, %struct.meson_spifc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %37, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load %struct.meson_spifc*, %struct.meson_spifc** %4, align 8
  %15 = getelementptr inbounds %struct.meson_spifc, %struct.meson_spifc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @REG_C0, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i32 @regmap_read(i32 %16, i64 %20, i32* %7)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %22, %23
  %25 = icmp sge i32 %24, 4
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32* %30, i32** %5, align 8
  br label %37

31:                                               ; preds = %13
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @memcpy(i32* %32, i32* %7, i32 %35)
  br label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* %8, align 4
  br label %9

40:                                               ; preds = %31, %9
  ret void
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
