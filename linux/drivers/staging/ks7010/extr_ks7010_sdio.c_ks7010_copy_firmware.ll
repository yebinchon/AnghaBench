; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_copy_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_copy_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32 }
%struct.firmware = type { i32, i64 }

@ROM_BUFF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KS7010_IRAM_ADDRESS = common dso_local global i64 0, align 8
@DATA_WINDOW = common dso_local global i32 0, align 4
@GCR_A_REG = common dso_local global i32 0, align 4
@GCR_A_REMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks_wlan_private*, %struct.firmware*)* @ks7010_copy_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks7010_copy_firmware(%struct.ks_wlan_private* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ks_wlan_private*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @ROM_BUFF_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kmalloc(i32 %12, i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %93

20:                                               ; preds = %2
  %21 = load %struct.firmware*, %struct.firmware** %5, align 8
  %22 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %81, %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ROM_BUFF_SIZE, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @ROM_BUFF_SIZE, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ROM_BUFF_SIZE, align 4
  %32 = sub i32 %30, %31
  store i32 %32, i32* %6, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %84

39:                                               ; preds = %35
  %40 = load i32*, i32** %10, align 8
  %41 = load %struct.firmware*, %struct.firmware** %5, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @memcpy(i32* %40, i64 %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %51 = load i64, i64* @KS7010_IRAM_ADDRESS, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i32 @ks7010_sdio_update_index(%struct.ks_wlan_private* %50, i64 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  br label %89

59:                                               ; preds = %39
  %60 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %61 = load i32, i32* @DATA_WINDOW, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ks7010_sdio_write(%struct.ks_wlan_private* %60, i32 %61, i32* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %89

68:                                               ; preds = %59
  %69 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %70 = load i32, i32* @DATA_WINDOW, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @ks7010_sdio_data_compare(%struct.ks_wlan_private* %69, i32 %70, i32* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %89

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %24, label %84

84:                                               ; preds = %81, %38
  %85 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %86 = load i32, i32* @GCR_A_REG, align 4
  %87 = load i32, i32* @GCR_A_REMAP, align 4
  %88 = call i32 @ks7010_sdio_writeb(%struct.ks_wlan_private* %85, i32 %86, i32 %87)
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %84, %76, %67, %58
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @kfree(i32* %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %17
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @ks7010_sdio_update_index(%struct.ks_wlan_private*, i64) #1

declare dso_local i32 @ks7010_sdio_write(%struct.ks_wlan_private*, i32, i32*, i32) #1

declare dso_local i32 @ks7010_sdio_data_compare(%struct.ks_wlan_private*, i32, i32*, i32) #1

declare dso_local i32 @ks7010_sdio_writeb(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
