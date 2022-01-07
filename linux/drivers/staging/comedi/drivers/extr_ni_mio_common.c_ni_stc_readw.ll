; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_stc_readw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_stc_readw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, i32, i64 }

@NI_E_STC_WINDOW_ADDR_REG = common dso_local global i32 0, align 4
@NI_E_STC_WINDOW_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @ni_stc_readw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_stc_readw(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  store %struct.ni_private* %10, %struct.ni_private** %5, align 8
  %11 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %12 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @m_series_stc_read(%struct.comedi_device* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %21 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %25 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 %33, 2
  %35 = call i32 @ni_readw(%struct.comedi_device* %32, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %44

36:                                               ; preds = %28, %19
  %37 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NI_E_STC_WINDOW_ADDR_REG, align 4
  %40 = call i32 @ni_writew(%struct.comedi_device* %37, i32 %38, i32 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %42 = load i32, i32* @NI_E_STC_WINDOW_DATA_REG, align 4
  %43 = call i32 @ni_readw(%struct.comedi_device* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %46 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %45, i32 0, i32 0
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %15
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @m_series_stc_read(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ni_readw(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
