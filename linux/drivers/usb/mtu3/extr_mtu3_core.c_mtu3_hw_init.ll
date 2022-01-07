; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_core.c_mtu3_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_core.c_mtu3_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3 = type { i64, i32, i32, i32, i32 }

@U3D_SSUSB_IP_TRUNK_VERS = common dso_local global i32 0, align 4
@MTU3_TRUNK_VERS_1003 = common dso_local global i64 0, align 8
@U3D_SSUSB_IP_DEV_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IP version 0x%x(%s IP)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"U3\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"U2\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"device enable failed %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtu3*)* @mtu3_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtu3_hw_init(%struct.mtu3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtu3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtu3* %0, %struct.mtu3** %3, align 8
  %6 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %7 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @U3D_SSUSB_IP_TRUNK_VERS, align 4
  %10 = call i32 @mtu3_readl(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @IP_TRUNK_VERS(i32 %11)
  %13 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %14 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %16 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MTU3_TRUNK_VERS_1003, align 8
  %19 = icmp sge i64 %17, %18
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %24 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %26 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @U3D_SSUSB_IP_DEV_CAP, align 4
  %29 = call i32 @mtu3_readl(i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @SSUSB_IP_DEV_U3_PORT_NUM(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %37 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %39 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %42 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %45 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %50 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %43, i8* %49)
  %51 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %52 = call i32 @mtu3_device_reset(%struct.mtu3* %51)
  %53 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %54 = call i32 @mtu3_device_enable(%struct.mtu3* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %1
  %58 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %59 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %75

64:                                               ; preds = %1
  %65 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %66 = call i32 @mtu3_mem_alloc(%struct.mtu3* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %75

72:                                               ; preds = %64
  %73 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %74 = call i32 @mtu3_regs_init(%struct.mtu3* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %69, %57
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @mtu3_readl(i32, i32) #1

declare dso_local i64 @IP_TRUNK_VERS(i32) #1

declare dso_local i32 @SSUSB_IP_DEV_U3_PORT_NUM(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i8*) #1

declare dso_local i32 @mtu3_device_reset(%struct.mtu3*) #1

declare dso_local i32 @mtu3_device_enable(%struct.mtu3*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mtu3_mem_alloc(%struct.mtu3*) #1

declare dso_local i32 @mtu3_regs_init(%struct.mtu3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
