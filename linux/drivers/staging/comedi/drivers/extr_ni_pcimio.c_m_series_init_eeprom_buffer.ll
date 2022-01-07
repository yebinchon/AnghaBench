; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcimio.c_m_series_init_eeprom_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcimio.c_m_series_init_eeprom_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32*, %struct.mite* }
%struct.mite = type { i64, i32 }

@m_series_init_eeprom_buffer.Start_Cal_EEPROM = internal constant i32 1024, align 4
@m_series_init_eeprom_buffer.window_size = internal constant i32 10, align 4
@MITE_IODWBSR = common dso_local global i64 0, align 8
@MITE_IODWBSR_1 = common dso_local global i64 0, align 8
@MITE_IODWCR_1 = common dso_local global i64 0, align 8
@M_SERIES_EEPROM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @m_series_init_eeprom_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m_series_init_eeprom_buffer(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.ni_private*, align 8
  %4 = alloca %struct.mite*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  store %struct.ni_private* %12, %struct.ni_private** %3, align 8
  %13 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %14 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %13, i32 0, i32 1
  %15 = load %struct.mite*, %struct.mite** %14, align 8
  store %struct.mite* %15, %struct.mite** %4, align 8
  %16 = load %struct.mite*, %struct.mite** %4, align 8
  %17 = getelementptr inbounds %struct.mite, %struct.mite* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pci_resource_start(i32 %18, i32 1)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mite*, %struct.mite** %4, align 8
  %21 = getelementptr inbounds %struct.mite, %struct.mite* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MITE_IODWBSR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.mite*, %struct.mite** %4, align 8
  %27 = getelementptr inbounds %struct.mite, %struct.mite* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MITE_IODWBSR_1, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.mite*, %struct.mite** %4, align 8
  %33 = getelementptr inbounds %struct.mite, %struct.mite* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MITE_IODWCR_1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.mite*, %struct.mite** %4, align 8
  %39 = getelementptr inbounds %struct.mite, %struct.mite* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MITE_IODWBSR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 0, i64 %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 138, %44
  %46 = load %struct.mite*, %struct.mite** %4, align 8
  %47 = getelementptr inbounds %struct.mite, %struct.mite* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MITE_IODWBSR_1, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load i32, i32* %8, align 4
  %53 = or i32 1, %52
  %54 = load %struct.mite*, %struct.mite** %4, align 8
  %55 = getelementptr inbounds %struct.mite, %struct.mite* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MITE_IODWCR_1, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.mite*, %struct.mite** %4, align 8
  %61 = getelementptr inbounds %struct.mite, %struct.mite* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 48
  %64 = call i32 @writel(i32 15, i64 %63)
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %80, %1
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @M_SERIES_EEPROM_SIZE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 1024, %71
  %73 = call i32 @ni_readb(%struct.comedi_device* %70, i32 %72)
  %74 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %75 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.mite*, %struct.mite** %4, align 8
  %86 = getelementptr inbounds %struct.mite, %struct.mite* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MITE_IODWBSR_1, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i32 %84, i64 %89)
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.mite*, %struct.mite** %4, align 8
  %93 = getelementptr inbounds %struct.mite, %struct.mite* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MITE_IODWBSR, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 %91, i64 %96)
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.mite*, %struct.mite** %4, align 8
  %100 = getelementptr inbounds %struct.mite, %struct.mite* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MITE_IODWCR_1, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  %105 = load %struct.mite*, %struct.mite** %4, align 8
  %106 = getelementptr inbounds %struct.mite, %struct.mite* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 48
  %109 = call i32 @writel(i32 0, i64 %108)
  ret void
}

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ni_readb(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
