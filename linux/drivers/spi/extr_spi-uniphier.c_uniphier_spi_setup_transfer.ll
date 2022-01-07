; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32 }
%struct.spi_transfer = type { i64, i64, i32, i32, i32 }
%struct.uniphier_spi_priv = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i64 }

@SSI_FC_TXFFL = common dso_local global i32 0, align 4
@SSI_FC_RXFFL = common dso_local global i32 0, align 4
@SSI_FC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.spi_transfer*)* @uniphier_spi_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_spi_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.uniphier_spi_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.uniphier_spi_priv* @spi_master_get_devdata(i32 %9)
  store %struct.uniphier_spi_priv* %10, %struct.uniphier_spi_priv** %5, align 8
  %11 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %12 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %11, i32 0, i32 9
  store i64 0, i64* %12, align 8
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %17 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 4
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %22 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %27 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %29 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %28, i32 0, i32 6
  store i32 %25, i32* %29, align 4
  %30 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %31 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %36 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %34, %2
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = call i32 @uniphier_spi_set_mode(%struct.spi_device* %43)
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %49 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %51 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %42, %34
  %53 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %54 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %59 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %62 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %57, %52
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %68 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @uniphier_spi_set_transfer_size(%struct.spi_device* %66, i64 %69)
  %71 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %72 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %75 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %65, %57
  %77 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %78 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %83 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %86 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %81, %76
  %90 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %91 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %92 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @uniphier_spi_set_baudrate(%struct.spi_device* %90, i64 %93)
  %95 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %96 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %99 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %89, %81
  %101 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %102 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load i32, i32* @SSI_FC_TXFFL, align 4
  %104 = load i32, i32* @SSI_FC_RXFFL, align 4
  %105 = or i32 %103, %104
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %108 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SSI_FC, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 %106, i64 %111)
  ret void
}

declare dso_local %struct.uniphier_spi_priv* @spi_master_get_devdata(i32) #1

declare dso_local i32 @uniphier_spi_set_mode(%struct.spi_device*) #1

declare dso_local i32 @uniphier_spi_set_transfer_size(%struct.spi_device*, i64) #1

declare dso_local i32 @uniphier_spi_set_baudrate(%struct.spi_device*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
