; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_rfcsr_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_rfcsr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RF_CSR_CFG_REGNUM_MT7620 = common dso_local global i32 0, align 4
@RF_CSR_CFG_WRITE_MT7620 = common dso_local global i32 0, align 4
@RF_CSR_CFG_BUSY_MT7620 = common dso_local global i32 0, align 4
@RF_CSR_CFG = common dso_local global i32 0, align 4
@RF_CSR_CFG_DATA_MT7620 = common dso_local global i32 0, align 4
@RF_CSR_CFG_REGNUM = common dso_local global i32 0, align 4
@RF_CSR_CFG_WRITE = common dso_local global i32 0, align 4
@RF_CSR_CFG_BUSY = common dso_local global i32 0, align 4
@RF_CSR_CFG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32)* @rt2800_rfcsr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %36 [
    i32 128, label %14
  ]

14:                                               ; preds = %2
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = call i32 @WAIT_FOR_RFCSR_MT7620(%struct.rt2x00_dev* %15, i32* %5)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  %19 = load i32, i32* @RF_CSR_CFG_REGNUM_MT7620, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @rt2x00_set_field32(i32* %5, i32 %19, i32 %20)
  %22 = load i32, i32* @RF_CSR_CFG_WRITE_MT7620, align 4
  %23 = call i32 @rt2x00_set_field32(i32* %5, i32 %22, i32 0)
  %24 = load i32, i32* @RF_CSR_CFG_BUSY_MT7620, align 4
  %25 = call i32 @rt2x00_set_field32(i32* %5, i32 %24, i32 1)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = load i32, i32* @RF_CSR_CFG, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @rt2800_register_write_lock(%struct.rt2x00_dev* %26, i32 %27, i32 %28)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = call i32 @WAIT_FOR_RFCSR_MT7620(%struct.rt2x00_dev* %30, i32* %5)
  br label %32

32:                                               ; preds = %18, %14
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @RF_CSR_CFG_DATA_MT7620, align 4
  %35 = call i32 @rt2x00_get_field32(i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %58

36:                                               ; preds = %2
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %38 = call i32 @WAIT_FOR_RFCSR(%struct.rt2x00_dev* %37, i32* %5)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  %41 = load i32, i32* @RF_CSR_CFG_REGNUM, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @rt2x00_set_field32(i32* %5, i32 %41, i32 %42)
  %44 = load i32, i32* @RF_CSR_CFG_WRITE, align 4
  %45 = call i32 @rt2x00_set_field32(i32* %5, i32 %44, i32 0)
  %46 = load i32, i32* @RF_CSR_CFG_BUSY, align 4
  %47 = call i32 @rt2x00_set_field32(i32* %5, i32 %46, i32 1)
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %49 = load i32, i32* @RF_CSR_CFG, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @rt2800_register_write_lock(%struct.rt2x00_dev* %48, i32 %49, i32 %50)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %53 = call i32 @WAIT_FOR_RFCSR(%struct.rt2x00_dev* %52, i32* %5)
  br label %54

54:                                               ; preds = %40, %36
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @RF_CSR_CFG_DATA, align 4
  %57 = call i32 @rt2x00_get_field32(i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %32
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %60 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WAIT_FOR_RFCSR_MT7620(%struct.rt2x00_dev*, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write_lock(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @WAIT_FOR_RFCSR(%struct.rt2x00_dev*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
