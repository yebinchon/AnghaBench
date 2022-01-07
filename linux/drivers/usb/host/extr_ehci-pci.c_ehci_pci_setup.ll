; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-pci.c_ehci_pci_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-pci.c_ehci_pci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ehci_hcd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.pci_dev = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"unsupported big endian Toshiba quirk\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"can't enable NVidia workaround for >2GB RAM\0A\00", align 1
@PCI_DEVICE_ID_INTEL_CE4100_USB = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_TDI_EHCI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"ignoring AMD8111 (errata)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"applying AMD SB700/SB800/Hudson-2/3 EHCI dummy qh workaround\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"applying AMD SB600/SB700 USB freeze workaround\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"applying MosChip frame-index workaround\0A\00", align 1
@PCI_CAP_ID_DBG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"debug port %d%s\0A\00", align 1
@DBGP_ENABLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c" IN USE\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"disable ppcd for nvidia mcp89\0A\00", align 1
@CMD_PPCEE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [53 x i8] c"bogus port configuration: cc=%d x pcc=%d < ports=%d\0A\00", align 1
@PCI_VENDOR_ID_STMICRO = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_STMICRO_USB_HOST = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [24 x i8] c"Enabling legacy PCI PM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ehci_pci_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_pci_setup(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %12)
  store %struct.ehci_hcd* %13, %struct.ehci_hcd** %4, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %5, align 8
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %23 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %22, i32 0, i32 11
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %174 [
    i32 129, label %27
    i32 131, label %36
    i32 134, label %59
    i32 130, label %69
    i32 136, label %79
    i32 128, label %106
    i32 135, label %130
    i32 132, label %169
  ]

27:                                               ; preds = %1
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 437
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %34 = call i32 @ehci_warn(%struct.ehci_hcd* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  br label %174

36:                                               ; preds = %1
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %58 [
    i32 60, label %40
    i32 91, label %40
    i32 216, label %40
    i32 232, label %40
    i32 104, label %49
  ]

40:                                               ; preds = %36, %36, %36, %36
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = call i32 @DMA_BIT_MASK(i32 31)
  %43 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %41, i32 %42)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %47 = call i32 @ehci_warn(%struct.ehci_hcd* %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40
  br label %58

49:                                               ; preds = %36
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 164
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %56 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %36, %57, %48
  br label %174

59:                                               ; preds = %1
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PCI_DEVICE_ID_INTEL_CE4100_USB, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %67 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %59
  br label %174

69:                                               ; preds = %1
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PCI_DEVICE_ID_TDI_EHCI, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %77 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %69
  br label %174

79:                                               ; preds = %1
  %80 = call i32 (...) @usb_amd_quirk_pll_check()
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %84 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 29795
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %92 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_info(%struct.ehci_hcd* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %355

95:                                               ; preds = %85
  %96 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 30728
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %102 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %101, i32 0, i32 3
  store i32 1, i32* %102, align 4
  %103 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %104 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_info(%struct.ehci_hcd* %103, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %105

105:                                              ; preds = %100, %95
  br label %174

106:                                              ; preds = %1
  %107 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 12548
  br i1 %110, label %111, label %129

111:                                              ; preds = %106
  %112 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 240
  %116 = icmp eq i32 %115, 96
  br i1 %116, label %117, label %129

117:                                              ; preds = %111
  %118 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %119 = call i32 @pci_read_config_byte(%struct.pci_dev* %118, i32 75, i32* %8)
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, 32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %174

124:                                              ; preds = %117
  %125 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = or i32 %126, 32
  %128 = call i32 @pci_write_config_byte(%struct.pci_dev* %125, i32 75, i32 %127)
  br label %129

129:                                              ; preds = %124, %111, %106
  br label %174

130:                                              ; preds = %1
  %131 = call i32 (...) @usb_amd_quirk_pll_check()
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %135 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %134, i32 0, i32 2
  store i32 1, i32* %135, align 8
  br label %136

136:                                              ; preds = %133, %130
  %137 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %138 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 17302
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %143 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %142, i32 0, i32 3
  store i32 1, i32* %143, align 4
  %144 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %145 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_info(%struct.ehci_hcd* %144, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %148 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 17286
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %153 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 17302
  br i1 %155, label %156, label %168

156:                                              ; preds = %151, %146
  %157 = call i32 (...) @usb_amd_hang_symptom_quirk()
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %161 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_info(%struct.ehci_hcd* %160, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %162 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %163 = call i32 @pci_read_config_byte(%struct.pci_dev* %162, i32 83, i32* %9)
  %164 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %165 = load i32, i32* %9, align 4
  %166 = or i32 %165, 8
  %167 = call i32 @pci_write_config_byte(%struct.pci_dev* %164, i32 83, i32 %166)
  br label %168

168:                                              ; preds = %159, %156, %151
  br label %174

169:                                              ; preds = %1
  %170 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %171 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_info(%struct.ehci_hcd* %170, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %172 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %173 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %172, i32 0, i32 4
  store i32 1, i32* %173, align 8
  br label %174

174:                                              ; preds = %1, %169, %168, %129, %123, %105, %78, %68, %58, %35
  %175 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %176 = load i32, i32* @PCI_CAP_ID_DBG, align 4
  %177 = call i32 @pci_find_capability(%struct.pci_dev* %175, i32 %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %232

180:                                              ; preds = %174
  %181 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @pci_read_config_dword(%struct.pci_dev* %181, i32 %182, i32* %6)
  %184 = load i32, i32* %6, align 4
  %185 = ashr i32 %184, 16
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = ashr i32 %186, 13
  %188 = and i32 %187, 7
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %231

190:                                              ; preds = %180
  %191 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %192 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %193 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %192, i32 0, i32 11
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = call i32 @ehci_readl(%struct.ehci_hcd* %191, i32* %195)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %6, align 4
  %198 = and i32 %197, 8191
  store i32 %198, i32* %6, align 4
  %199 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %200 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %199, i32 0, i32 1
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %203
  %205 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %206 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %205, i32 0, i32 10
  store %struct.TYPE_4__* %204, %struct.TYPE_4__** %206, align 8
  %207 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %208 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %209 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %208, i32 0, i32 10
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = call i32 @ehci_readl(%struct.ehci_hcd* %207, i32* %211)
  store i32 %212, i32* %6, align 4
  %213 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @HCS_DEBUG_PORT(i32 %214)
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* @DBGP_ENABLED, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %222 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_info(%struct.ehci_hcd* %213, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %215, i8* %221)
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @DBGP_ENABLED, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %190
  %228 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %229 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %228, i32 0, i32 10
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %229, align 8
  br label %230

230:                                              ; preds = %227, %190
  br label %231

231:                                              ; preds = %230, %180
  br label %232

232:                                              ; preds = %231, %174
  %233 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %234 = call i32 @ehci_setup(%struct.usb_hcd* %233)
  store i32 %234, i32* %7, align 4
  %235 = load i32, i32* %7, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %232
  %238 = load i32, i32* %7, align 4
  store i32 %238, i32* %2, align 4
  br label %357

239:                                              ; preds = %232
  %240 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %241 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  switch i32 %242, label %262 [
    i32 133, label %243
    i32 134, label %243
    i32 136, label %243
    i32 131, label %246
  ]

243:                                              ; preds = %239, %239, %239
  %244 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %245 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %244, i32 0, i32 9
  store i32 0, i32* %245, align 4
  br label %262

246:                                              ; preds = %239
  %247 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %248 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  switch i32 %249, label %261 [
    i32 3485, label %250
  ]

250:                                              ; preds = %246
  %251 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %252 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_info(%struct.ehci_hcd* %251, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %253 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %254 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %253, i32 0, i32 8
  store i32 0, i32* %254, align 8
  %255 = load i32, i32* @CMD_PPCEE, align 4
  %256 = xor i32 %255, -1
  %257 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %258 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %259, %256
  store i32 %260, i32* %258, align 4
  br label %261

261:                                              ; preds = %246, %250
  br label %262

262:                                              ; preds = %239, %261, %243
  %263 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %264 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @HCS_N_CC(i32 %265)
  %267 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %268 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @HCS_N_PCC(i32 %269)
  %271 = mul nsw i32 %266, %270
  store i32 %271, i32* %6, align 4
  %272 = load i32, i32* %6, align 4
  %273 = and i32 %272, 15
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %6, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %313

276:                                              ; preds = %262
  %277 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %278 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @HCS_N_PORTS(i32 %279)
  %281 = load i32, i32* %6, align 4
  %282 = icmp sgt i32 %280, %281
  br i1 %282, label %283, label %313

283:                                              ; preds = %276
  %284 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %285 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %286 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @HCS_N_CC(i32 %287)
  %289 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %290 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @HCS_N_PCC(i32 %291)
  %293 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %294 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @HCS_N_PORTS(i32 %295)
  %297 = call i32 @ehci_dbg(%struct.ehci_hcd* %284, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %288, i32 %292, i32 %296)
  %298 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %299 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  switch i32 %300, label %312 [
    i32 6048, label %301
    i32 131, label %311
  ]

301:                                              ; preds = %283
  %302 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %303 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 4
  %305 = and i32 %304, -16
  %306 = load i32, i32* %6, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %6, align 4
  %308 = load i32, i32* %6, align 4
  %309 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %310 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %309, i32 0, i32 5
  store i32 %308, i32* %310, align 4
  br label %312

311:                                              ; preds = %283
  br label %312

312:                                              ; preds = %283, %311, %301
  br label %313

313:                                              ; preds = %312, %276, %262
  %314 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %315 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @PCI_VENDOR_ID_STMICRO, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %327

319:                                              ; preds = %313
  %320 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %321 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = load i64, i64* @PCI_DEVICE_ID_STMICRO_USB_HOST, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %319
  br label %332

327:                                              ; preds = %319, %313
  %328 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %329 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %330 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %329, i32 0, i32 6
  %331 = call i32 @pci_read_config_byte(%struct.pci_dev* %328, i32 96, i32* %330)
  br label %332

332:                                              ; preds = %327, %326
  %333 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %334 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %333, i32 0, i32 3
  %335 = call i64 @device_can_wakeup(i32* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %351, label %337

337:                                              ; preds = %332
  %338 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %339 = call i32 @pci_read_config_word(%struct.pci_dev* %338, i32 98, i32* %11)
  %340 = load i32, i32* %11, align 4
  %341 = and i32 %340, 1
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %350

343:                                              ; preds = %337
  %344 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %345 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %344, i32 0, i32 3
  %346 = call i32 @dev_warn(i32* %345, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %347 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %348 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %347, i32 0, i32 3
  %349 = call i32 @device_set_wakeup_capable(i32* %348, i32 1)
  br label %350

350:                                              ; preds = %343, %337
  br label %351

351:                                              ; preds = %350, %332
  %352 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %353 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %354 = call i32 @ehci_pci_reinit(%struct.ehci_hcd* %352, %struct.pci_dev* %353)
  store i32 %354, i32* %7, align 4
  br label %355

355:                                              ; preds = %351, %90
  %356 = load i32, i32* %7, align 4
  store i32 %356, i32* %2, align 4
  br label %357

357:                                              ; preds = %355, %237
  %358 = load i32, i32* %2, align 4
  ret i32 %358
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @ehci_warn(%struct.ehci_hcd*, i8*) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @usb_amd_quirk_pll_check(...) #1

declare dso_local i32 @ehci_info(%struct.ehci_hcd*, i8*, ...) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @usb_amd_hang_symptom_quirk(...) #1

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @HCS_DEBUG_PORT(i32) #1

declare dso_local i32 @ehci_setup(%struct.usb_hcd*) #1

declare dso_local i32 @HCS_N_CC(i32) #1

declare dso_local i32 @HCS_N_PCC(i32) #1

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*, i32, i32, i32) #1

declare dso_local i64 @device_can_wakeup(i32*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i32 @ehci_pci_reinit(%struct.ehci_hcd*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
