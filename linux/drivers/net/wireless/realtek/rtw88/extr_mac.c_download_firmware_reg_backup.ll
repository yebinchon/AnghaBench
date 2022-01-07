; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_download_firmware_reg_backup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_download_firmware_reg_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_backup_info = type { i32, i32, i8* }

@REG_TXDMA_PQ_MAP = common dso_local global i8* null, align 8
@RTW_DMA_MAPPING_HIGH = common dso_local global i32 0, align 4
@REG_CR = common dso_local global i8* null, align 8
@REG_H2CQ_CSR = common dso_local global i8* null, align 8
@BIT_H2CQ_FULL = common dso_local global i32 0, align 4
@BIT_HCI_TXDMA_EN = common dso_local global i64 0, align 8
@BIT_TXDMA_EN = common dso_local global i64 0, align 8
@REG_FIFOPAGE_INFO_1 = common dso_local global i8* null, align 8
@REG_RQPN_CTRL_2 = common dso_local global i8* null, align 8
@BIT_LD_RQPN = common dso_local global i32 0, align 4
@REG_BCN_CTRL = common dso_local global i8* null, align 8
@BIT_EN_BCN_FUNCTION = common dso_local global i64 0, align 8
@BIT_DIS_TSF_UDT = common dso_local global i64 0, align 8
@DLFW_RESTORE_REG_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"wrong backup number\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.rtw_backup_info*)* @download_firmware_reg_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @download_firmware_reg_backup(%struct.rtw_dev* %0, %struct.rtw_backup_info* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_backup_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw_backup_info* %1, %struct.rtw_backup_info** %4, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %8 = load i64, i64* %6, align 8
  %9 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %7, i64 %8
  %10 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i8*, i8** @REG_TXDMA_PQ_MAP, align 8
  %12 = getelementptr i8, i8* %11, i64 1
  %13 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %13, i64 %14
  %16 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %15, i32 0, i32 2
  store i8* %12, i8** %16, align 8
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %18 = load i8*, i8** @REG_TXDMA_PQ_MAP, align 8
  %19 = getelementptr i8, i8* %18, i64 1
  %20 = call i8* @rtw_read8(%struct.rtw_dev* %17, i8* %19)
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %22, i64 %23
  %25 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %6, align 8
  %28 = load i32, i32* @RTW_DMA_MAPPING_HIGH, align 4
  %29 = shl i32 %28, 6
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %5, align 8
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %32 = load i8*, i8** @REG_TXDMA_PQ_MAP, align 8
  %33 = getelementptr i8, i8* %32, i64 1
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @rtw_write8(%struct.rtw_dev* %31, i8* %33, i64 %34)
  %36 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %36, i64 %37
  %39 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i8*, i8** @REG_CR, align 8
  %41 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %41, i64 %42
  %44 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %43, i32 0, i32 2
  store i8* %40, i8** %44, align 8
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %46 = load i8*, i8** @REG_CR, align 8
  %47 = call i8* @rtw_read8(%struct.rtw_dev* %45, i8* %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %49, i64 %50
  %52 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  %55 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %55, i64 %56
  %58 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %57, i32 0, i32 0
  store i32 4, i32* %58, align 8
  %59 = load i8*, i8** @REG_H2CQ_CSR, align 8
  %60 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %60, i64 %61
  %63 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %62, i32 0, i32 2
  store i8* %59, i8** %63, align 8
  %64 = load i32, i32* @BIT_H2CQ_FULL, align 4
  %65 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %65, i64 %66
  %68 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* @BIT_HCI_TXDMA_EN, align 8
  %72 = load i64, i64* @BIT_TXDMA_EN, align 8
  %73 = or i64 %71, %72
  store i64 %73, i64* %5, align 8
  %74 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %75 = load i8*, i8** @REG_CR, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @rtw_write8(%struct.rtw_dev* %74, i8* %75, i64 %76)
  %78 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %79 = load i8*, i8** @REG_H2CQ_CSR, align 8
  %80 = load i32, i32* @BIT_H2CQ_FULL, align 4
  %81 = call i32 @rtw_write32(%struct.rtw_dev* %78, i8* %79, i32 %80)
  %82 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %82, i64 %83
  %85 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %84, i32 0, i32 0
  store i32 2, i32* %85, align 8
  %86 = load i8*, i8** @REG_FIFOPAGE_INFO_1, align 8
  %87 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %87, i64 %88
  %90 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %89, i32 0, i32 2
  store i8* %86, i8** %90, align 8
  %91 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %92 = load i8*, i8** @REG_FIFOPAGE_INFO_1, align 8
  %93 = call i32 @rtw_read16(%struct.rtw_dev* %91, i8* %92)
  %94 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %94, i64 %95
  %97 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 4
  %98 = load i64, i64* %6, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %6, align 8
  %100 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %100, i64 %101
  %103 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %102, i32 0, i32 0
  store i32 4, i32* %103, align 8
  %104 = load i8*, i8** @REG_RQPN_CTRL_2, align 8
  %105 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %105, i64 %106
  %108 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %107, i32 0, i32 2
  store i8* %104, i8** %108, align 8
  %109 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %110 = load i8*, i8** @REG_RQPN_CTRL_2, align 8
  %111 = call i32 @rtw_read32(%struct.rtw_dev* %109, i8* %110)
  %112 = load i32, i32* @BIT_LD_RQPN, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %115 = load i64, i64* %6, align 8
  %116 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %114, i64 %115
  %117 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 4
  %118 = load i64, i64* %6, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %6, align 8
  %120 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %121 = load i8*, i8** @REG_FIFOPAGE_INFO_1, align 8
  %122 = call i32 @rtw_write16(%struct.rtw_dev* %120, i8* %121, i32 512)
  %123 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %124 = load i8*, i8** @REG_RQPN_CTRL_2, align 8
  %125 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %126 = load i64, i64* %6, align 8
  %127 = sub i64 %126, 1
  %128 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %125, i64 %127
  %129 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @rtw_write32(%struct.rtw_dev* %123, i8* %124, i32 %130)
  %132 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %133 = load i8*, i8** @REG_BCN_CTRL, align 8
  %134 = call i8* @rtw_read8(%struct.rtw_dev* %132, i8* %133)
  %135 = ptrtoint i8* %134 to i64
  store i64 %135, i64* %5, align 8
  %136 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %137 = load i64, i64* %6, align 8
  %138 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %136, i64 %137
  %139 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load i8*, i8** @REG_BCN_CTRL, align 8
  %141 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %142 = load i64, i64* %6, align 8
  %143 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %141, i64 %142
  %144 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %143, i32 0, i32 2
  store i8* %140, i8** %144, align 8
  %145 = load i64, i64* %5, align 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %4, align 8
  %148 = load i64, i64* %6, align 8
  %149 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %147, i64 %148
  %150 = getelementptr inbounds %struct.rtw_backup_info, %struct.rtw_backup_info* %149, i32 0, i32 1
  store i32 %146, i32* %150, align 4
  %151 = load i64, i64* %6, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %6, align 8
  %153 = load i64, i64* %5, align 8
  %154 = load i64, i64* @BIT_EN_BCN_FUNCTION, align 8
  %155 = xor i64 %154, -1
  %156 = and i64 %153, %155
  %157 = load i64, i64* @BIT_DIS_TSF_UDT, align 8
  %158 = or i64 %156, %157
  store i64 %158, i64* %5, align 8
  %159 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %160 = load i8*, i8** @REG_BCN_CTRL, align 8
  %161 = load i64, i64* %5, align 8
  %162 = call i32 @rtw_write8(%struct.rtw_dev* %159, i8* %160, i64 %161)
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* @DLFW_RESTORE_REG_NUM, align 8
  %165 = icmp ne i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @WARN(i32 %166, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i8* @rtw_read8(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i8*, i64) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i8*, i32) #1

declare dso_local i32 @rtw_read16(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i8*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
