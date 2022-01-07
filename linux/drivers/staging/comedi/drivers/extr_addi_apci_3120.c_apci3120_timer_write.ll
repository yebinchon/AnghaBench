; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_timer_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_timer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.apci3120_private* }
%struct.apci3120_private = type { i32 }

@APCI3120_CTR0_REG = common dso_local global i64 0, align 8
@APCI3120_TIMER_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @apci3120_timer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apci3120_timer_write(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.apci3120_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.apci3120_private*, %struct.apci3120_private** %9, align 8
  store %struct.apci3120_private* %10, %struct.apci3120_private** %7, align 8
  %11 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  %12 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @APCI3120_CTR0_DO_BITS(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @APCI3120_CTR0_TIMER_SEL(i32 %15)
  %17 = or i32 %14, %16
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @APCI3120_CTR0_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb(i32 %17, i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 65535
  %26 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @APCI3120_TIMER_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outw(i32 %25, i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %58

34:                                               ; preds = %3
  %35 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  %36 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @APCI3120_CTR0_DO_BITS(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  %41 = call i32 @APCI3120_CTR0_TIMER_SEL(i32 %40)
  %42 = or i32 %38, %41
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @APCI3120_CTR0_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 %42, i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 65535
  %52 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @APCI3120_TIMER_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw(i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %34, %3
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @APCI3120_CTR0_DO_BITS(i32) #1

declare dso_local i32 @APCI3120_CTR0_TIMER_SEL(i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
