; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_spi.c_st_nci_spi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_spi.c_st_nci_spi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_nci_spi_phy = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @st_nci_spi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_spi_enable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.st_nci_spi_phy*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.st_nci_spi_phy*
  store %struct.st_nci_spi_phy* %5, %struct.st_nci_spi_phy** %3, align 8
  %6 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %3, align 8
  %7 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @gpiod_set_value(i32 %8, i32 0)
  %10 = call i32 @usleep_range(i32 10000, i32 15000)
  %11 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %3, align 8
  %12 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @gpiod_set_value(i32 %13, i32 1)
  %15 = call i32 @usleep_range(i32 80000, i32 85000)
  %16 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %3, align 8
  %17 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %3, align 8
  %24 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %3, align 8
  %29 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @enable_irq(i32 %32)
  %34 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %3, align 8
  %35 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %27, %22, %1
  ret i32 0
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
