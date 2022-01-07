; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_upload_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_upload_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_sdio_card = type { %struct.ks_wlan_private* }
%struct.ks_wlan_private = type { i32 }
%struct.sdio_func = type { i32 }
%struct.firmware = type { i32 }

@GCR_A_REG = common dso_local global i32 0, align 4
@GCR_A_RUN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"MAC firmware running ...\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ROM_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"firmware can't start\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks_sdio_card*)* @ks7010_upload_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks7010_upload_firmware(%struct.ks_sdio_card* %0) #0 {
  %2 = alloca %struct.ks_sdio_card*, align 8
  %3 = alloca %struct.ks_wlan_private*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware*, align 8
  store %struct.ks_sdio_card* %0, %struct.ks_sdio_card** %2, align 8
  %9 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %2, align 8
  %10 = getelementptr inbounds %struct.ks_sdio_card, %struct.ks_sdio_card* %9, i32 0, i32 0
  %11 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  store %struct.ks_wlan_private* %11, %struct.ks_wlan_private** %3, align 8
  %12 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %13 = call %struct.sdio_func* @ks7010_to_func(%struct.ks_wlan_private* %12)
  store %struct.sdio_func* %13, %struct.sdio_func** %4, align 8
  store i64 0, i64* %6, align 8
  store %struct.firmware* null, %struct.firmware** %8, align 8
  %14 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %15 = call i32 @sdio_claim_host(%struct.sdio_func* %14)
  %16 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %17 = load i32, i32* @GCR_A_REG, align 4
  %18 = call i32 @ks7010_sdio_readb(%struct.ks_wlan_private* %16, i32 %17, i64* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %83

22:                                               ; preds = %1
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @GCR_A_RUN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %28 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @netdev_dbg(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %83

33:                                               ; preds = %22
  %34 = load i32, i32* @ROM_FILE, align 4
  %35 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %36 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %35, i32 0, i32 0
  %37 = call i32 @request_firmware(%struct.firmware** %8, i32 %34, i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %83

41:                                               ; preds = %33
  %42 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %43 = load %struct.firmware*, %struct.firmware** %8, align 8
  %44 = call i32 @ks7010_copy_firmware(%struct.ks_wlan_private* %42, %struct.firmware* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %80

48:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %5, align 4
  %51 = icmp ult i32 %50, 50
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = call i32 @usleep_range(i32 10000, i32 11000)
  %54 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %55 = load i32, i32* @GCR_A_REG, align 4
  %56 = call i32 @ks7010_sdio_readb(%struct.ks_wlan_private* %54, i32 %55, i64* %6)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %80

60:                                               ; preds = %52
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @GCR_A_RUN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %69

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %49

69:                                               ; preds = %64, %49
  %70 = load i32, i32* %5, align 4
  %71 = icmp ule i32 50, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %74 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @netdev_err(i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %80

79:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %72, %59, %47
  %81 = load %struct.firmware*, %struct.firmware** %8, align 8
  %82 = call i32 @release_firmware(%struct.firmware* %81)
  br label %83

83:                                               ; preds = %80, %40, %26, %21
  %84 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %85 = call i32 @sdio_release_host(%struct.sdio_func* %84)
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local %struct.sdio_func* @ks7010_to_func(%struct.ks_wlan_private*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @ks7010_sdio_readb(%struct.ks_wlan_private*, i32, i64*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @ks7010_copy_firmware(%struct.ks_wlan_private*, %struct.firmware*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
