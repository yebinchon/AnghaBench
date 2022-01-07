; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_mx51_ecspi_prepare_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_mx51_ecspi_prepare_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i32, i32, i32, i64, i64, i64 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }

@MX51_ECSPI_CTRL = common dso_local global i64 0, align 8
@MX51_ECSPI_CTRL_BL_MASK = common dso_local global i32 0, align 4
@MX51_ECSPI_CTRL_BL_OFFSET = common dso_local global i32 0, align 4
@MX51_ECSPI_CTRL_POSTDIV_OFFSET = common dso_local global i32 0, align 4
@MX51_ECSPI_CTRL_PREDIV_OFFSET = common dso_local global i32 0, align 4
@MX51_ECSPI_CTRL_SMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_imx_data*, %struct.spi_device*, %struct.spi_transfer*)* @mx51_ecspi_prepare_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx51_ecspi_prepare_transfer(%struct.spi_imx_data* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_imx_data*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_imx_data* %0, %struct.spi_imx_data** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %10 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %11 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MX51_ECSPI_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @MX51_ECSPI_CTRL_BL_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %24 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %3
  %28 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %29 = call i64 @is_imx53_ecspi(%struct.spi_imx_data* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %33 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 8
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @MX51_ECSPI_CTRL_BL_OFFSET, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %50

41:                                               ; preds = %27, %3
  %42 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %43 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* @MX51_ECSPI_CTRL_BL_OFFSET, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %41, %31
  %51 = load i32, i32* @MX51_ECSPI_CTRL_POSTDIV_OFFSET, align 4
  %52 = shl i32 15, %51
  %53 = load i32, i32* @MX51_ECSPI_CTRL_PREDIV_OFFSET, align 4
  %54 = shl i32 15, %53
  %55 = or i32 %52, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %60 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %61 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mx51_ecspi_clkdiv(%struct.spi_imx_data* %59, i32 %62, i32* %8)
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %68 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %70 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %50
  %74 = load i32, i32* @MX51_ECSPI_CTRL_SMC, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %50
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %80 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MX51_ECSPI_CTRL, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load i32, i32* %8, align 4
  %86 = sdiv i32 2000000, %85
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 10
  %89 = zext i1 %88 to i32
  %90 = call i64 @likely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %77
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @udelay(i32 %93)
  br label %100

95:                                               ; preds = %77
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 10
  %99 = call i32 @usleep_range(i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %95, %92
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @is_imx53_ecspi(%struct.spi_imx_data*) #1

declare dso_local i32 @mx51_ecspi_clkdiv(%struct.spi_imx_data*, i32, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
