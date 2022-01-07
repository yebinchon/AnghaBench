; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_dio_set_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_dio_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@S626_LP_MISC1 = common dso_local global i32 0, align 4
@S626_MISC1_EDCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @s626_dio_set_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_dio_set_irq(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = udiv i32 %8, 16
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = mul i32 16, %11
  %13 = sub i32 %10, %12
  %14 = shl i32 1, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @S626_LP_RDEDGSEL(i32 %16)
  %18 = call i32 @s626_debi_read(%struct.comedi_device* %15, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @S626_LP_WREDGSEL(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @s626_debi_write(%struct.comedi_device* %19, i32 %21, i32 %24)
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @S626_LP_RDINTSEL(i32 %27)
  %29 = call i32 @s626_debi_read(%struct.comedi_device* %26, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @S626_LP_WRINTSEL(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @s626_debi_write(%struct.comedi_device* %30, i32 %32, i32 %35)
  %37 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %38 = load i32, i32* @S626_LP_MISC1, align 4
  %39 = load i32, i32* @S626_MISC1_EDCAP, align 4
  %40 = call i32 @s626_debi_write(%struct.comedi_device* %37, i32 %38, i32 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @S626_LP_RDCAPSEL(i32 %42)
  %44 = call i32 @s626_debi_read(%struct.comedi_device* %41, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @S626_LP_WRCAPSEL(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @s626_debi_write(%struct.comedi_device* %45, i32 %47, i32 %50)
  ret i32 0
}

declare dso_local i32 @s626_debi_read(%struct.comedi_device*, i32) #1

declare dso_local i32 @S626_LP_RDEDGSEL(i32) #1

declare dso_local i32 @s626_debi_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @S626_LP_WREDGSEL(i32) #1

declare dso_local i32 @S626_LP_RDINTSEL(i32) #1

declare dso_local i32 @S626_LP_WRINTSEL(i32) #1

declare dso_local i32 @S626_LP_RDCAPSEL(i32) #1

declare dso_local i32 @S626_LP_WRCAPSEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
