; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp5100_tco.c_sp5100_tco_setupdevice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp5100_tco.c_sp5100_tco_setupdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.watchdog_device = type { i32, i32 }
%struct.sp5100_tco = type { i32, i32 }

@SP5100_IO_PM_INDEX_REG = common dso_local global i32 0, align 4
@SP5100_PM_IOPORTS_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sp5100_tco\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"I/O address 0x%04x already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SP5100_DEVNAME = common dso_local global i8* null, align 8
@SP5100_PM_WATCHDOG_BASE = common dso_local global i32 0, align 4
@SB800_DEVNAME = common dso_local global i8* null, align 8
@SB800_PM_WATCHDOG_BASE = common dso_local global i32 0, align 4
@EFCH_PM_DECODEEN = common dso_local global i32 0, align 4
@EFCH_PM_DECODEEN_WDT_TMREN = common dso_local global i32 0, align 4
@EFCH_PM_WDT_ADDR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SP5100_WDT_MEM_MAP_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"MMIO address 0x%08x already in use\0A\00", align 1
@sp5100_tco_pci = common dso_local global i32 0, align 4
@SP5100_SB_RESOURCE_MMIO_BASE = common dso_local global i32 0, align 4
@SB800_ACPI_MMIO_DECODE_EN = common dso_local global i32 0, align 4
@SB800_ACPI_MMIO_SEL = common dso_local global i32 0, align 4
@SB800_PM_WDT_MMIO_OFFSET = common dso_local global i32 0, align 4
@SB800_PM_ACPI_MMIO_EN = common dso_local global i32 0, align 4
@EFCH_PM_ISACONTROL = common dso_local global i32 0, align 4
@EFCH_PM_ISACONTROL_MMIOEN = common dso_local global i32 0, align 4
@EFCH_PM_ACPI_MMIO_ADDR = common dso_local global i32 0, align 4
@EFCH_PM_ACPI_MMIO_WDT_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Got 0x%08x from SBResource_MMIO register\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to get tcobase address\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Using 0x%08x for watchdog MMIO address\0A\00", align 1
@SP5100_WDT_DISABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Watchdog hardware is disabled\0A\00", align 1
@SP5100_WDT_FIRED = common dso_local global i32 0, align 4
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@SP5100_WDT_ACTION_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.watchdog_device*)* @sp5100_tco_setupdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp5100_tco_setupdevice(%struct.device* %0, %struct.watchdog_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.watchdog_device*, align 8
  %6 = alloca %struct.sp5100_tco*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.watchdog_device* %1, %struct.watchdog_device** %5, align 8
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %12 = call %struct.sp5100_tco* @watchdog_get_drvdata(%struct.watchdog_device* %11)
  store %struct.sp5100_tco* %12, %struct.sp5100_tco** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @SP5100_IO_PM_INDEX_REG, align 4
  %14 = load i32, i32* @SP5100_PM_IOPORTS_SIZE, align 4
  %15 = call i32 @request_muxed_region(i32 %13, i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @SP5100_IO_PM_INDEX_REG, align 4
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %213

23:                                               ; preds = %2
  %24 = load %struct.sp5100_tco*, %struct.sp5100_tco** %6, align 8
  %25 = getelementptr inbounds %struct.sp5100_tco, %struct.sp5100_tco* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %48 [
    i32 128, label %27
    i32 129, label %32
    i32 130, label %37
  ]

27:                                               ; preds = %23
  %28 = load i8*, i8** @SP5100_DEVNAME, align 8
  store i8* %28, i8** %7, align 8
  %29 = load i32, i32* @SP5100_PM_WATCHDOG_BASE, align 4
  %30 = call i32 @sp5100_tco_read_pm_reg32(i32 %29)
  %31 = and i32 %30, -8
  store i32 %31, i32* %8, align 4
  br label %51

32:                                               ; preds = %23
  %33 = load i8*, i8** @SB800_DEVNAME, align 8
  store i8* %33, i8** %7, align 8
  %34 = load i32, i32* @SB800_PM_WATCHDOG_BASE, align 4
  %35 = call i32 @sp5100_tco_read_pm_reg32(i32 %34)
  %36 = and i32 %35, -8
  store i32 %36, i32* %8, align 4
  br label %51

37:                                               ; preds = %23
  %38 = load i8*, i8** @SB800_DEVNAME, align 8
  store i8* %38, i8** %7, align 8
  %39 = load i32, i32* @EFCH_PM_DECODEEN, align 4
  %40 = call i32 @sp5100_tco_read_pm_reg8(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @EFCH_PM_DECODEEN_WDT_TMREN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @EFCH_PM_WDT_ADDR, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %37
  br label %51

48:                                               ; preds = %23
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %213

51:                                               ; preds = %47, %32, %27
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @SP5100_WDT_MEM_MAP_SIZE, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @devm_request_mem_region(%struct.device* %55, i32 %56, i32 %57, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %142, label %61

61:                                               ; preds = %54, %51
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_dbg(%struct.device* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load %struct.sp5100_tco*, %struct.sp5100_tco** %6, align 8
  %70 = getelementptr inbounds %struct.sp5100_tco, %struct.sp5100_tco* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %125 [
    i32 128, label %72
    i32 129, label %92
    i32 130, label %111
  ]

72:                                               ; preds = %68
  %73 = load i32, i32* @sp5100_tco_pci, align 4
  %74 = load i32, i32* @SP5100_SB_RESOURCE_MMIO_BASE, align 4
  %75 = call i32 @pci_read_config_dword(i32 %73, i32 %74, i32* %8)
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @SB800_ACPI_MMIO_DECODE_EN, align 4
  %78 = load i32, i32* @SB800_ACPI_MMIO_SEL, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = load i32, i32* @SB800_ACPI_MMIO_DECODE_EN, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %10, align 4
  br label %208

86:                                               ; preds = %72
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, -4096
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* @SB800_PM_WDT_MMIO_OFFSET, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %125

92:                                               ; preds = %68
  %93 = load i32, i32* @SB800_PM_ACPI_MMIO_EN, align 4
  %94 = call i32 @sp5100_tco_read_pm_reg32(i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @SB800_ACPI_MMIO_DECODE_EN, align 4
  %97 = load i32, i32* @SB800_ACPI_MMIO_SEL, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = load i32, i32* @SB800_ACPI_MMIO_DECODE_EN, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %10, align 4
  br label %208

105:                                              ; preds = %92
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, -4096
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* @SB800_PM_WDT_MMIO_OFFSET, align 4
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %125

111:                                              ; preds = %68
  %112 = load i32, i32* @EFCH_PM_ISACONTROL, align 4
  %113 = call i32 @sp5100_tco_read_pm_reg8(i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @EFCH_PM_ISACONTROL_MMIOEN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* @ENODEV, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %10, align 4
  br label %208

121:                                              ; preds = %111
  %122 = load i32, i32* @EFCH_PM_ACPI_MMIO_ADDR, align 4
  %123 = load i32, i32* @EFCH_PM_ACPI_MMIO_WDT_OFFSET, align 4
  %124 = add nsw i32 %122, %123
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %68, %121, %105, %86
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @dev_dbg(%struct.device* %126, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @SP5100_WDT_MEM_MAP_SIZE, align 4
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @devm_request_mem_region(%struct.device* %129, i32 %130, i32 %131, i8* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %125
  %136 = load %struct.device*, %struct.device** %4, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @dev_dbg(%struct.device* %136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @EBUSY, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %10, align 4
  br label %208

141:                                              ; preds = %125
  br label %142

142:                                              ; preds = %141, %54
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @SP5100_WDT_MEM_MAP_SIZE, align 4
  %146 = call i32 @devm_ioremap(%struct.device* %143, i32 %144, i32 %145)
  %147 = load %struct.sp5100_tco*, %struct.sp5100_tco** %6, align 8
  %148 = getelementptr inbounds %struct.sp5100_tco, %struct.sp5100_tco* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.sp5100_tco*, %struct.sp5100_tco** %6, align 8
  %150 = getelementptr inbounds %struct.sp5100_tco, %struct.sp5100_tco* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %142
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %10, align 4
  br label %208

158:                                              ; preds = %142
  %159 = load %struct.device*, %struct.device** %4, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @dev_info(%struct.device* %159, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %160)
  %162 = load %struct.sp5100_tco*, %struct.sp5100_tco** %6, align 8
  %163 = call i32 @tco_timer_enable(%struct.sp5100_tco* %162)
  %164 = load %struct.sp5100_tco*, %struct.sp5100_tco** %6, align 8
  %165 = getelementptr inbounds %struct.sp5100_tco, %struct.sp5100_tco* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @SP5100_WDT_CONTROL(i32 %166)
  %168 = call i32 @readl(i32 %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @SP5100_WDT_DISABLED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %158
  %174 = load %struct.device*, %struct.device** %4, align 8
  %175 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %174, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %176 = load i32, i32* @ENODEV, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %10, align 4
  br label %208

178:                                              ; preds = %158
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @SP5100_WDT_FIRED, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i32, i32* @WDIOF_CARDRESET, align 4
  %185 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %186 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %183, %178
  %188 = load i32, i32* @SP5100_WDT_ACTION_RESET, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %9, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.sp5100_tco*, %struct.sp5100_tco** %6, align 8
  %194 = getelementptr inbounds %struct.sp5100_tco, %struct.sp5100_tco* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @SP5100_WDT_CONTROL(i32 %195)
  %197 = call i32 @writel(i32 %192, i32 %196)
  %198 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %199 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %200 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @tco_timer_set_timeout(%struct.watchdog_device* %198, i32 %201)
  %203 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %204 = call i32 @tco_timer_stop(%struct.watchdog_device* %203)
  %205 = load i32, i32* @SP5100_IO_PM_INDEX_REG, align 4
  %206 = load i32, i32* @SP5100_PM_IOPORTS_SIZE, align 4
  %207 = call i32 @release_region(i32 %205, i32 %206)
  store i32 0, i32* %3, align 4
  br label %213

208:                                              ; preds = %173, %153, %135, %118, %102, %83
  %209 = load i32, i32* @SP5100_IO_PM_INDEX_REG, align 4
  %210 = load i32, i32* @SP5100_PM_IOPORTS_SIZE, align 4
  %211 = call i32 @release_region(i32 %209, i32 %210)
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %208, %187, %48, %17
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.sp5100_tco* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @request_muxed_region(i32, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @sp5100_tco_read_pm_reg32(i32) #1

declare dso_local i32 @sp5100_tco_read_pm_reg8(i32) #1

declare dso_local i32 @devm_request_mem_region(%struct.device*, i32, i32, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @tco_timer_enable(%struct.sp5100_tco*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @SP5100_WDT_CONTROL(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @tco_timer_set_timeout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @tco_timer_stop(%struct.watchdog_device*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
