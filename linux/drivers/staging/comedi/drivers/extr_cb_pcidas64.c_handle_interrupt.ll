; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcidas64_private* }
%struct.pcidas64_private = type { i64, i64 }

@PLX_REG_INTCSR = common dso_local global i64 0, align 8
@HW_STATUS_REG = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PLX_INTCSR_LDBIA = common dso_local global i32 0, align 4
@PLX_REG_L2PDBELL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @handle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.pcidas64_private*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.comedi_device*
  store %struct.comedi_device* %12, %struct.comedi_device** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.pcidas64_private*, %struct.pcidas64_private** %14, align 8
  store %struct.pcidas64_private* %15, %struct.pcidas64_private** %7, align 8
  %16 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %17 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PLX_REG_INTCSR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %23 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HW_STATUS_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call zeroext i16 @readw(i64 %26)
  store i16 %27, i16* %8, align 2
  %28 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %3, align 4
  br label %63

34:                                               ; preds = %2
  %35 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %36 = load i16, i16* %8, align 2
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @handle_ai_interrupt(%struct.comedi_device* %35, i16 zeroext %36, i32 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = load i16, i16* %8, align 2
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @handle_ao_interrupt(%struct.comedi_device* %39, i16 zeroext %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @PLX_INTCSR_LDBIA, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %34
  %48 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %49 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PLX_REG_L2PDBELL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl(i64 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %56 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PLX_REG_L2PDBELL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  br label %61

61:                                               ; preds = %47, %34
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %32
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @readl(i64) #1

declare dso_local zeroext i16 @readw(i64) #1

declare dso_local i32 @handle_ai_interrupt(%struct.comedi_device*, i16 zeroext, i32) #1

declare dso_local i32 @handle_ao_interrupt(%struct.comedi_device*, i16 zeroext, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
