; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_check_fw_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_check_fw_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_MCUFW_CTRL = common dso_local global i32 0, align 4
@REG_DDMA_CH0CTRL = common dso_local global i32 0, align 4
@BIT_DDMACH0_CHKSUM_STS = common dso_local global i32 0, align 4
@OCPBASE_DMEM_88XX = common dso_local global i64 0, align 8
@BIT_IMEM_DW_OK = common dso_local global i32 0, align 4
@BIT_IMEM_CHKSUM_OK = common dso_local global i32 0, align 4
@BIT_DMEM_DW_OK = common dso_local global i32 0, align 4
@BIT_DMEM_CHKSUM_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid fw checksum\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i64)* @check_fw_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fw_checksum(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %8 = load i32, i32* @REG_MCUFW_CTRL, align 4
  %9 = call i32 @rtw_read8(%struct.rtw_dev* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %11 = load i32, i32* @REG_DDMA_CH0CTRL, align 4
  %12 = call i32 @rtw_read32(%struct.rtw_dev* %10, i32 %11)
  %13 = load i32, i32* @BIT_DDMACH0_CHKSUM_STS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @OCPBASE_DMEM_88XX, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i32, i32* @BIT_IMEM_DW_OK, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @BIT_IMEM_CHKSUM_OK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %29 = load i32, i32* @REG_MCUFW_CTRL, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @rtw_write8(%struct.rtw_dev* %28, i32 %29, i32 %30)
  br label %44

32:                                               ; preds = %16
  %33 = load i32, i32* @BIT_DMEM_DW_OK, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @BIT_DMEM_CHKSUM_OK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %41 = load i32, i32* @REG_MCUFW_CTRL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @rtw_write8(%struct.rtw_dev* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %32, %20
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %46 = call i32 @rtw_err(%struct.rtw_dev* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %72

47:                                               ; preds = %2
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @OCPBASE_DMEM_88XX, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i32, i32* @BIT_IMEM_DW_OK, align 4
  %53 = load i32, i32* @BIT_IMEM_CHKSUM_OK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %58 = load i32, i32* @REG_MCUFW_CTRL, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @rtw_write8(%struct.rtw_dev* %57, i32 %58, i32 %59)
  br label %71

61:                                               ; preds = %47
  %62 = load i32, i32* @BIT_DMEM_DW_OK, align 4
  %63 = load i32, i32* @BIT_DMEM_CHKSUM_OK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %68 = load i32, i32* @REG_MCUFW_CTRL, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @rtw_write8(%struct.rtw_dev* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %61, %51
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %44
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
