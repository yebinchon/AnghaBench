; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_setup_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.resource*, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.resource = type { i8* }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.pci_bus_region = type { i32, i32 }

@pci_bus_type = common dso_local global i32 0, align 4
@pci_channel_io_normal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%04x:%02x:%02x.%d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"[%04x:%04x] type %02x class %#08x\0A\00", align 1
@pci_early_dump = common dso_local global i64 0, align 8
@PCI_UNKNOWN = common dso_local global i32 0, align 4
@pci_fixup_early = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"device has non-compliant BARs; disabling IO/MEM decoding\0A\00", align 1
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS = common dso_local global i32 0, align 4
@PCI_CLASS_STORAGE_IDE = common dso_local global i32 0, align 4
@PCI_CLASS_PROG = common dso_local global i32 0, align 4
@LEGACY_IO_RESOURCE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"legacy IDE quirk: reg 0x10: %pR\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"legacy IDE quirk: reg 0x14: %pR\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"legacy IDE quirk: reg 0x18: %pR\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"legacy IDE quirk: reg 0x1c: %pR\0A\00", align 1
@PCI_ROM_ADDRESS1 = common dso_local global i32 0, align 4
@PCI_CAP_ID_SSVID = common dso_local global i32 0, align 4
@PCI_SSVID_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_SSVID_DEVICE_ID = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_CARDBUS = common dso_local global i32 0, align 4
@PCI_CB_SUBSYSTEM_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_CB_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"unknown header type %02x, ignoring device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"ignoring class %#08x (doesn't match header type %02x)\0A\00", align 1
@PCI_CLASS_NOT_DEFINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_setup_device(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_bus_region, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call i32 @pci_hdr_type(%struct.pci_dev* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 19
  store i32 %17, i32* %19, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 17
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 17
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32* @pci_bus_type, i32** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 127
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @pci_channel_io_normal, align 4
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 18
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = call i32 @set_pcie_port_type(%struct.pci_dev* %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = call i32 @pci_dev_assign_slot(%struct.pci_dev* %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 2
  store i32 -1, i32* %51, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 17
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @pci_domain_nr(%struct.TYPE_4__* %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 16
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @PCI_SLOT(i32 %65)
  %67 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 16
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @PCI_FUNC(i32 %69)
  %71 = call i32 @dev_set_name(%struct.TYPE_5__* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %62, i32 %66, i32 %70)
  %72 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %73 = call i32 @pci_class(%struct.pci_dev* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 255
  %76 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %4, align 4
  %79 = ashr i32 %78, 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %83 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 15
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 14
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %88, i32 %91, i32 %94)
  %96 = load i64, i64* @pci_early_dump, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %1
  %99 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %100 = call i32 @early_dump_pci_device(%struct.pci_dev* %99)
  br label %101

101:                                              ; preds = %98, %1
  %102 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %103 = call i32 @pci_cfg_space_size(%struct.pci_dev* %102)
  %104 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 13
  store i32 %103, i32* %105, align 4
  %106 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %107 = call i32 @set_pcie_thunderbolt(%struct.pci_dev* %106)
  %108 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %109 = call i32 @set_pcie_untrusted(%struct.pci_dev* %108)
  %110 = load i32, i32* @PCI_UNKNOWN, align 4
  %111 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 12
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @pci_fixup_early, align 4
  %114 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %115 = call i32 @pci_fixup_device(i32 %113, %struct.pci_dev* %114)
  %116 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = ashr i32 %118, 8
  store i32 %119, i32* %4, align 4
  %120 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 11
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %150

124:                                              ; preds = %101
  %125 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %126 = load i32, i32* @PCI_COMMAND, align 4
  %127 = call i32 @pci_read_config_word(%struct.pci_dev* %125, i32 %126, i32* %5)
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @PCI_COMMAND_IO, align 4
  %130 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %124
  %135 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %136 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %135, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i32, i32* @PCI_COMMAND_IO, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %5, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %5, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %5, align 4
  %145 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %146 = load i32, i32* @PCI_COMMAND, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @pci_write_config_word(%struct.pci_dev* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %134, %124
  br label %150

150:                                              ; preds = %149, %101
  %151 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %152 = call i32 @pci_intx_mask_broken(%struct.pci_dev* %151)
  %153 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 10
  store i32 %152, i32* %154, align 8
  %155 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %156 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  switch i32 %157, label %320 [
    i32 128, label %158
    i32 130, label %261
    i32 129, label %300
  ]

158:                                              ; preds = %150
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %328

163:                                              ; preds = %158
  %164 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %165 = call i32 @pci_read_irq(%struct.pci_dev* %164)
  %166 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %167 = load i32, i32* @PCI_ROM_ADDRESS, align 4
  %168 = call i32 @pci_read_bases(%struct.pci_dev* %166, i32 6, i32 %167)
  %169 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %170 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %171 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %170, i32 0, i32 5
  %172 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %172, i32 0, i32 6
  %174 = call i32 @pci_subsystem_ids(%struct.pci_dev* %169, i32* %171, i32* %173)
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @PCI_CLASS_STORAGE_IDE, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %260

178:                                              ; preds = %163
  %179 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %180 = load i32, i32* @PCI_CLASS_PROG, align 4
  %181 = call i32 @pci_read_config_byte(%struct.pci_dev* %179, i32 %180, i32* %10)
  %182 = load i32, i32* %10, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %220

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %8, i32 0, i32 0
  store i32 496, i32* %186, align 4
  %187 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %8, i32 0, i32 1
  store i32 503, i32* %187, align 4
  %188 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %189 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %188, i32 0, i32 9
  %190 = load %struct.resource*, %struct.resource** %189, align 8
  %191 = getelementptr inbounds %struct.resource, %struct.resource* %190, i64 0
  store %struct.resource* %191, %struct.resource** %9, align 8
  %192 = load i8*, i8** @LEGACY_IO_RESOURCE, align 8
  %193 = load %struct.resource*, %struct.resource** %9, align 8
  %194 = getelementptr inbounds %struct.resource, %struct.resource* %193, i32 0, i32 0
  store i8* %192, i8** %194, align 8
  %195 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %196 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %195, i32 0, i32 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = load %struct.resource*, %struct.resource** %9, align 8
  %199 = call i32 @pcibios_bus_to_resource(%struct.TYPE_4__* %197, %struct.resource* %198, %struct.pci_bus_region* %8)
  %200 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %201 = load %struct.resource*, %struct.resource** %9, align 8
  %202 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %200, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct.resource* %201)
  %203 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %8, i32 0, i32 0
  store i32 1014, i32* %203, align 4
  %204 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %8, i32 0, i32 1
  store i32 1014, i32* %204, align 4
  %205 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %206 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %205, i32 0, i32 9
  %207 = load %struct.resource*, %struct.resource** %206, align 8
  %208 = getelementptr inbounds %struct.resource, %struct.resource* %207, i64 1
  store %struct.resource* %208, %struct.resource** %9, align 8
  %209 = load i8*, i8** @LEGACY_IO_RESOURCE, align 8
  %210 = load %struct.resource*, %struct.resource** %9, align 8
  %211 = getelementptr inbounds %struct.resource, %struct.resource* %210, i32 0, i32 0
  store i8* %209, i8** %211, align 8
  %212 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %213 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %212, i32 0, i32 8
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = load %struct.resource*, %struct.resource** %9, align 8
  %216 = call i32 @pcibios_bus_to_resource(%struct.TYPE_4__* %214, %struct.resource* %215, %struct.pci_bus_region* %8)
  %217 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %218 = load %struct.resource*, %struct.resource** %9, align 8
  %219 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %217, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), %struct.resource* %218)
  br label %220

220:                                              ; preds = %185, %178
  %221 = load i32, i32* %10, align 4
  %222 = and i32 %221, 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %259

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %8, i32 0, i32 0
  store i32 368, i32* %225, align 4
  %226 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %8, i32 0, i32 1
  store i32 375, i32* %226, align 4
  %227 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %228 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %227, i32 0, i32 9
  %229 = load %struct.resource*, %struct.resource** %228, align 8
  %230 = getelementptr inbounds %struct.resource, %struct.resource* %229, i64 2
  store %struct.resource* %230, %struct.resource** %9, align 8
  %231 = load i8*, i8** @LEGACY_IO_RESOURCE, align 8
  %232 = load %struct.resource*, %struct.resource** %9, align 8
  %233 = getelementptr inbounds %struct.resource, %struct.resource* %232, i32 0, i32 0
  store i8* %231, i8** %233, align 8
  %234 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %235 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %234, i32 0, i32 8
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = load %struct.resource*, %struct.resource** %9, align 8
  %238 = call i32 @pcibios_bus_to_resource(%struct.TYPE_4__* %236, %struct.resource* %237, %struct.pci_bus_region* %8)
  %239 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %240 = load %struct.resource*, %struct.resource** %9, align 8
  %241 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %239, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), %struct.resource* %240)
  %242 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %8, i32 0, i32 0
  store i32 886, i32* %242, align 4
  %243 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %8, i32 0, i32 1
  store i32 886, i32* %243, align 4
  %244 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %245 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %244, i32 0, i32 9
  %246 = load %struct.resource*, %struct.resource** %245, align 8
  %247 = getelementptr inbounds %struct.resource, %struct.resource* %246, i64 3
  store %struct.resource* %247, %struct.resource** %9, align 8
  %248 = load i8*, i8** @LEGACY_IO_RESOURCE, align 8
  %249 = load %struct.resource*, %struct.resource** %9, align 8
  %250 = getelementptr inbounds %struct.resource, %struct.resource* %249, i32 0, i32 0
  store i8* %248, i8** %250, align 8
  %251 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %252 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %251, i32 0, i32 8
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = load %struct.resource*, %struct.resource** %9, align 8
  %255 = call i32 @pcibios_bus_to_resource(%struct.TYPE_4__* %253, %struct.resource* %254, %struct.pci_bus_region* %8)
  %256 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %257 = load %struct.resource*, %struct.resource** %9, align 8
  %258 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), %struct.resource* %257)
  br label %259

259:                                              ; preds = %224, %220
  br label %260

260:                                              ; preds = %259, %163
  br label %341

261:                                              ; preds = %150
  %262 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %263 = call i32 @pci_read_irq(%struct.pci_dev* %262)
  %264 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %265 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, 255
  %268 = icmp eq i32 %267, 1
  %269 = zext i1 %268 to i32
  %270 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %271 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %270, i32 0, i32 7
  store i32 %269, i32* %271, align 4
  %272 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %273 = load i32, i32* @PCI_ROM_ADDRESS1, align 4
  %274 = call i32 @pci_read_bases(%struct.pci_dev* %272, i32 2, i32 %273)
  %275 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %276 = call i32 @pci_read_bridge_windows(%struct.pci_dev* %275)
  %277 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %278 = call i32 @set_pcie_hotplug_bridge(%struct.pci_dev* %277)
  %279 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %280 = load i32, i32* @PCI_CAP_ID_SSVID, align 4
  %281 = call i32 @pci_find_capability(%struct.pci_dev* %279, i32 %280)
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* %7, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %299

284:                                              ; preds = %261
  %285 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @PCI_SSVID_VENDOR_ID, align 4
  %288 = add nsw i32 %286, %287
  %289 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %290 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %289, i32 0, i32 5
  %291 = call i32 @pci_read_config_word(%struct.pci_dev* %285, i32 %288, i32* %290)
  %292 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* @PCI_SSVID_DEVICE_ID, align 4
  %295 = add nsw i32 %293, %294
  %296 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %297 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %296, i32 0, i32 6
  %298 = call i32 @pci_read_config_word(%struct.pci_dev* %292, i32 %295, i32* %297)
  br label %299

299:                                              ; preds = %284, %261
  br label %341

300:                                              ; preds = %150
  %301 = load i32, i32* %4, align 4
  %302 = load i32, i32* @PCI_CLASS_BRIDGE_CARDBUS, align 4
  %303 = icmp ne i32 %301, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %300
  br label %328

305:                                              ; preds = %300
  %306 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %307 = call i32 @pci_read_irq(%struct.pci_dev* %306)
  %308 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %309 = call i32 @pci_read_bases(%struct.pci_dev* %308, i32 1, i32 0)
  %310 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %311 = load i32, i32* @PCI_CB_SUBSYSTEM_VENDOR_ID, align 4
  %312 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %313 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %312, i32 0, i32 5
  %314 = call i32 @pci_read_config_word(%struct.pci_dev* %310, i32 %311, i32* %313)
  %315 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %316 = load i32, i32* @PCI_CB_SUBSYSTEM_ID, align 4
  %317 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %318 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %317, i32 0, i32 6
  %319 = call i32 @pci_read_config_word(%struct.pci_dev* %315, i32 %316, i32* %318)
  br label %341

320:                                              ; preds = %150
  %321 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %322 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %323 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_err(%struct.pci_dev* %321, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %324)
  %326 = load i32, i32* @EIO, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %2, align 4
  br label %342

328:                                              ; preds = %304, %162
  %329 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %330 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %331 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %334 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_err(%struct.pci_dev* %329, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %332, i32 %335)
  %337 = load i32, i32* @PCI_CLASS_NOT_DEFINED, align 4
  %338 = shl i32 %337, 8
  %339 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %340 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %339, i32 0, i32 4
  store i32 %338, i32* %340, align 8
  br label %341

341:                                              ; preds = %328, %305, %299, %260
  store i32 0, i32* %2, align 4
  br label %342

342:                                              ; preds = %341, %320
  %343 = load i32, i32* %2, align 4
  ret i32 %343
}

declare dso_local i32 @pci_hdr_type(%struct.pci_dev*) #1

declare dso_local i32 @set_pcie_port_type(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_assign_slot(%struct.pci_dev*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_4__*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_class(%struct.pci_dev*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, ...) #1

declare dso_local i32 @early_dump_pci_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_cfg_space_size(%struct.pci_dev*) #1

declare dso_local i32 @set_pcie_thunderbolt(%struct.pci_dev*) #1

declare dso_local i32 @set_pcie_untrusted(%struct.pci_dev*) #1

declare dso_local i32 @pci_fixup_device(i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_intx_mask_broken(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_irq(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_bases(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_subsystem_ids(%struct.pci_dev*, i32*, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcibios_bus_to_resource(%struct.TYPE_4__*, %struct.resource*, %struct.pci_bus_region*) #1

declare dso_local i32 @pci_read_bridge_windows(%struct.pci_dev*) #1

declare dso_local i32 @set_pcie_hotplug_bridge(%struct.pci_dev*) #1

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
