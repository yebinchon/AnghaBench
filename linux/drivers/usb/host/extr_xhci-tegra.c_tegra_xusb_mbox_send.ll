; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_mbox_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_mbox_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb = type { i32 }
%struct.tegra_xusb_mbox_msg = type { i64 }

@MBOX_CMD_ACK = common dso_local global i64 0, align 8
@MBOX_CMD_NAK = common dso_local global i64 0, align 8
@XUSB_CFG_ARU_MBOX_OWNER = common dso_local global i32 0, align 4
@MBOX_OWNER_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mailbox is busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MBOX_OWNER_SW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to acquire mailbox\0A\00", align 1
@XUSB_CFG_ARU_MBOX_DATA_IN = common dso_local global i32 0, align 4
@XUSB_CFG_ARU_MBOX_CMD = common dso_local global i32 0, align 4
@MBOX_INT_EN = common dso_local global i32 0, align 4
@MBOX_DEST_FALC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb*, %struct.tegra_xusb_mbox_msg*)* @tegra_xusb_mbox_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_mbox_send(%struct.tegra_xusb* %0, %struct.tegra_xusb_mbox_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_xusb*, align 8
  %5 = alloca %struct.tegra_xusb_mbox_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.tegra_xusb* %0, %struct.tegra_xusb** %4, align 8
  store %struct.tegra_xusb_mbox_msg* %1, %struct.tegra_xusb_mbox_msg** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.tegra_xusb_mbox_msg*, %struct.tegra_xusb_mbox_msg** %5, align 8
  %10 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, %struct.tegra_xusb_mbox_msg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MBOX_CMD_ACK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %53, label %14

14:                                               ; preds = %2
  %15 = load %struct.tegra_xusb_mbox_msg*, %struct.tegra_xusb_mbox_msg** %5, align 8
  %16 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, %struct.tegra_xusb_mbox_msg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MBOX_CMD_NAK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %53, label %20

20:                                               ; preds = %14
  %21 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %22 = load i32, i32* @XUSB_CFG_ARU_MBOX_OWNER, align 4
  %23 = call i32 @fpci_readl(%struct.tegra_xusb* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MBOX_OWNER_NONE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %111

34:                                               ; preds = %20
  %35 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %36 = load i32, i32* @MBOX_OWNER_SW, align 4
  %37 = load i32, i32* @XUSB_CFG_ARU_MBOX_OWNER, align 4
  %38 = call i32 @fpci_writel(%struct.tegra_xusb* %35, i32 %36, i32 %37)
  %39 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %40 = load i32, i32* @XUSB_CFG_ARU_MBOX_OWNER, align 4
  %41 = call i32 @fpci_readl(%struct.tegra_xusb* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MBOX_OWNER_SW, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %47 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %111

52:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %14, %2
  %54 = load %struct.tegra_xusb_mbox_msg*, %struct.tegra_xusb_mbox_msg** %5, align 8
  %55 = call i32 @tegra_xusb_mbox_pack(%struct.tegra_xusb_mbox_msg* %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @XUSB_CFG_ARU_MBOX_DATA_IN, align 4
  %59 = call i32 @fpci_writel(%struct.tegra_xusb* %56, i32 %57, i32 %58)
  %60 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %61 = load i32, i32* @XUSB_CFG_ARU_MBOX_CMD, align 4
  %62 = call i32 @fpci_readl(%struct.tegra_xusb* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @MBOX_INT_EN, align 4
  %64 = load i32, i32* @MBOX_DEST_FALC, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @XUSB_CFG_ARU_MBOX_CMD, align 4
  %71 = call i32 @fpci_writel(%struct.tegra_xusb* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %110

74:                                               ; preds = %53
  %75 = load i64, i64* @jiffies, align 8
  %76 = call i64 @msecs_to_jiffies(i32 250)
  %77 = add i64 %75, %76
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %91, %74
  %79 = load i64, i64* @jiffies, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i64 @time_before(i64 %79, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %85 = load i32, i32* @XUSB_CFG_ARU_MBOX_OWNER, align 4
  %86 = call i32 @fpci_readl(%struct.tegra_xusb* %84, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @MBOX_OWNER_NONE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %93

91:                                               ; preds = %83
  %92 = call i32 @usleep_range(i32 10, i32 20)
  br label %78

93:                                               ; preds = %90, %78
  %94 = load i64, i64* @jiffies, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @time_after(i64 %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %100 = load i32, i32* @XUSB_CFG_ARU_MBOX_OWNER, align 4
  %101 = call i32 @fpci_readl(%struct.tegra_xusb* %99, i32 %100)
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @MBOX_OWNER_NONE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* @ETIMEDOUT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %111

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %53
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %106, %45, %27
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @fpci_readl(%struct.tegra_xusb*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @fpci_writel(%struct.tegra_xusb*, i32, i32) #1

declare dso_local i32 @tegra_xusb_mbox_pack(%struct.tegra_xusb_mbox_msg*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
