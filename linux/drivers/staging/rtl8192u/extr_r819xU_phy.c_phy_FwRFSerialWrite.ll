; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_phy_FwRFSerialWrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_phy_FwRFSerialWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@QPNR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @phy_FwRFSerialWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_FwRFSerialWrite(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 255
  %13 = shl i32 %12, 12
  %14 = load i32, i32* %8, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 3
  %18 = shl i32 %17, 20
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, 4194304
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, -2147483648
  store i32 %24, i32* %8, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load i32, i32* @QPNR, align 4
  %27 = call i32 @read_nic_dword(%struct.net_device* %25, i32 %26, i32* %10)
  br label %28

28:                                               ; preds = %42, %4
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, -2147483648
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %9, align 8
  %35 = icmp slt i64 %33, 100
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = call i32 @udelay(i32 10)
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = load i32, i32* @QPNR, align 4
  %40 = call i32 @read_nic_dword(%struct.net_device* %38, i32 %39, i32* %10)
  br label %42

41:                                               ; preds = %32
  br label %43

42:                                               ; preds = %36
  br label %28

43:                                               ; preds = %41, %28
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = load i32, i32* @QPNR, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @write_nic_dword(%struct.net_device* %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
