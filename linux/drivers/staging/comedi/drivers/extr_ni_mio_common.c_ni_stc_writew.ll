; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_stc_writew.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_stc_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, i32, i64 }

@NI_E_STC_WINDOW_ADDR_REG = common dso_local global i32 0, align 4
@NI_E_STC_WINDOW_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @ni_stc_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_stc_writew(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ni_private*, align 8
  %8 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  store %struct.ni_private* %11, %struct.ni_private** %7, align 8
  %12 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %13 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @m_series_stc_write(%struct.comedi_device* %17, i32 %18, i32 %19)
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %23 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %22, i32 0, i32 0
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %27 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 2
  %38 = call i32 @ni_writew(%struct.comedi_device* %34, i32 %35, i32 %37)
  br label %48

39:                                               ; preds = %30, %21
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @NI_E_STC_WINDOW_ADDR_REG, align 4
  %43 = call i32 @ni_writew(%struct.comedi_device* %40, i32 %41, i32 %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @NI_E_STC_WINDOW_DATA_REG, align 4
  %47 = call i32 @ni_writew(%struct.comedi_device* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %33
  %49 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %50 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %49, i32 0, i32 0
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %48, %16
  ret void
}

declare dso_local i32 @m_series_stc_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ni_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
