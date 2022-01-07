; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_mask_ack_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_mask_ack_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_spi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PSC_SPIMSK_MM = common dso_local global i32 0, align 4
@PSC_SPIMSK_RR = common dso_local global i32 0, align 4
@PSC_SPIMSK_RO = common dso_local global i32 0, align 4
@PSC_SPIMSK_RU = common dso_local global i32 0, align 4
@PSC_SPIMSK_TR = common dso_local global i32 0, align 4
@PSC_SPIMSK_TO = common dso_local global i32 0, align 4
@PSC_SPIMSK_TU = common dso_local global i32 0, align 4
@PSC_SPIMSK_SD = common dso_local global i32 0, align 4
@PSC_SPIMSK_MD = common dso_local global i32 0, align 4
@PSC_SPIEVNT_MM = common dso_local global i32 0, align 4
@PSC_SPIEVNT_RR = common dso_local global i32 0, align 4
@PSC_SPIEVNT_RO = common dso_local global i32 0, align 4
@PSC_SPIEVNT_RU = common dso_local global i32 0, align 4
@PSC_SPIEVNT_TR = common dso_local global i32 0, align 4
@PSC_SPIEVNT_TO = common dso_local global i32 0, align 4
@PSC_SPIEVNT_TU = common dso_local global i32 0, align 4
@PSC_SPIEVNT_SD = common dso_local global i32 0, align 4
@PSC_SPIEVNT_MD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1550_spi*)* @au1550_spi_mask_ack_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1550_spi_mask_ack_all(%struct.au1550_spi* %0) #0 {
  %2 = alloca %struct.au1550_spi*, align 8
  store %struct.au1550_spi* %0, %struct.au1550_spi** %2, align 8
  %3 = load i32, i32* @PSC_SPIMSK_MM, align 4
  %4 = load i32, i32* @PSC_SPIMSK_RR, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @PSC_SPIMSK_RO, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @PSC_SPIMSK_RU, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PSC_SPIMSK_TR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PSC_SPIMSK_TO, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @PSC_SPIMSK_TU, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PSC_SPIMSK_SD, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PSC_SPIMSK_MD, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %21 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = call i32 (...) @wmb()
  %25 = load i32, i32* @PSC_SPIEVNT_MM, align 4
  %26 = load i32, i32* @PSC_SPIEVNT_RR, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PSC_SPIEVNT_RO, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PSC_SPIEVNT_RU, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PSC_SPIEVNT_TR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PSC_SPIEVNT_TO, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PSC_SPIEVNT_TU, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PSC_SPIEVNT_SD, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PSC_SPIEVNT_MD, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %43 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
