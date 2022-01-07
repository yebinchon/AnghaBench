; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800pci.c_rt2800pci_mcu_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800pci.c_rt2800pci_mcu_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@H2M_MAILBOX_CID = common dso_local global i32 0, align 4
@H2M_MAILBOX_CID_CMD0 = common dso_local global i32 0, align 4
@H2M_MAILBOX_CID_CMD1 = common dso_local global i32 0, align 4
@H2M_MAILBOX_CID_CMD2 = common dso_local global i32 0, align 4
@H2M_MAILBOX_CID_CMD3 = common dso_local global i32 0, align 4
@REGISTER_BUSY_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"MCU request failed, no response from hardware\0A\00", align 1
@H2M_MAILBOX_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i64)* @rt2800pci_mcu_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800pci_mcu_status(%struct.rt2x00_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = call i64 @rt2x00_is_soc(%struct.rt2x00_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %62

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %46, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp ult i32 %13, 200
  br i1 %14, label %15, label %49

15:                                               ; preds = %12
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = load i32, i32* @H2M_MAILBOX_CID, align 4
  %18 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @H2M_MAILBOX_CID_CMD0, align 4
  %21 = call i64 @rt2x00_get_field32(i32 %19, i32 %20)
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @H2M_MAILBOX_CID_CMD1, align 4
  %27 = call i64 @rt2x00_get_field32(i32 %25, i32 %26)
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @H2M_MAILBOX_CID_CMD2, align 4
  %33 = call i64 @rt2x00_get_field32(i32 %31, i32 %32)
  %34 = load i64, i64* %4, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @H2M_MAILBOX_CID_CMD3, align 4
  %39 = call i64 @rt2x00_get_field32(i32 %37, i32 %38)
  %40 = load i64, i64* %4, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %30, %24, %15
  br label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @REGISTER_BUSY_DELAY, align 4
  %45 = call i32 @udelay(i32 %44)
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %12

49:                                               ; preds = %42, %12
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 200
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %54 = call i32 @rt2x00_err(%struct.rt2x00_dev* %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %57 = load i32, i32* @H2M_MAILBOX_STATUS, align 4
  %58 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %56, i32 %57, i32 -1)
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %60 = load i32, i32* @H2M_MAILBOX_CID, align 4
  %61 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %59, i32 %60, i32 -1)
  br label %62

62:                                               ; preds = %55, %10
  ret void
}

declare dso_local i64 @rt2x00_is_soc(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
