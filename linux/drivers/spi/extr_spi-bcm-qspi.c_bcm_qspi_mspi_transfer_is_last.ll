; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_mspi_transfer_is_last.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_mspi_transfer_is_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { i32 }
%struct.qspi_trans = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_qspi*, %struct.qspi_trans*)* @bcm_qspi_mspi_transfer_is_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_qspi_mspi_transfer_is_last(%struct.bcm_qspi* %0, %struct.qspi_trans* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_qspi*, align 8
  %5 = alloca %struct.qspi_trans*, align 8
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %4, align 8
  store %struct.qspi_trans* %1, %struct.qspi_trans** %5, align 8
  %6 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %7 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %12 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %15 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @spi_transfer_is_last(i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %21

20:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @spi_transfer_is_last(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
