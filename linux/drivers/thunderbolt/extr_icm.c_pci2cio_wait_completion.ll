; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_pci2cio_wait_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_pci2cio_wait_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icm = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@PCIE2CIO_CMD = common dso_local global i64 0, align 8
@PCIE2CIO_CMD_START = common dso_local global i32 0, align 4
@PCIE2CIO_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icm*, i64)* @pci2cio_wait_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci2cio_wait_completion(%struct.icm* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.icm* %0, %struct.icm** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @msecs_to_jiffies(i64 %9)
  %11 = add i64 %8, %10
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %35, %2
  %13 = load %struct.icm*, %struct.icm** %4, align 8
  %14 = getelementptr inbounds %struct.icm, %struct.icm* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.icm*, %struct.icm** %4, align 8
  %17 = getelementptr inbounds %struct.icm, %struct.icm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCIE2CIO_CMD, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @pci_read_config_dword(i32 %15, i64 %20, i32* %7)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PCIE2CIO_CMD_START, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PCIE2CIO_CMD_TIMEOUT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %40

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %43

33:                                               ; preds = %12
  %34 = call i32 @msleep(i32 50)
  br label %35

35:                                               ; preds = %33
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @time_before(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %12, label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %32
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
