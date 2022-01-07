; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_reset_fifos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_reset_fifos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_spi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PSC_SPIPCR_RC = common dso_local global i32 0, align 4
@PSC_SPIPCR_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1550_spi*)* @au1550_spi_reset_fifos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1550_spi_reset_fifos(%struct.au1550_spi* %0) #0 {
  %2 = alloca %struct.au1550_spi*, align 8
  %3 = alloca i32, align 4
  store %struct.au1550_spi* %0, %struct.au1550_spi** %2, align 8
  %4 = load i32, i32* @PSC_SPIPCR_RC, align 4
  %5 = load i32, i32* @PSC_SPIPCR_TC, align 4
  %6 = or i32 %4, %5
  %7 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %8 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %6, i32* %10, align 4
  %11 = call i32 (...) @wmb()
  br label %12

12:                                               ; preds = %19, %1
  %13 = load %struct.au1550_spi*, %struct.au1550_spi** %2, align 8
  %14 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = call i32 (...) @wmb()
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %12, label %22

22:                                               ; preds = %19
  ret void
}

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
