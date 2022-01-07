; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_rockchip-efuse.c_rockchip_rk3288_efuse_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_rockchip-efuse.c_rockchip_rk3288_efuse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_efuse_chip = type { i32, i64, i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to prepare/enable efuse clk\0A\00", align 1
@RK3288_LOAD = common dso_local global i32 0, align 4
@RK3288_PGENB = common dso_local global i32 0, align 4
@REG_EFUSE_CTRL = common dso_local global i64 0, align 8
@RK3288_A_MASK = common dso_local global i32 0, align 4
@RK3288_A_SHIFT = common dso_local global i32 0, align 4
@RK3288_STROBE = common dso_local global i32 0, align 4
@REG_EFUSE_DOUT = common dso_local global i64 0, align 8
@RK3288_CSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @rockchip_rk3288_efuse_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_rk3288_efuse_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rockchip_efuse_chip*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.rockchip_efuse_chip*
  store %struct.rockchip_efuse_chip* %14, %struct.rockchip_efuse_chip** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %11, align 8
  %17 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %18 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clk_prepare_enable(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %25 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %135

29:                                               ; preds = %4
  %30 = load i32, i32* @RK3288_LOAD, align 4
  %31 = load i32, i32* @RK3288_PGENB, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %34 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = call i32 @udelay(i32 1)
  br label %40

40:                                               ; preds = %44, %29
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %9, align 8
  %43 = icmp ne i64 %41, 0
  br i1 %43, label %44, label %121

44:                                               ; preds = %40
  %45 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %46 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  %51 = load i32, i32* @RK3288_A_MASK, align 4
  %52 = load i32, i32* @RK3288_A_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %50, %54
  %56 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %57 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %63 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readl(i64 %66)
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @RK3288_A_MASK, align 4
  %71 = and i32 %68, %70
  %72 = load i32, i32* @RK3288_A_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %67, %73
  %75 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %76 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  %81 = call i32 @udelay(i32 1)
  %82 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %83 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl(i64 %86)
  %88 = load i32, i32* @RK3288_STROBE, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %91 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  %96 = call i32 @udelay(i32 1)
  %97 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %98 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @REG_EFUSE_DOUT, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @readb(i64 %101)
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %11, align 8
  store i32 %102, i32* %103, align 4
  %105 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %106 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @readl(i64 %109)
  %111 = load i32, i32* @RK3288_STROBE, align 4
  %112 = xor i32 %111, -1
  %113 = and i32 %110, %112
  %114 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %115 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i32 %113, i64 %118)
  %120 = call i32 @udelay(i32 1)
  br label %40

121:                                              ; preds = %40
  %122 = load i32, i32* @RK3288_PGENB, align 4
  %123 = load i32, i32* @RK3288_CSB, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %126 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel(i32 %124, i64 %129)
  %131 = load %struct.rockchip_efuse_chip*, %struct.rockchip_efuse_chip** %10, align 8
  %132 = getelementptr inbounds %struct.rockchip_efuse_chip, %struct.rockchip_efuse_chip* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @clk_disable_unprepare(i32 %133)
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %121, %23
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
