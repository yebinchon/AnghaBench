; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_interrupt_handler_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_interrupt_handler_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pm8001_hba_info*, i64)*, i32 (%struct.pm8001_hba_info*)* }
%struct.pm8001_hba_info = type { i32* }
%struct.isr_param = type { i64, %struct.pm8001_hba_info* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pm8001_interrupt_handler_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_interrupt_handler_msix(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.isr_param*, align 8
  %7 = alloca %struct.pm8001_hba_info*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.isr_param*
  store %struct.isr_param* %11, %struct.isr_param** %6, align 8
  %12 = load %struct.isr_param*, %struct.isr_param** %6, align 8
  %13 = getelementptr inbounds %struct.isr_param, %struct.isr_param* %12, i32 0, i32 1
  %14 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %13, align 8
  store %struct.pm8001_hba_info* %14, %struct.pm8001_hba_info** %7, align 8
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %16 = icmp ne %struct.pm8001_hba_info* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (%struct.pm8001_hba_info*)*, i32 (%struct.pm8001_hba_info*)** %25, align 8
  %27 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %28 = call i32 %26(%struct.pm8001_hba_info* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %23
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.pm8001_hba_info*, i64)*, i32 (%struct.pm8001_hba_info*, i64)** %34, align 8
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %37 = load %struct.isr_param*, %struct.isr_param** %6, align 8
  %38 = getelementptr inbounds %struct.isr_param, %struct.isr_param* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 %35(%struct.pm8001_hba_info* %36, i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %32, %30, %21
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
