; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_download_firmware_to_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_download_firmware_to_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info* }
%struct.rtw_chip_info = type { i64 }

@REG_DDMA_CH0CTRL = common dso_local global i32 0, align 4
@BIT_DDMACH0_RESET_CHKSUM_STS = common dso_local global i64 0, align 8
@OCPBASE_TXBUF_88XX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32*, i64, i64, i64)* @download_firmware_to_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @download_firmware_to_mem(%struct.rtw_dev* %0, i32* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtw_chip_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %22 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %21, i32 0, i32 0
  %23 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %22, align 8
  store %struct.rtw_chip_info* %23, %struct.rtw_chip_info** %12, align 8
  %24 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %12, align 8
  %25 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  store i64 4096, i64* %18, align 8
  store i64 0, i64* %15, align 8
  store i32 1, i32* %14, align 4
  %27 = load i64, i64* %11, align 8
  store i64 %27, i64* %16, align 8
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %29 = load i32, i32* @REG_DDMA_CH0CTRL, align 4
  %30 = call i64 @rtw_read32(%struct.rtw_dev* %28, i32 %29)
  store i64 %30, i64* %19, align 8
  %31 = load i64, i64* @BIT_DDMACH0_RESET_CHKSUM_STS, align 8
  %32 = load i64, i64* %19, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %19, align 8
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %35 = load i32, i32* @REG_DDMA_CH0CTRL, align 4
  %36 = load i64, i64* %19, align 8
  %37 = call i32 @rtw_write32(%struct.rtw_dev* %34, i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %80, %5
  %39 = load i64, i64* %16, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %38
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %18, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* %18, align 8
  store i64 %46, i64* %17, align 8
  br label %49

47:                                               ; preds = %41
  %48 = load i64, i64* %16, align 8
  store i64 %48, i64* %17, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = ashr i64 %51, 7
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %15, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i64, i64* %17, align 8
  %58 = call i32 @send_firmware_pkt(%struct.rtw_dev* %50, i32 %53, i32* %56, i64 %57)
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %20, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %20, align 4
  store i32 %62, i32* %6, align 4
  br label %96

63:                                               ; preds = %49
  %64 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %65 = load i64, i64* @OCPBASE_TXBUF_88XX, align 8
  %66 = load i64, i64* %9, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* %13, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %15, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i64, i64* %17, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @iddma_download_firmware(%struct.rtw_dev* %64, i64 %69, i64 %72, i64 %73, i32 %74)
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load i32, i32* %20, align 4
  store i32 %79, i32* %6, align 4
  br label %96

80:                                               ; preds = %63
  store i32 0, i32* %14, align 4
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* %15, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %16, align 8
  %86 = sub nsw i64 %85, %84
  store i64 %86, i64* %16, align 8
  br label %38

87:                                               ; preds = %38
  %88 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @check_fw_checksum(%struct.rtw_dev* %88, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %96

95:                                               ; preds = %87
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %95, %92, %78, %61
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i64 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i64) #1

declare dso_local i32 @send_firmware_pkt(%struct.rtw_dev*, i32, i32*, i64) #1

declare dso_local i32 @iddma_download_firmware(%struct.rtw_dev*, i64, i64, i64, i32) #1

declare dso_local i32 @check_fw_checksum(%struct.rtw_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
