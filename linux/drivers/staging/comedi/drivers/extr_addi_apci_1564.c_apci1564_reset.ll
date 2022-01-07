; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1564.c_apci1564_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1564.c_apci1564_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.apci1564_private* }
%struct.apci1564_private = type { i64, i64 }

@APCI1564_DI_IRQ_REG = common dso_local global i64 0, align 8
@APCI1564_DI_INT_STATUS_REG = common dso_local global i64 0, align 8
@APCI1564_DI_INT_MODE1_REG = common dso_local global i64 0, align 8
@APCI1564_DI_INT_MODE2_REG = common dso_local global i64 0, align 8
@APCI1564_DO_REG = common dso_local global i64 0, align 8
@APCI1564_DO_INT_CTRL_REG = common dso_local global i64 0, align 8
@APCI1564_WDOG_IOBASE = common dso_local global i64 0, align 8
@ADDI_TCW_CTRL_REG = common dso_local global i64 0, align 8
@ADDI_TCW_RELOAD_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @apci1564_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci1564_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.apci1564_private*, align 8
  %4 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 1
  %7 = load %struct.apci1564_private*, %struct.apci1564_private** %6, align 8
  store %struct.apci1564_private* %7, %struct.apci1564_private** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @APCI1564_DI_IRQ_REG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outl(i32 0, i64 %12)
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @APCI1564_DI_INT_STATUS_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @inl(i64 %18)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @APCI1564_DI_INT_MODE1_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outl(i32 0, i64 %24)
  %26 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @APCI1564_DI_INT_MODE2_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outl(i32 0, i64 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @APCI1564_DO_REG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outl(i32 0, i64 %36)
  %38 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @APCI1564_DO_INT_CTRL_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outl(i32 0, i64 %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @APCI1564_WDOG_IOBASE, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @addi_watchdog_reset(i64 %48)
  %50 = load %struct.apci1564_private*, %struct.apci1564_private** %3, align 8
  %51 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ADDI_TCW_CTRL_REG, align 8
  %54 = add i64 %52, %53
  %55 = call i32 @outl(i32 0, i64 %54)
  %56 = load %struct.apci1564_private*, %struct.apci1564_private** %3, align 8
  %57 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ADDI_TCW_RELOAD_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outl(i32 0, i64 %60)
  %62 = load %struct.apci1564_private*, %struct.apci1564_private** %3, align 8
  %63 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %1
  %67 = load %struct.apci1564_private*, %struct.apci1564_private** %3, align 8
  %68 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ADDI_TCW_CTRL_REG, align 8
  %71 = add i64 %69, %70
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @APCI1564_COUNTER(i32 0)
  %74 = add i64 %72, %73
  %75 = call i32 @outl(i32 0, i64 %74)
  %76 = load i64, i64* %4, align 8
  %77 = call i64 @APCI1564_COUNTER(i32 1)
  %78 = add i64 %76, %77
  %79 = call i32 @outl(i32 0, i64 %78)
  %80 = load i64, i64* %4, align 8
  %81 = call i64 @APCI1564_COUNTER(i32 2)
  %82 = add i64 %80, %81
  %83 = call i32 @outl(i32 0, i64 %82)
  br label %84

84:                                               ; preds = %66, %1
  ret i32 0
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @addi_watchdog_reset(i64) #1

declare dso_local i64 @APCI1564_COUNTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
