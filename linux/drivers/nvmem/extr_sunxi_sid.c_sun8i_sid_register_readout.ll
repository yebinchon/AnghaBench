; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_sunxi_sid.c_sun8i_sid_register_readout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_sunxi_sid.c_sun8i_sid_register_readout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_sid = type { i64 }

@SUN8I_SID_OFFSET_MASK = common dso_local global i32 0, align 4
@SUN8I_SID_OFFSET_SHIFT = common dso_local global i32 0, align 4
@SUN8I_SID_OP_LOCK = common dso_local global i32 0, align 4
@SUN8I_SID_READ = common dso_local global i32 0, align 4
@SUN8I_SID_PRCTL = common dso_local global i64 0, align 8
@SUN8I_SID_RDKEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_sid*, i32, i32*)* @sun8i_sid_register_readout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_sid_register_readout(%struct.sunxi_sid* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sunxi_sid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sunxi_sid* %0, %struct.sunxi_sid** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @SUN8I_SID_OFFSET_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @SUN8I_SID_OFFSET_SHIFT, align 4
  %14 = shl i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @SUN8I_SID_OP_LOCK, align 4
  %16 = load i32, i32* @SUN8I_SID_READ, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.sunxi_sid*, %struct.sunxi_sid** %5, align 8
  %22 = getelementptr inbounds %struct.sunxi_sid, %struct.sunxi_sid* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SUN8I_SID_PRCTL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.sunxi_sid*, %struct.sunxi_sid** %5, align 8
  %28 = getelementptr inbounds %struct.sunxi_sid, %struct.sunxi_sid* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SUN8I_SID_PRCTL, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SUN8I_SID_READ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @readl_poll_timeout(i64 %31, i32 %32, i32 %38, i32 100, i32 250000)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %62

44:                                               ; preds = %3
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.sunxi_sid*, %struct.sunxi_sid** %5, align 8
  %49 = getelementptr inbounds %struct.sunxi_sid, %struct.sunxi_sid* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SUN8I_SID_RDKEY, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl(i64 %52)
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %44
  %56 = load %struct.sunxi_sid*, %struct.sunxi_sid** %5, align 8
  %57 = getelementptr inbounds %struct.sunxi_sid, %struct.sunxi_sid* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SUN8I_SID_PRCTL, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 0, i64 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %55, %42
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
