; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_write_to_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_write_to_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32 }
%struct.hostif_hdr = type { i32 }

@HIF_DATA_REQ = common dso_local global i64 0, align 8
@HIF_REQ_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"unknown event=%04X\0A\00", align 1
@DATA_WINDOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"write DATA_WINDOW\0A\00", align 1
@WRITE_STATUS_REG = common dso_local global i32 0, align 4
@REG_STATUS_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"write WRITE_STATUS_REG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks_wlan_private*, i32*, i64)* @write_to_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_to_device(%struct.ks_wlan_private* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ks_wlan_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hostif_hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = bitcast i32* %10 to %struct.hostif_hdr*
  store %struct.hostif_hdr* %11, %struct.hostif_hdr** %8, align 8
  %12 = load %struct.hostif_hdr*, %struct.hostif_hdr** %8, align 8
  %13 = getelementptr inbounds %struct.hostif_hdr, %struct.hostif_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le16_to_cpu(i32 %14)
  %16 = load i64, i64* @HIF_DATA_REQ, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.hostif_hdr*, %struct.hostif_hdr** %8, align 8
  %20 = getelementptr inbounds %struct.hostif_hdr, %struct.hostif_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le16_to_cpu(i32 %21)
  %23 = load i64, i64* @HIF_REQ_MAX, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %18, %3
  %26 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %27 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hostif_hdr*, %struct.hostif_hdr** %8, align 8
  %30 = getelementptr inbounds %struct.hostif_hdr, %struct.hostif_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @netdev_err(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %4, align 4
  br label %61

33:                                               ; preds = %18
  %34 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %35 = load i32, i32* @DATA_WINDOW, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @ks7010_sdio_write(%struct.ks_wlan_private* %34, i32 %35, i32* %36, i64 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %43 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @netdev_err(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %61

47:                                               ; preds = %33
  %48 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %49 = load i32, i32* @WRITE_STATUS_REG, align 4
  %50 = load i32, i32* @REG_STATUS_BUSY, align 4
  %51 = call i32 @ks7010_sdio_writeb(%struct.ks_wlan_private* %48, i32 %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %56 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @netdev_err(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %61

60:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %54, %41, %25
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @ks7010_sdio_write(%struct.ks_wlan_private*, i32, i32*, i64) #1

declare dso_local i32 @ks7010_sdio_writeb(%struct.ks_wlan_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
