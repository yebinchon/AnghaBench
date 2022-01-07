; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_mcu.c_mt76pci_load_rom_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_mcu.c_mt76pci_load_rom_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.mt76x02_patch_header = type { i32 }

@MT_MCU_SEMAPHORE_03 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Could not get hardware semaphore for ROM PATCH\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MT76XX_REV_E3 = common dso_local global i64 0, align 8
@MT_MCU_CLOCK_CTL = common dso_local global i32 0, align 4
@MT_MCU_COM_REG0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ROM patch already applied\0A\00", align 1
@MT7662_ROM_PATCH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to load firmware\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ROM patch build: %.15s\0A\00", align 1
@MT_MCU_PCIE_REMAP_BASE4 = common dso_local global i32 0, align 4
@MT_MCU_ROM_PATCH_OFFSET = common dso_local global i32 0, align 4
@MT_MCU_ROM_PATCH_ADDR = common dso_local global i32 0, align 4
@MT_MCU_INT_LEVEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to load ROM patch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76pci_load_rom_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76pci_load_rom_patch(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.mt76x02_patch_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store %struct.firmware* null, %struct.firmware** %4, align 8
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %13 = call i32 @is_mt7612(%struct.mt76x02_dev* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %21 = load i32, i32* @MT_MCU_SEMAPHORE_03, align 4
  %22 = call i32 @mt76_poll(%struct.mt76x02_dev* %20, i32 %21, i32 1, i32 1, i32 600)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %156

32:                                               ; preds = %19, %1
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %34 = call i64 @mt76xx_rev(%struct.mt76x02_dev* %33)
  %35 = load i64, i64* @MT76XX_REV_E3, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = call i32 @BIT(i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @MT_MCU_CLOCK_CTL, align 4
  store i32 %39, i32* %11, align 4
  br label %43

40:                                               ; preds = %32
  %41 = call i32 @BIT(i32 1)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @MT_MCU_COM_REG0, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @mt76_rr(%struct.mt76x02_dev* %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %55 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_info(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %145

59:                                               ; preds = %46, %43
  %60 = load i32, i32* @MT7662_ROM_PATCH, align 4
  %61 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %62 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @request_firmware(%struct.firmware** %4, i32 %60, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %145

69:                                               ; preds = %59
  %70 = load %struct.firmware*, %struct.firmware** %4, align 8
  %71 = icmp ne %struct.firmware* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.firmware*, %struct.firmware** %4, align 8
  %74 = getelementptr inbounds %struct.firmware, %struct.firmware* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.firmware*, %struct.firmware** %4, align 8
  %79 = getelementptr inbounds %struct.firmware, %struct.firmware* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = icmp ule i64 %81, 4
  br i1 %82, label %83, label %91

83:                                               ; preds = %77, %72, %69
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  %86 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %87 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %145

91:                                               ; preds = %77
  %92 = load %struct.firmware*, %struct.firmware** %4, align 8
  %93 = getelementptr inbounds %struct.firmware, %struct.firmware* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.mt76x02_patch_header*
  store %struct.mt76x02_patch_header* %95, %struct.mt76x02_patch_header** %5, align 8
  %96 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %97 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mt76x02_patch_header*, %struct.mt76x02_patch_header** %5, align 8
  %101 = getelementptr inbounds %struct.mt76x02_patch_header, %struct.mt76x02_patch_header* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @dev_info(i32 %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %105 = load i32, i32* @MT_MCU_PCIE_REMAP_BASE4, align 4
  %106 = load i32, i32* @MT_MCU_ROM_PATCH_OFFSET, align 4
  %107 = call i32 @mt76_wr(%struct.mt76x02_dev* %104, i32 %105, i32 %106)
  %108 = load %struct.firmware*, %struct.firmware** %4, align 8
  %109 = getelementptr inbounds %struct.firmware, %struct.firmware* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, 4
  %112 = inttoptr i64 %111 to i32*
  store i32* %112, i32** %9, align 8
  %113 = load %struct.firmware*, %struct.firmware** %4, align 8
  %114 = getelementptr inbounds %struct.firmware, %struct.firmware* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = sub i64 %116, 4
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %7, align 4
  %119 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %120 = load i32, i32* @MT_MCU_ROM_PATCH_ADDR, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @mt76_wr_copy(%struct.mt76x02_dev* %119, i32 %120, i32* %121, i32 %122)
  %124 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %125 = load i32, i32* @MT_MCU_PCIE_REMAP_BASE4, align 4
  %126 = call i32 @mt76_wr(%struct.mt76x02_dev* %124, i32 %125, i32 0)
  %127 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %128 = load i32, i32* @MT_MCU_INT_LEVEL, align 4
  %129 = call i32 @mt76_wr(%struct.mt76x02_dev* %127, i32 %128, i32 4)
  %130 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @mt76_poll_msec(%struct.mt76x02_dev* %130, i32 %131, i32 %132, i32 %133, i32 2000)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %91
  %137 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %138 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @dev_err(i32 %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %142 = load i32, i32* @ETIMEDOUT, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %136, %91
  br label %145

145:                                              ; preds = %144, %83, %68, %53
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %150 = load i32, i32* @MT_MCU_SEMAPHORE_03, align 4
  %151 = call i32 @mt76_wr(%struct.mt76x02_dev* %149, i32 %150, i32 1)
  br label %152

152:                                              ; preds = %148, %145
  %153 = load %struct.firmware*, %struct.firmware** %4, align 8
  %154 = call i32 @release_firmware(%struct.firmware* %153)
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %152, %24
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @is_mt7612(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_poll(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @mt76xx_rev(%struct.mt76x02_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr_copy(%struct.mt76x02_dev*, i32, i32*, i32) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
