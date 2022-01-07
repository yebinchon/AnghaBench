; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_timer_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_timer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.apci3120_private* }
%struct.apci3120_private = type { i32 }

@APCI3120_CTR0_REG = common dso_local global i64 0, align 8
@APCI3120_TIMER_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @apci3120_timer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci3120_timer_read(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.apci3120_private*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.apci3120_private*, %struct.apci3120_private** %8, align 8
  store %struct.apci3120_private* %9, %struct.apci3120_private** %5, align 8
  %10 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %11 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @APCI3120_CTR0_DO_BITS(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @APCI3120_CTR0_TIMER_SEL(i32 %14)
  %16 = or i32 %13, %15
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @APCI3120_CTR0_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i32 %16, i64 %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @APCI3120_TIMER_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @inw(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %55

31:                                               ; preds = %2
  %32 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %33 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @APCI3120_CTR0_DO_BITS(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  %38 = call i32 @APCI3120_CTR0_TIMER_SEL(i32 %37)
  %39 = or i32 %35, %38
  %40 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @APCI3120_CTR0_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 %39, i64 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @APCI3120_TIMER_REG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @inw(i64 %50)
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %31, %2
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @APCI3120_CTR0_DO_BITS(i32) #1

declare dso_local i32 @APCI3120_CTR0_TIMER_SEL(i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
