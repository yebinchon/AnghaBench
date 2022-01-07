; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_ibmphp_pci.c_ibmphp_configure_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_ibmphp_pci.c_ibmphp_configure_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.pci_func = type { i32, i32, i32, i32, i32**, i32**, i32**, %struct.pci_func*, i32*, i32* }

@.str = private unnamed_addr constant [41 x i8] c"inside configure_card, func->busno = %x\0A\00", align 1
@ibmphp_pci_bus = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [87 x i8] c"inside the loop, cur_func->busno = %x, cur_func->device = %x, cur_func->function = %x\0A\00", align 1
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"vendor_id is %x\0A\00", align 1
@PCI_VENDOR_ID_NOTVALID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"found valid device, vendor_id = %x\0A\00", align 1
@PCI_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"hrd_type = %x, class = %x, class_code %x\0A\00", align 1
@PCI_CLASS_NOT_DEFINED_VGA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [105 x i8] c"The device %x is VGA compatible and as is not supported for hot plugging. Please choose another device.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCI_CLASS_DISPLAY_VGA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [80 x i8] c"The device %x is not supported for hot plugging. Please choose another device.\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"single device case.... vendor id = %x, hdr_type = %x, class = %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"was not able to configure devfunc %x on bus %x.\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"was not able to configure devfunc %x on bus %x...bailing out\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [106 x i8] c"This %x is not PCI-to-PCI bridge, and as is not supported for hot-plugging.  Please insert another card.\0A\00", align 1
@.str.11 = private unnamed_addr constant [80 x i8] c"You chose to insert Single Bridge, or nested bridges, this is not supported...\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Bus %x, devfunc %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"was not able to hot-add PPB properly.\0A\00", align 1
@PCI_SECONDARY_BUS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"class now is %x\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"cur_func->busno b4 configure_bridge is %x\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"cur_func->busno = %x, device = %x, function = %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"after configuring bridge..., sec_number = %x\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"inside for loop, device is %x\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"MAJOR PROBLEM!!!!, header type not supported? %x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [74 x i8] c"Cannot find any valid devices on the card.  Or unable to read from card.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibmphp_configure_card(%struct.pci_func* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_func*, align 8
  %14 = alloca %struct.pci_func*, align 8
  %15 = alloca %struct.pci_func*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.pci_func* %0, %struct.pci_func** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %21, align 4
  %23 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %24 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %28 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  store %struct.pci_func* %30, %struct.pci_func** %14, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %530, %2
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %533

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @PCI_DEVFN(i32 %35, i32 %36)
  store i32 %37, i32* %22, align 4
  %38 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %39 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmphp_pci_bus, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %45 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %47 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %50 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %53 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51, i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmphp_pci_bus, align 8
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* @PCI_VENDOR_ID, align 4
  %59 = call i32 @pci_bus_read_config_word(%struct.TYPE_5__* %56, i32 %57, i32 %58, i64* %6)
  %60 = load i64, i64* %6, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @PCI_VENDOR_ID_NOTVALID, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %529

66:                                               ; preds = %34
  %67 = load i64, i64* %6, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %21, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %21, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmphp_pci_bus, align 8
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* @PCI_HEADER_TYPE, align 4
  %75 = call i32 @pci_bus_read_config_byte(%struct.TYPE_5__* %72, i32 %73, i32 %74, i32* %9)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmphp_pci_bus, align 8
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %79 = call i32 @pci_bus_read_config_dword(%struct.TYPE_5__* %76, i32 %77, i32 %78, i32* %7)
  %80 = load i32, i32* %7, align 4
  %81 = ashr i32 %80, 24
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = ashr i32 %86, 8
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @PCI_CLASS_NOT_DEFINED_VGA, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %66
  %92 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %93 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %626

98:                                               ; preds = %66
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @PCI_CLASS_DISPLAY_VGA, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %104 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %626

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  switch i32 %111, label %523 [
    i32 128, label %112
    i32 129, label %136
    i32 130, label %194
    i32 131, label %377
  ]

112:                                              ; preds = %110
  %113 = load i64, i64* %6, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 %114, i32 %115, i32 %116)
  %118 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @assign_alt_irq(%struct.pci_func* %118, i32 %119)
  %121 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %122 = call i32 @configure_device(%struct.pci_func* %121)
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %112
  %126 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %127 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %130 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %128, i32 %131)
  store i32 6, i32* %19, align 4
  br label %541

133:                                              ; preds = %112
  %134 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %135 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %134, i32 0, i32 7
  store %struct.pci_func* null, %struct.pci_func** %135, align 8
  store i32 8, i32* %12, align 4
  br label %528

136:                                              ; preds = %110
  %137 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @assign_alt_irq(%struct.pci_func* %137, i32 %138)
  %140 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %141 = call i32 @configure_device(%struct.pci_func* %140)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %136
  %145 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %146 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %149 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 %147, i32 %150)
  store i32 6, i32* %19, align 4
  br label %541

152:                                              ; preds = %136
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call %struct.pci_func* @kzalloc(i32 64, i32 %153)
  store %struct.pci_func* %154, %struct.pci_func** %13, align 8
  %155 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %156 = icmp ne %struct.pci_func* %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %626

160:                                              ; preds = %152
  %161 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %162 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %165 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %168 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %170 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %171 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %170, i32 0, i32 7
  store %struct.pci_func* %169, %struct.pci_func** %171, align 8
  %172 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  store %struct.pci_func* %172, %struct.pci_func** %14, align 8
  store i32 0, i32* %18, align 4
  br label %173

173:                                              ; preds = %190, %160
  %174 = load i32, i32* %18, align 4
  %175 = icmp slt i32 %174, 4
  br i1 %175, label %176, label %193

176:                                              ; preds = %173
  %177 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %178 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %177, i32 0, i32 8
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %185 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %184, i32 0, i32 8
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %18, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %183, i32* %189, align 4
  br label %190

190:                                              ; preds = %176
  %191 = load i32, i32* %18, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %18, align 4
  br label %173

193:                                              ; preds = %173
  br label %528

194:                                              ; preds = %110
  %195 = load i32, i32* %7, align 4
  %196 = ashr i32 %195, 8
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %194
  %201 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %202 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.10, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* @ENODEV, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  br label %626

207:                                              ; preds = %194
  %208 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @assign_alt_irq(%struct.pci_func* %208, i32 %209)
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @configure_bridge(%struct.pci_func** %14, i32 %211)
  store i32 %212, i32* %16, align 4
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* @ENODEV, align 4
  %215 = sub nsw i32 0, %214
  %216 = icmp eq i32 %213, %215
  br i1 %216, label %217, label %227

217:                                              ; preds = %207
  %218 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.11, i64 0, i64 0))
  %219 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %220 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %223 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %221, i32 %224)
  %226 = load i32, i32* %16, align 4
  store i32 %226, i32* %3, align 4
  br label %626

227:                                              ; preds = %207
  %228 = load i32, i32* %16, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %232 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %233 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %232, i32 0, i32 3
  store i32 1, i32* %233, align 4
  store i32 2, i32* %19, align 4
  br label %541

234:                                              ; preds = %227
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmphp_pci_bus, align 8
  %236 = load i32, i32* %22, align 4
  %237 = load i32, i32* @PCI_SECONDARY_BUS, align 4
  %238 = call i32 @pci_bus_read_config_byte(%struct.TYPE_5__* %235, i32 %236, i32 %237, i32* %11)
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %239

239:                                              ; preds = %320, %234
  %240 = load i32, i32* %17, align 4
  %241 = icmp slt i32 %240, 32
  br i1 %241, label %242, label %323

242:                                              ; preds = %239
  %243 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %244 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %243, i32 0, i32 9
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %319

251:                                              ; preds = %242
  %252 = load i32, i32* @GFP_KERNEL, align 4
  %253 = call %struct.pci_func* @kzalloc(i32 64, i32 %252)
  store %struct.pci_func* %253, %struct.pci_func** %13, align 8
  %254 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %255 = icmp ne %struct.pci_func* %254, null
  br i1 %255, label %259, label %256

256:                                              ; preds = %251
  %257 = load i32, i32* @ENOMEM, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %3, align 4
  br label %626

259:                                              ; preds = %251
  %260 = load i32, i32* %11, align 4
  %261 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %262 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  %263 = load i32, i32* %17, align 4
  %264 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %265 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  store i32 0, i32* %18, align 4
  br label %266

266:                                              ; preds = %283, %259
  %267 = load i32, i32* %18, align 4
  %268 = icmp slt i32 %267, 4
  br i1 %268, label %269, label %286

269:                                              ; preds = %266
  %270 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %271 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %270, i32 0, i32 8
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %18, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %278 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %277, i32 0, i32 8
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %18, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 %276, i32* %282, align 4
  br label %283

283:                                              ; preds = %269
  %284 = load i32, i32* %18, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %18, align 4
  br label %266

286:                                              ; preds = %266
  %287 = load i32, i32* %20, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %305

289:                                              ; preds = %286
  %290 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  store %struct.pci_func* %290, %struct.pci_func** %15, align 8
  br label %291

291:                                              ; preds = %297, %289
  %292 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %293 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %292, i32 0, i32 7
  %294 = load %struct.pci_func*, %struct.pci_func** %293, align 8
  %295 = icmp ne %struct.pci_func* %294, null
  br i1 %295, label %296, label %301

296:                                              ; preds = %291
  br label %297

297:                                              ; preds = %296
  %298 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %299 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %298, i32 0, i32 7
  %300 = load %struct.pci_func*, %struct.pci_func** %299, align 8
  store %struct.pci_func* %300, %struct.pci_func** %15, align 8
  br label %291

301:                                              ; preds = %291
  %302 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %303 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %304 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %303, i32 0, i32 7
  store %struct.pci_func* %302, %struct.pci_func** %304, align 8
  br label %309

305:                                              ; preds = %286
  %306 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %307 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %308 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %307, i32 0, i32 7
  store %struct.pci_func* %306, %struct.pci_func** %308, align 8
  br label %309

309:                                              ; preds = %305, %301
  %310 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %311 = load i32, i32* %5, align 4
  %312 = call i32 @ibmphp_configure_card(%struct.pci_func* %310, i32 %311)
  store i32 %312, i32* %16, align 4
  %313 = load i32, i32* %16, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %309
  %316 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %317 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %316, i32 0, i32 3
  store i32 1, i32* %317, align 4
  store i32 2, i32* %19, align 4
  br label %541

318:                                              ; preds = %309
  store i32 1, i32* %20, align 4
  br label %319

319:                                              ; preds = %318, %242
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %17, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %17, align 4
  br label %239

323:                                              ; preds = %239
  %324 = load i32, i32* @GFP_KERNEL, align 4
  %325 = call %struct.pci_func* @kzalloc(i32 64, i32 %324)
  store %struct.pci_func* %325, %struct.pci_func** %13, align 8
  %326 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %327 = icmp ne %struct.pci_func* %326, null
  br i1 %327, label %331, label %328

328:                                              ; preds = %323
  %329 = load i32, i32* @ENOMEM, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %3, align 4
  br label %626

331:                                              ; preds = %323
  %332 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %333 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %336 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  %337 = load i32, i32* %10, align 4
  %338 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %339 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 4
  store i32 0, i32* %18, align 4
  br label %340

340:                                              ; preds = %357, %331
  %341 = load i32, i32* %18, align 4
  %342 = icmp slt i32 %341, 4
  br i1 %342, label %343, label %360

343:                                              ; preds = %340
  %344 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %345 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %344, i32 0, i32 8
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %18, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %352 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %351, i32 0, i32 8
  %353 = load i32*, i32** %352, align 8
  %354 = load i32, i32* %18, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  store i32 %350, i32* %356, align 4
  br label %357

357:                                              ; preds = %343
  %358 = load i32, i32* %18, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %18, align 4
  br label %340

360:                                              ; preds = %340
  %361 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  store %struct.pci_func* %361, %struct.pci_func** %15, align 8
  br label %362

362:                                              ; preds = %368, %360
  %363 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %364 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %363, i32 0, i32 7
  %365 = load %struct.pci_func*, %struct.pci_func** %364, align 8
  %366 = icmp ne %struct.pci_func* %365, null
  br i1 %366, label %367, label %372

367:                                              ; preds = %362
  br label %368

368:                                              ; preds = %367
  %369 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %370 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %369, i32 0, i32 7
  %371 = load %struct.pci_func*, %struct.pci_func** %370, align 8
  store %struct.pci_func* %371, %struct.pci_func** %15, align 8
  br label %362

372:                                              ; preds = %362
  %373 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %374 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %375 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %374, i32 0, i32 7
  store %struct.pci_func* %373, %struct.pci_func** %375, align 8
  %376 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  store %struct.pci_func* %376, %struct.pci_func** %14, align 8
  br label %528

377:                                              ; preds = %110
  %378 = load i32, i32* %7, align 4
  %379 = ashr i32 %378, 8
  store i32 %379, i32* %7, align 4
  %380 = load i32, i32* %7, align 4
  %381 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %380)
  %382 = load i32, i32* %7, align 4
  %383 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %384 = icmp ne i32 %382, %383
  br i1 %384, label %385, label %392

385:                                              ; preds = %377
  %386 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %387 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.10, i64 0, i64 0), i32 %388)
  %390 = load i32, i32* @ENODEV, align 4
  %391 = sub nsw i32 0, %390
  store i32 %391, i32* %3, align 4
  br label %626

392:                                              ; preds = %377
  %393 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %394 = load i32, i32* %8, align 4
  %395 = call i32 @assign_alt_irq(%struct.pci_func* %393, i32 %394)
  %396 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %397 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 %398)
  %400 = load i32, i32* %5, align 4
  %401 = call i32 @configure_bridge(%struct.pci_func** %14, i32 %400)
  store i32 %401, i32* %16, align 4
  %402 = load i32, i32* %16, align 4
  %403 = load i32, i32* @ENODEV, align 4
  %404 = sub nsw i32 0, %403
  %405 = icmp eq i32 %402, %404
  br i1 %405, label %406, label %416

406:                                              ; preds = %392
  %407 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.11, i64 0, i64 0))
  %408 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %409 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %412 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %410, i32 %413)
  %415 = load i32, i32* %16, align 4
  store i32 %415, i32* %3, align 4
  br label %626

416:                                              ; preds = %392
  %417 = load i32, i32* %16, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %423

419:                                              ; preds = %416
  %420 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %421 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %420, i32 0, i32 3
  store i32 1, i32* %421, align 4
  %422 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  store i32 2, i32* %19, align 4
  br label %541

423:                                              ; preds = %416
  %424 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %425 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* %10, align 4
  %428 = load i32, i32* %12, align 4
  %429 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0), i32 %426, i32 %427, i32 %428)
  %430 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmphp_pci_bus, align 8
  %431 = load i32, i32* %22, align 4
  %432 = load i32, i32* @PCI_SECONDARY_BUS, align 4
  %433 = call i32 @pci_bus_read_config_byte(%struct.TYPE_5__* %430, i32 %431, i32 %432, i32* %11)
  %434 = load i32, i32* %11, align 4
  %435 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0), i32 %434)
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %436

436:                                              ; preds = %519, %423
  %437 = load i32, i32* %17, align 4
  %438 = icmp slt i32 %437, 32
  br i1 %438, label %439, label %522

439:                                              ; preds = %436
  %440 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %441 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %440, i32 0, i32 9
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* %17, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %518

448:                                              ; preds = %439
  %449 = load i32, i32* %17, align 4
  %450 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %449)
  %451 = load i32, i32* @GFP_KERNEL, align 4
  %452 = call %struct.pci_func* @kzalloc(i32 64, i32 %451)
  store %struct.pci_func* %452, %struct.pci_func** %13, align 8
  %453 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %454 = icmp ne %struct.pci_func* %453, null
  br i1 %454, label %458, label %455

455:                                              ; preds = %448
  %456 = load i32, i32* @ENOMEM, align 4
  %457 = sub nsw i32 0, %456
  store i32 %457, i32* %3, align 4
  br label %626

458:                                              ; preds = %448
  %459 = load i32, i32* %11, align 4
  %460 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %461 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %460, i32 0, i32 0
  store i32 %459, i32* %461, align 8
  %462 = load i32, i32* %17, align 4
  %463 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %464 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %463, i32 0, i32 1
  store i32 %462, i32* %464, align 4
  store i32 0, i32* %18, align 4
  br label %465

465:                                              ; preds = %482, %458
  %466 = load i32, i32* %18, align 4
  %467 = icmp slt i32 %466, 4
  br i1 %467, label %468, label %485

468:                                              ; preds = %465
  %469 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %470 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %469, i32 0, i32 8
  %471 = load i32*, i32** %470, align 8
  %472 = load i32, i32* %18, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %477 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %476, i32 0, i32 8
  %478 = load i32*, i32** %477, align 8
  %479 = load i32, i32* %18, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %478, i64 %480
  store i32 %475, i32* %481, align 4
  br label %482

482:                                              ; preds = %468
  %483 = load i32, i32* %18, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %18, align 4
  br label %465

485:                                              ; preds = %465
  %486 = load i32, i32* %20, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %504

488:                                              ; preds = %485
  %489 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  store %struct.pci_func* %489, %struct.pci_func** %15, align 8
  br label %490

490:                                              ; preds = %496, %488
  %491 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %492 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %491, i32 0, i32 7
  %493 = load %struct.pci_func*, %struct.pci_func** %492, align 8
  %494 = icmp ne %struct.pci_func* %493, null
  br i1 %494, label %495, label %500

495:                                              ; preds = %490
  br label %496

496:                                              ; preds = %495
  %497 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %498 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %497, i32 0, i32 7
  %499 = load %struct.pci_func*, %struct.pci_func** %498, align 8
  store %struct.pci_func* %499, %struct.pci_func** %15, align 8
  br label %490

500:                                              ; preds = %490
  %501 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %502 = load %struct.pci_func*, %struct.pci_func** %15, align 8
  %503 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %502, i32 0, i32 7
  store %struct.pci_func* %501, %struct.pci_func** %503, align 8
  br label %508

504:                                              ; preds = %485
  %505 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %506 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %507 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %506, i32 0, i32 7
  store %struct.pci_func* %505, %struct.pci_func** %507, align 8
  br label %508

508:                                              ; preds = %504, %500
  %509 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  %510 = load i32, i32* %5, align 4
  %511 = call i32 @ibmphp_configure_card(%struct.pci_func* %509, i32 %510)
  store i32 %511, i32* %16, align 4
  %512 = load i32, i32* %16, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %517

514:                                              ; preds = %508
  %515 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %516 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %515, i32 0, i32 3
  store i32 1, i32* %516, align 4
  store i32 2, i32* %19, align 4
  br label %541

517:                                              ; preds = %508
  store i32 1, i32* %20, align 4
  br label %518

518:                                              ; preds = %517, %439
  br label %519

519:                                              ; preds = %518
  %520 = load i32, i32* %17, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %17, align 4
  br label %436

522:                                              ; preds = %436
  store i32 8, i32* %12, align 4
  br label %528

523:                                              ; preds = %110
  %524 = load i32, i32* %9, align 4
  %525 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i32 %524)
  %526 = load i32, i32* @ENXIO, align 4
  %527 = sub nsw i32 0, %526
  store i32 %527, i32* %3, align 4
  br label %626

528:                                              ; preds = %522, %372, %193, %133
  br label %529

529:                                              ; preds = %528, %34
  br label %530

530:                                              ; preds = %529
  %531 = load i32, i32* %12, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %12, align 4
  br label %31

533:                                              ; preds = %31
  %534 = load i32, i32* %21, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %540, label %536

536:                                              ; preds = %533
  %537 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.20, i64 0, i64 0))
  %538 = load i32, i32* @ENODEV, align 4
  %539 = sub nsw i32 0, %538
  store i32 %539, i32* %3, align 4
  br label %626

540:                                              ; preds = %533
  store i32 0, i32* %3, align 4
  br label %626

541:                                              ; preds = %514, %419, %315, %230, %144, %125
  store i32 0, i32* %17, align 4
  br label %542

542:                                              ; preds = %621, %541
  %543 = load i32, i32* %17, align 4
  %544 = load i32, i32* %19, align 4
  %545 = icmp slt i32 %543, %544
  br i1 %545, label %546, label %624

546:                                              ; preds = %542
  %547 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %548 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %547, i32 0, i32 6
  %549 = load i32**, i32*** %548, align 8
  %550 = load i32, i32* %17, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32*, i32** %549, i64 %551
  %553 = load i32*, i32** %552, align 8
  %554 = icmp ne i32* %553, null
  br i1 %554, label %555, label %570

555:                                              ; preds = %546
  %556 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %557 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %556, i32 0, i32 6
  %558 = load i32**, i32*** %557, align 8
  %559 = load i32, i32* %17, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32*, i32** %558, i64 %560
  %562 = load i32*, i32** %561, align 8
  %563 = call i32 @ibmphp_remove_resource(i32* %562)
  %564 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %565 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %564, i32 0, i32 6
  %566 = load i32**, i32*** %565, align 8
  %567 = load i32, i32* %17, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i32*, i32** %566, i64 %568
  store i32* null, i32** %569, align 8
  br label %620

570:                                              ; preds = %546
  %571 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %572 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %571, i32 0, i32 5
  %573 = load i32**, i32*** %572, align 8
  %574 = load i32, i32* %17, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i32*, i32** %573, i64 %575
  %577 = load i32*, i32** %576, align 8
  %578 = icmp ne i32* %577, null
  br i1 %578, label %579, label %594

579:                                              ; preds = %570
  %580 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %581 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %580, i32 0, i32 5
  %582 = load i32**, i32*** %581, align 8
  %583 = load i32, i32* %17, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds i32*, i32** %582, i64 %584
  %586 = load i32*, i32** %585, align 8
  %587 = call i32 @ibmphp_remove_resource(i32* %586)
  %588 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %589 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %588, i32 0, i32 5
  %590 = load i32**, i32*** %589, align 8
  %591 = load i32, i32* %17, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32*, i32** %590, i64 %592
  store i32* null, i32** %593, align 8
  br label %619

594:                                              ; preds = %570
  %595 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %596 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %595, i32 0, i32 4
  %597 = load i32**, i32*** %596, align 8
  %598 = load i32, i32* %17, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i32*, i32** %597, i64 %599
  %601 = load i32*, i32** %600, align 8
  %602 = icmp ne i32* %601, null
  br i1 %602, label %603, label %618

603:                                              ; preds = %594
  %604 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %605 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %604, i32 0, i32 4
  %606 = load i32**, i32*** %605, align 8
  %607 = load i32, i32* %17, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i32*, i32** %606, i64 %608
  %610 = load i32*, i32** %609, align 8
  %611 = call i32 @ibmphp_remove_resource(i32* %610)
  %612 = load %struct.pci_func*, %struct.pci_func** %14, align 8
  %613 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %612, i32 0, i32 4
  %614 = load i32**, i32*** %613, align 8
  %615 = load i32, i32* %17, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i32*, i32** %614, i64 %616
  store i32* null, i32** %617, align 8
  br label %618

618:                                              ; preds = %603, %594
  br label %619

619:                                              ; preds = %618, %579
  br label %620

620:                                              ; preds = %619, %555
  br label %621

621:                                              ; preds = %620
  %622 = load i32, i32* %17, align 4
  %623 = add nsw i32 %622, 1
  store i32 %623, i32* %17, align 4
  br label %542

624:                                              ; preds = %542
  %625 = load i32, i32* %16, align 4
  store i32 %625, i32* %3, align 4
  br label %626

626:                                              ; preds = %624, %540, %536, %523, %455, %406, %385, %328, %256, %217, %200, %157, %102, %91
  %627 = load i32, i32* %3, align 4
  ret i32 %627
}

declare dso_local i32 @debug(i8*, i32, ...) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_bus_read_config_word(%struct.TYPE_5__*, i32, i32, i64*) #1

declare dso_local i32 @pci_bus_read_config_byte(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @pci_bus_read_config_dword(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @assign_alt_irq(%struct.pci_func*, i32) #1

declare dso_local i32 @configure_device(%struct.pci_func*) #1

declare dso_local %struct.pci_func* @kzalloc(i32, i32) #1

declare dso_local i32 @configure_bridge(%struct.pci_func**, i32) #1

declare dso_local i32 @ibmphp_remove_resource(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
