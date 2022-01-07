; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_cmd.c_query_fw_rx_phy_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_cmd.c_query_fw_rx_phy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@_FW_LINKED = common dso_local global i32 0, align 4
@IOCMD_CTRL_REG = common dso_local global i32 0, align 4
@IOCMD_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*)* @query_fw_rx_phy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_fw_rx_phy_status(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 50, i32* %4, align 4
  %5 = load %struct._adapter*, %struct._adapter** %2, align 8
  %6 = getelementptr inbounds %struct._adapter, %struct._adapter* %5, i32 0, i32 1
  %7 = load i32, i32* @_FW_LINKED, align 4
  %8 = call i64 @check_fwstate(i32* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %1
  %11 = load %struct._adapter*, %struct._adapter** %2, align 8
  %12 = load i32, i32* @IOCMD_CTRL_REG, align 4
  %13 = call i32 @r8712_write32(%struct._adapter* %11, i32 %12, i32 -201326591)
  %14 = call i32 @msleep(i32 100)
  br label %15

15:                                               ; preds = %25, %10
  %16 = load %struct._adapter*, %struct._adapter** %2, align 8
  %17 = load i32, i32* @IOCMD_CTRL_REG, align 4
  %18 = call i32 @r8712_read32(%struct._adapter* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 0
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i1 [ false, %15 ], [ %22, %20 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  %28 = call i32 @msleep(i32 20)
  br label %15

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct._adapter*, %struct._adapter** %2, align 8
  %34 = load i32, i32* @IOCMD_DATA_REG, align 4
  %35 = call i32 @r8712_read32(%struct._adapter* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32, i32* %3, align 4
  %39 = ashr i32 %38, 4
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @r8712_signal_scale_mapping(i32 %40)
  %42 = load %struct._adapter*, %struct._adapter** %2, align 8
  %43 = getelementptr inbounds %struct._adapter, %struct._adapter* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  br label %45

45:                                               ; preds = %37, %1
  ret void
}

declare dso_local i64 @check_fwstate(i32*, i32) #1

declare dso_local i32 @r8712_write32(%struct._adapter*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @r8712_read32(%struct._adapter*, i32) #1

declare dso_local i64 @r8712_signal_scale_mapping(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
