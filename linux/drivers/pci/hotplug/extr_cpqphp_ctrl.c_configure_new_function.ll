; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_configure_new_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_configure_new_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.pci_bus* }
%struct.pci_bus = type { i32 }
%struct.pci_func = type { i32, i32, i32, i32, %struct.pci_resource*, %struct.pci_resource*, %struct.pci_resource*, %struct.pci_resource*, i64, i64 }
%struct.pci_resource = type { i32, i32, %struct.pci_resource* }
%struct.resource_lists = type { %struct.pci_resource*, %struct.pci_resource*, %struct.pci_resource*, %struct.pci_resource*, %struct.irq_mapping* }
%struct.irq_mapping = type { i32, i32*, i32 }

@PCI_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"set Primary bus = %d\0A\00", align 1
@PCI_PRIMARY_BUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"find ranges of buses to use\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"set Secondary bus = %d\0A\00", align 1
@PCI_SECONDARY_BUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"set subordinate bus = %d\0A\00", align 1
@PCI_SUBORDINATE_BUS = common dso_local global i32 0, align 4
@PCI_SEC_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Setup the IO, memory, and prefetchable windows\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"io_node\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"(base, len, next) (%x, %x, %p)\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"mem_node\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"p_mem_node\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_IO_BASE = common dso_local global i32 0, align 4
@PCI_IO_LIMIT = common dso_local global i32 0, align 4
@PCI_MEMORY_BASE = common dso_local global i32 0, align 4
@PCI_MEMORY_LIMIT = common dso_local global i32 0, align 4
@PCI_PREF_MEMORY_BASE = common dso_local global i32 0, align 4
@PCI_PREF_MEMORY_LIMIT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"configure_new_device rc=0x%x\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_NORMAL = common dso_local global i32 0, align 4
@PCI_BASE_CLASS_DISPLAY = common dso_local global i32 0, align 4
@DEVICE_TYPE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"CND: bus=%d, devfn=%d, offset=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"CND: base = 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"CND:      length = 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Got io_node start = %8.8x, length = %8.8x next (%p)\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"func (%p) io_head (%p)\0A\00", align 1
@NOT_ENOUGH_RESOURCES = common dso_local global i32 0, align 4
@cpqhp_legacy_mode = common dso_local global i64 0, align 8
@PCI_INTERRUPT_PIN = common dso_local global i32 0, align 4
@PCI_BASE_CLASS_STORAGE = common dso_local global i32 0, align 4
@cpqhp_disk_irq = common dso_local global i32 0, align 4
@cpqhp_nic_irq = common dso_local global i32 0, align 4
@PCI_INTERRUPT_LINE = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*, %struct.pci_func*, i32, %struct.resource_lists*)* @configure_new_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_new_function(%struct.controller* %0, %struct.pci_func* %1, i32 %2, %struct.resource_lists* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.controller*, align 8
  %7 = alloca %struct.pci_func*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource_lists*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.pci_resource*, align 8
  %24 = alloca %struct.pci_resource*, align 8
  %25 = alloca %struct.pci_resource*, align 8
  %26 = alloca %struct.pci_resource*, align 8
  %27 = alloca %struct.pci_resource*, align 8
  %28 = alloca %struct.pci_resource*, align 8
  %29 = alloca %struct.pci_resource*, align 8
  %30 = alloca %struct.pci_resource*, align 8
  %31 = alloca %struct.irq_mapping, align 8
  %32 = alloca %struct.pci_func*, align 8
  %33 = alloca %struct.pci_bus*, align 8
  %34 = alloca %struct.resource_lists, align 8
  store %struct.controller* %0, %struct.controller** %6, align 8
  store %struct.pci_func* %1, %struct.pci_func** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.resource_lists* %3, %struct.resource_lists** %9, align 8
  store i32 0, i32* %11, align 4
  %35 = load %struct.controller*, %struct.controller** %6, align 8
  %36 = getelementptr inbounds %struct.controller, %struct.controller* %35, i32 0, i32 0
  %37 = load %struct.pci_bus*, %struct.pci_bus** %36, align 8
  store %struct.pci_bus* %37, %struct.pci_bus** %33, align 8
  %38 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %39 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %42 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %44 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %47 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @PCI_DEVFN(i32 %45, i64 %48)
  store i32 %49, i32* %22, align 4
  %50 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* @PCI_HEADER_TYPE, align 4
  %53 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %50, i32 %51, i32 %52, i32* %12)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %4
  %57 = load i32, i32* %18, align 4
  store i32 %57, i32* %5, align 4
  br label %1346

58:                                               ; preds = %4
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, 127
  %61 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %996

63:                                               ; preds = %58
  %64 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %65 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* @PCI_PRIMARY_BUS, align 4
  %71 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %72 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %68, i32 %69, i32 %70, i32 %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* %18, align 4
  store i32 %78, i32* %5, align 4
  br label %1346

79:                                               ; preds = %63
  %80 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %82 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %81, i32 0, i32 3
  %83 = call %struct.pci_resource* @get_max_resource(%struct.pci_resource** %82, i32 1)
  store %struct.pci_resource* %83, %struct.pci_resource** %26, align 8
  %84 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %85 = icmp ne %struct.pci_resource* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %1346

89:                                               ; preds = %79
  %90 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %91 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %12, align 4
  %93 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %94 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* @PCI_SECONDARY_BUS, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %89
  %105 = load i32, i32* %18, align 4
  store i32 %105, i32* %5, align 4
  br label %1346

106:                                              ; preds = %89
  %107 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %108 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %111 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  %115 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %116 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %119 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %117, %120
  %122 = sub nsw i32 %121, 1
  %123 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* @PCI_SUBORDINATE_BUS, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %124, i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %106
  %132 = load i32, i32* %18, align 4
  store i32 %132, i32* %5, align 4
  br label %1346

133:                                              ; preds = %106
  store i32 64, i32* %12, align 4
  %134 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %135 = load i32, i32* %22, align 4
  %136 = load i32, i32* @PCI_SEC_LATENCY_TIMER, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %134, i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i32, i32* %18, align 4
  store i32 %142, i32* %5, align 4
  br label %1346

143:                                              ; preds = %133
  %144 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %145 = load i32, i32* %22, align 4
  %146 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %5, align 4
  br label %1346

153:                                              ; preds = %143
  store i32 8, i32* %12, align 4
  %154 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %154, i32 %155, i32 %156, i32 %157)
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i32, i32* %18, align 4
  store i32 %162, i32* %5, align 4
  br label %1346

163:                                              ; preds = %153
  %164 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %165 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %164, i32 0, i32 2
  %166 = call %struct.pci_resource* @get_max_resource(%struct.pci_resource** %165, i32 4096)
  store %struct.pci_resource* %166, %struct.pci_resource** %25, align 8
  %167 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %168 = icmp ne %struct.pci_resource* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %163
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %5, align 4
  br label %1346

172:                                              ; preds = %163
  %173 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %174 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %173, i32 0, i32 1
  %175 = call %struct.pci_resource* @get_max_resource(%struct.pci_resource** %174, i32 1048576)
  store %struct.pci_resource* %175, %struct.pci_resource** %23, align 8
  %176 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %177 = icmp ne %struct.pci_resource* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %172
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %5, align 4
  br label %1346

181:                                              ; preds = %172
  %182 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %183 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %182, i32 0, i32 0
  %184 = call %struct.pci_resource* @get_max_resource(%struct.pci_resource** %183, i32 1048576)
  store %struct.pci_resource* %184, %struct.pci_resource** %24, align 8
  %185 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %186 = icmp ne %struct.pci_resource* %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %181
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %5, align 4
  br label %1346

190:                                              ; preds = %181
  %191 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %192 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %193 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %194 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %197 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %200 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %199, i32 0, i32 2
  %201 = load %struct.pci_resource*, %struct.pci_resource** %200, align 8
  %202 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %195, i32 %198, %struct.pci_resource* %201)
  %203 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %204 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %205 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %208 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %211 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %210, i32 0, i32 2
  %212 = load %struct.pci_resource*, %struct.pci_resource** %211, align 8
  %213 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %206, i32 %209, %struct.pci_resource* %212)
  %214 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %215 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %216 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %219 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %222 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %221, i32 0, i32 2
  %223 = load %struct.pci_resource*, %struct.pci_resource** %222, align 8
  %224 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %217, i32 %220, %struct.pci_resource* %223)
  %225 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %226 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %225, i32 0, i32 4
  %227 = load %struct.irq_mapping*, %struct.irq_mapping** %226, align 8
  %228 = icmp ne %struct.irq_mapping* %227, null
  br i1 %228, label %244, label %229

229:                                              ; preds = %190
  %230 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 0
  store i32 0, i32* %230, align 8
  %231 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 0, i32* %233, align 4
  %234 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  store i32 0, i32* %236, align 4
  %237 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  store i32 0, i32* %239, align 4
  %240 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 3
  store i32 0, i32* %242, align 4
  %243 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 2
  store i32 0, i32* %243, align 8
  br label %297

244:                                              ; preds = %190
  %245 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %246 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %245, i32 0, i32 4
  %247 = load %struct.irq_mapping*, %struct.irq_mapping** %246, align 8
  %248 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 0
  store i32 %249, i32* %250, align 8
  %251 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %252 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %251, i32 0, i32 4
  %253 = load %struct.irq_mapping*, %struct.irq_mapping** %252, align 8
  %254 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  store i32 %257, i32* %260, align 4
  %261 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %262 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %261, i32 0, i32 4
  %263 = load %struct.irq_mapping*, %struct.irq_mapping** %262, align 8
  %264 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i32, i32* %266, align 4
  %268 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  store i32 %267, i32* %270, align 4
  %271 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %272 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %271, i32 0, i32 4
  %273 = load %struct.irq_mapping*, %struct.irq_mapping** %272, align 8
  %274 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 2
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  store i32 %277, i32* %280, align 4
  %281 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %282 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %281, i32 0, i32 4
  %283 = load %struct.irq_mapping*, %struct.irq_mapping** %282, align 8
  %284 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 3
  %287 = load i32, i32* %286, align 4
  %288 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 3
  store i32 %287, i32* %290, align 4
  %291 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %292 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %291, i32 0, i32 4
  %293 = load %struct.irq_mapping*, %struct.irq_mapping** %292, align 8
  %294 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 2
  store i32 %295, i32* %296, align 8
  br label %297

297:                                              ; preds = %244, %229
  %298 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %299 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  store %struct.pci_resource* %298, %struct.pci_resource** %299, align 8
  %300 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %301 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 2
  store %struct.pci_resource* %300, %struct.pci_resource** %301, align 8
  %302 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %303 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 1
  store %struct.pci_resource* %302, %struct.pci_resource** %303, align 8
  %304 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %305 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 0
  store %struct.pci_resource* %304, %struct.pci_resource** %305, align 8
  %306 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 4
  store %struct.irq_mapping* %31, %struct.irq_mapping** %306, align 8
  %307 = load i32, i32* @GFP_KERNEL, align 4
  %308 = call %struct.pci_resource* @kmalloc(i32 16, i32 %307)
  store %struct.pci_resource* %308, %struct.pci_resource** %30, align 8
  %309 = load i32, i32* @GFP_KERNEL, align 4
  %310 = call %struct.pci_resource* @kmalloc(i32 16, i32 %309)
  store %struct.pci_resource* %310, %struct.pci_resource** %29, align 8
  %311 = load i32, i32* @GFP_KERNEL, align 4
  %312 = call %struct.pci_resource* @kmalloc(i32 16, i32 %311)
  store %struct.pci_resource* %312, %struct.pci_resource** %27, align 8
  %313 = load i32, i32* @GFP_KERNEL, align 4
  %314 = call %struct.pci_resource* @kmalloc(i32 16, i32 %313)
  store %struct.pci_resource* %314, %struct.pci_resource** %28, align 8
  %315 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %316 = icmp ne %struct.pci_resource* %315, null
  br i1 %316, label %317, label %326

317:                                              ; preds = %297
  %318 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %319 = icmp ne %struct.pci_resource* %318, null
  br i1 %319, label %320, label %326

320:                                              ; preds = %317
  %321 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %322 = icmp ne %struct.pci_resource* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %325 = icmp ne %struct.pci_resource* %324, null
  br i1 %325, label %335, label %326

326:                                              ; preds = %323, %320, %317, %297
  %327 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %328 = call i32 @kfree(%struct.pci_resource* %327)
  %329 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %330 = call i32 @kfree(%struct.pci_resource* %329)
  %331 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %332 = call i32 @kfree(%struct.pci_resource* %331)
  %333 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %334 = call i32 @kfree(%struct.pci_resource* %333)
  store i32 1, i32* %5, align 4
  br label %1346

335:                                              ; preds = %323
  %336 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %337 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %338 = call i32 @memcpy(%struct.pci_resource* %336, %struct.pci_resource* %337, i32 16)
  %339 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %340 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %340, align 8
  %343 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %344 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = sub nsw i32 %345, 1
  store i32 %346, i32* %344, align 4
  %347 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %348 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %347, i32 0, i32 2
  store %struct.pci_resource* null, %struct.pci_resource** %348, align 8
  %349 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %350 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %351 = call i32 @memcpy(%struct.pci_resource* %349, %struct.pci_resource* %350, i32 16)
  %352 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %353 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %352, i32 0, i32 2
  store %struct.pci_resource* null, %struct.pci_resource** %353, align 8
  %354 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %355 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = ashr i32 %356, 8
  store i32 %357, i32* %12, align 4
  %358 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %359 = load i32, i32* %22, align 4
  %360 = load i32, i32* @PCI_IO_BASE, align 4
  %361 = load i32, i32* %12, align 4
  %362 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %358, i32 %359, i32 %360, i32 %361)
  store i32 %362, i32* %18, align 4
  %363 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %364 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %367 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %365, %368
  %370 = sub nsw i32 %369, 1
  %371 = ashr i32 %370, 8
  store i32 %371, i32* %12, align 4
  %372 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %373 = load i32, i32* %22, align 4
  %374 = load i32, i32* @PCI_IO_LIMIT, align 4
  %375 = load i32, i32* %12, align 4
  %376 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %372, i32 %373, i32 %374, i32 %375)
  store i32 %376, i32* %18, align 4
  %377 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %378 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %379 = call i32 @memcpy(%struct.pci_resource* %377, %struct.pci_resource* %378, i32 16)
  %380 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %381 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %380, i32 0, i32 2
  store %struct.pci_resource* null, %struct.pci_resource** %381, align 8
  %382 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %383 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = ashr i32 %384, 16
  store i32 %385, i32* %16, align 4
  %386 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %387 = load i32, i32* %22, align 4
  %388 = load i32, i32* @PCI_MEMORY_BASE, align 4
  %389 = load i32, i32* %16, align 4
  %390 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %386, i32 %387, i32 %388, i32 %389)
  store i32 %390, i32* %18, align 4
  %391 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %392 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %395 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = add nsw i32 %393, %396
  %398 = sub nsw i32 %397, 1
  %399 = ashr i32 %398, 16
  store i32 %399, i32* %16, align 4
  %400 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %401 = load i32, i32* %22, align 4
  %402 = load i32, i32* @PCI_MEMORY_LIMIT, align 4
  %403 = load i32, i32* %16, align 4
  %404 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %400, i32 %401, i32 %402, i32 %403)
  store i32 %404, i32* %18, align 4
  %405 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %406 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %407 = call i32 @memcpy(%struct.pci_resource* %405, %struct.pci_resource* %406, i32 16)
  %408 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %409 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %408, i32 0, i32 2
  store %struct.pci_resource* null, %struct.pci_resource** %409, align 8
  %410 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %411 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = ashr i32 %412, 16
  store i32 %413, i32* %16, align 4
  %414 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %415 = load i32, i32* %22, align 4
  %416 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %417 = load i32, i32* %16, align 4
  %418 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %414, i32 %415, i32 %416, i32 %417)
  store i32 %418, i32* %18, align 4
  %419 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %420 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %423 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = add nsw i32 %421, %424
  %426 = sub nsw i32 %425, 1
  %427 = ashr i32 %426, 16
  store i32 %427, i32* %16, align 4
  %428 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %429 = load i32, i32* %22, align 4
  %430 = load i32, i32* @PCI_PREF_MEMORY_LIMIT, align 4
  %431 = load i32, i32* %16, align 4
  %432 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %428, i32 %429, i32 %430, i32 %431)
  store i32 %432, i32* %18, align 4
  %433 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = add nsw i32 %434, -1
  store i32 %435, i32* %433, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %436

436:                                              ; preds = %498, %335
  %437 = load i32, i32* %13, align 4
  %438 = icmp sle i32 %437, 31
  br i1 %438, label %439, label %443

439:                                              ; preds = %436
  %440 = load i32, i32* %18, align 4
  %441 = icmp ne i32 %440, 0
  %442 = xor i1 %441, true
  br label %443

443:                                              ; preds = %439, %436
  %444 = phi i1 [ false, %436 ], [ %442, %439 ]
  br i1 %444, label %445, label %501

445:                                              ; preds = %443
  %446 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = add nsw i32 %447, 1
  %449 = and i32 %448, 3
  %450 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 0
  store i32 %449, i32* %450, align 8
  store i32 -1, i32* %21, align 4
  %451 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %452 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %455 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %454, i32 0, i32 0
  store i32 %453, i32* %455, align 4
  %456 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %457 = load i32, i32* %13, align 4
  %458 = call i32 @PCI_DEVFN(i32 %457, i64 0)
  %459 = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %456, i32 %458, i32 0, i32* %21)
  %460 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %461 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %464 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %463, i32 0, i32 0
  store i32 %462, i32* %464, align 4
  %465 = load i32, i32* %21, align 4
  %466 = icmp ne i32 %465, -1
  br i1 %466, label %467, label %497

467:                                              ; preds = %445
  %468 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %469 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = call %struct.pci_func* @cpqhp_slot_create(i32 %470)
  store %struct.pci_func* %471, %struct.pci_func** %32, align 8
  %472 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %473 = icmp eq %struct.pci_func* %472, null
  br i1 %473, label %474, label %477

474:                                              ; preds = %467
  %475 = load i32, i32* @ENOMEM, align 4
  %476 = sub nsw i32 0, %475
  store i32 %476, i32* %18, align 4
  br label %498

477:                                              ; preds = %467
  %478 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %479 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %482 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %481, i32 0, i32 0
  store i32 %480, i32* %482, align 8
  %483 = load i32, i32* %13, align 4
  %484 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %485 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %484, i32 0, i32 1
  store i32 %483, i32* %485, align 4
  %486 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %487 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %486, i32 0, i32 9
  store i64 0, i64* %487, align 8
  %488 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %489 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %488, i32 0, i32 2
  store i32 1, i32* %489, align 8
  %490 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %491 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %490, i32 0, i32 8
  store i64 0, i64* %491, align 8
  %492 = load %struct.controller*, %struct.controller** %6, align 8
  %493 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %494 = call i32 @configure_new_device(%struct.controller* %492, %struct.pci_func* %493, i32 1, %struct.resource_lists* %34)
  store i32 %494, i32* %18, align 4
  %495 = load i32, i32* %18, align 4
  %496 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %495)
  br label %497

497:                                              ; preds = %477, %445
  br label %498

498:                                              ; preds = %497, %474
  %499 = load i32, i32* %13, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %13, align 4
  br label %436

501:                                              ; preds = %443
  %502 = load i32, i32* %18, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %505

504:                                              ; preds = %501
  br label %1327

505:                                              ; preds = %501
  %506 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %507 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %506, i32 0, i32 4
  %508 = load %struct.irq_mapping*, %struct.irq_mapping** %507, align 8
  %509 = icmp ne %struct.irq_mapping* %508, null
  br i1 %509, label %510, label %557

510:                                              ; preds = %505
  %511 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %512 = load i32*, i32** %511, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 0
  %514 = load i32, i32* %513, align 4
  %515 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %516 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %515, i32 0, i32 4
  %517 = load %struct.irq_mapping*, %struct.irq_mapping** %516, align 8
  %518 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %517, i32 0, i32 1
  %519 = load i32*, i32** %518, align 8
  %520 = getelementptr inbounds i32, i32* %519, i64 0
  store i32 %514, i32* %520, align 4
  %521 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %522 = load i32*, i32** %521, align 8
  %523 = getelementptr inbounds i32, i32* %522, i64 1
  %524 = load i32, i32* %523, align 4
  %525 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %526 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %525, i32 0, i32 4
  %527 = load %struct.irq_mapping*, %struct.irq_mapping** %526, align 8
  %528 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %527, i32 0, i32 1
  %529 = load i32*, i32** %528, align 8
  %530 = getelementptr inbounds i32, i32* %529, i64 1
  store i32 %524, i32* %530, align 4
  %531 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %532 = load i32*, i32** %531, align 8
  %533 = getelementptr inbounds i32, i32* %532, i64 2
  %534 = load i32, i32* %533, align 4
  %535 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %536 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %535, i32 0, i32 4
  %537 = load %struct.irq_mapping*, %struct.irq_mapping** %536, align 8
  %538 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %537, i32 0, i32 1
  %539 = load i32*, i32** %538, align 8
  %540 = getelementptr inbounds i32, i32* %539, i64 2
  store i32 %534, i32* %540, align 4
  %541 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %542 = load i32*, i32** %541, align 8
  %543 = getelementptr inbounds i32, i32* %542, i64 3
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %546 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %545, i32 0, i32 4
  %547 = load %struct.irq_mapping*, %struct.irq_mapping** %546, align 8
  %548 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %547, i32 0, i32 1
  %549 = load i32*, i32** %548, align 8
  %550 = getelementptr inbounds i32, i32* %549, i64 3
  store i32 %544, i32* %550, align 4
  %551 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 2
  %552 = load i32, i32* %551, align 8
  %553 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %554 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %553, i32 0, i32 4
  %555 = load %struct.irq_mapping*, %struct.irq_mapping** %554, align 8
  %556 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %555, i32 0, i32 2
  store i32 %552, i32* %556, align 8
  br label %597

557:                                              ; preds = %505
  %558 = load i32, i32* %8, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %596, label %560

560:                                              ; preds = %557
  store i32 0, i32* %10, align 4
  br label %561

561:                                              ; preds = %592, %560
  %562 = load i32, i32* %10, align 4
  %563 = icmp slt i32 %562, 4
  br i1 %563, label %564, label %595

564:                                              ; preds = %561
  %565 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 2
  %566 = load i32, i32* %565, align 8
  %567 = load i32, i32* %10, align 4
  %568 = shl i32 1, %567
  %569 = and i32 %566, %568
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %591

571:                                              ; preds = %564
  %572 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %573 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 8
  %575 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %576 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %575, i32 0, i32 1
  %577 = load i32, i32* %576, align 4
  %578 = load i32, i32* %10, align 4
  %579 = add nsw i32 %578, 1
  %580 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %581 = load i32*, i32** %580, align 8
  %582 = load i32, i32* %10, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32, i32* %581, i64 %583
  %585 = load i32, i32* %584, align 4
  %586 = call i32 @cpqhp_set_irq(i32 %574, i32 %577, i32 %579, i32 %585)
  store i32 %586, i32* %18, align 4
  %587 = load i32, i32* %18, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %590

589:                                              ; preds = %571
  br label %1327

590:                                              ; preds = %571
  br label %591

591:                                              ; preds = %590, %564
  br label %592

592:                                              ; preds = %591
  %593 = load i32, i32* %10, align 4
  %594 = add nsw i32 %593, 1
  store i32 %594, i32* %10, align 4
  br label %561

595:                                              ; preds = %561
  br label %596

596:                                              ; preds = %595, %557
  br label %597

597:                                              ; preds = %596, %510
  %598 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %599 = icmp ne %struct.pci_resource* %598, null
  br i1 %599, label %600, label %649

600:                                              ; preds = %597
  %601 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  %602 = load %struct.pci_resource*, %struct.pci_resource** %601, align 8
  %603 = icmp ne %struct.pci_resource* %602, null
  br i1 %603, label %604, label %649

604:                                              ; preds = %600
  %605 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %606 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 8
  %608 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %609 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 8
  %611 = sub nsw i32 %607, %610
  %612 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %613 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %612, i32 0, i32 1
  store i32 %611, i32* %613, align 4
  %614 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %615 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %614, i32 0, i32 7
  %616 = load %struct.pci_resource*, %struct.pci_resource** %615, align 8
  %617 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %618 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %617, i32 0, i32 2
  store %struct.pci_resource* %616, %struct.pci_resource** %618, align 8
  %619 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %620 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %621 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %620, i32 0, i32 7
  store %struct.pci_resource* %619, %struct.pci_resource** %621, align 8
  %622 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  %623 = load %struct.pci_resource*, %struct.pci_resource** %622, align 8
  %624 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %623, i32 0, i32 0
  %625 = load i32, i32* %624, align 8
  %626 = sub nsw i32 %625, 1
  store i32 %626, i32* %12, align 4
  %627 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %628 = load i32, i32* %22, align 4
  %629 = load i32, i32* @PCI_SUBORDINATE_BUS, align 4
  %630 = load i32, i32* %12, align 4
  %631 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %627, i32 %628, i32 %629, i32 %630)
  store i32 %631, i32* %18, align 4
  %632 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  %633 = load %struct.pci_resource*, %struct.pci_resource** %632, align 8
  %634 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %633, i32 0, i32 1
  %635 = load i32, i32* %634, align 4
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %637, label %642

637:                                              ; preds = %604
  %638 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  %639 = load %struct.pci_resource*, %struct.pci_resource** %638, align 8
  %640 = call i32 @kfree(%struct.pci_resource* %639)
  %641 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  store %struct.pci_resource* null, %struct.pci_resource** %641, align 8
  br label %648

642:                                              ; preds = %604
  %643 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %644 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %643, i32 0, i32 3
  %645 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  %646 = load %struct.pci_resource*, %struct.pci_resource** %645, align 8
  %647 = call i32 @return_resource(%struct.pci_resource** %644, %struct.pci_resource* %646)
  br label %648

648:                                              ; preds = %642, %637
  br label %649

649:                                              ; preds = %648, %600, %597
  %650 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %651 = icmp ne %struct.pci_resource* %650, null
  br i1 %651, label %652, label %749

652:                                              ; preds = %649
  %653 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 2
  %654 = load %struct.pci_resource*, %struct.pci_resource** %653, align 8
  %655 = icmp ne %struct.pci_resource* %654, null
  br i1 %655, label %656, label %749

656:                                              ; preds = %652
  %657 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 2
  %658 = call %struct.pci_resource* @do_pre_bridge_resource_split(%struct.pci_resource** %657, %struct.pci_resource** %29, i32 4096)
  store %struct.pci_resource* %658, %struct.pci_resource** %25, align 8
  %659 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %660 = icmp ne %struct.pci_resource* %659, null
  br i1 %660, label %661, label %684

661:                                              ; preds = %656
  %662 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %663 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %662, i32 0, i32 0
  %664 = load i32, i32* %663, align 8
  %665 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %666 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %665, i32 0, i32 1
  %667 = load i32, i32* %666, align 4
  %668 = add nsw i32 %664, %667
  %669 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %670 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %669, i32 0, i32 0
  store i32 %668, i32* %670, align 8
  %671 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %672 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %671, i32 0, i32 0
  %673 = load i32, i32* %672, align 8
  %674 = ashr i32 %673, 8
  store i32 %674, i32* %12, align 4
  %675 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %676 = load i32, i32* %22, align 4
  %677 = load i32, i32* @PCI_IO_BASE, align 4
  %678 = load i32, i32* %12, align 4
  %679 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %675, i32 %676, i32 %677, i32 %678)
  store i32 %679, i32* %18, align 4
  %680 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %681 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %680, i32 0, i32 2
  %682 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %683 = call i32 @return_resource(%struct.pci_resource** %681, %struct.pci_resource* %682)
  br label %684

684:                                              ; preds = %661, %656
  %685 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 2
  %686 = call %struct.pci_resource* @do_bridge_resource_split(%struct.pci_resource** %685, i32 4096)
  store %struct.pci_resource* %686, %struct.pci_resource** %25, align 8
  %687 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %688 = icmp ne %struct.pci_resource* %687, null
  br i1 %688, label %689, label %739

689:                                              ; preds = %684
  %690 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %691 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 8
  %693 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %694 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 8
  %696 = sub nsw i32 %692, %695
  %697 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %698 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %697, i32 0, i32 1
  store i32 %696, i32* %698, align 4
  %699 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %700 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %699, i32 0, i32 1
  %701 = load i32, i32* %700, align 4
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %726

703:                                              ; preds = %689
  %704 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %705 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %704, i32 0, i32 6
  %706 = load %struct.pci_resource*, %struct.pci_resource** %705, align 8
  %707 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %708 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %707, i32 0, i32 2
  store %struct.pci_resource* %706, %struct.pci_resource** %708, align 8
  %709 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %710 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %711 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %710, i32 0, i32 6
  store %struct.pci_resource* %709, %struct.pci_resource** %711, align 8
  %712 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %713 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %712, i32 0, i32 0
  %714 = load i32, i32* %713, align 8
  %715 = sub nsw i32 %714, 1
  %716 = ashr i32 %715, 8
  store i32 %716, i32* %12, align 4
  %717 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %718 = load i32, i32* %22, align 4
  %719 = load i32, i32* @PCI_IO_LIMIT, align 4
  %720 = load i32, i32* %12, align 4
  %721 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %717, i32 %718, i32 %719, i32 %720)
  store i32 %721, i32* %18, align 4
  %722 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %723 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %722, i32 0, i32 2
  %724 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %725 = call i32 @return_resource(%struct.pci_resource** %723, %struct.pci_resource* %724)
  br label %738

726:                                              ; preds = %689
  store i32 0, i32* %16, align 4
  %727 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %728 = load i32, i32* %22, align 4
  %729 = load i32, i32* @PCI_IO_LIMIT, align 4
  %730 = load i32, i32* %16, align 4
  %731 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %727, i32 %728, i32 %729, i32 %730)
  store i32 %731, i32* %18, align 4
  %732 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %733 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %732, i32 0, i32 2
  %734 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %735 = call i32 @return_resource(%struct.pci_resource** %733, %struct.pci_resource* %734)
  %736 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %737 = call i32 @kfree(%struct.pci_resource* %736)
  br label %738

738:                                              ; preds = %726, %703
  br label %748

739:                                              ; preds = %684
  %740 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %741 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %740, i32 0, i32 6
  %742 = load %struct.pci_resource*, %struct.pci_resource** %741, align 8
  %743 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %744 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %743, i32 0, i32 2
  store %struct.pci_resource* %742, %struct.pci_resource** %744, align 8
  %745 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %746 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %747 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %746, i32 0, i32 6
  store %struct.pci_resource* %745, %struct.pci_resource** %747, align 8
  br label %748

748:                                              ; preds = %739, %738
  br label %762

749:                                              ; preds = %652, %649
  %750 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %751 = icmp ne %struct.pci_resource* %750, null
  br i1 %751, label %752, label %761

752:                                              ; preds = %749
  %753 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %754 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %753, i32 0, i32 6
  %755 = load %struct.pci_resource*, %struct.pci_resource** %754, align 8
  %756 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %757 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %756, i32 0, i32 2
  store %struct.pci_resource* %755, %struct.pci_resource** %757, align 8
  %758 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %759 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %760 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %759, i32 0, i32 6
  store %struct.pci_resource* %758, %struct.pci_resource** %760, align 8
  br label %761

761:                                              ; preds = %752, %749
  br label %762

762:                                              ; preds = %761, %748
  %763 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %764 = icmp ne %struct.pci_resource* %763, null
  br i1 %764, label %765, label %862

765:                                              ; preds = %762
  %766 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 1
  %767 = load %struct.pci_resource*, %struct.pci_resource** %766, align 8
  %768 = icmp ne %struct.pci_resource* %767, null
  br i1 %768, label %769, label %862

769:                                              ; preds = %765
  %770 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 1
  %771 = call %struct.pci_resource* @do_pre_bridge_resource_split(%struct.pci_resource** %770, %struct.pci_resource** %27, i32 1048576)
  store %struct.pci_resource* %771, %struct.pci_resource** %23, align 8
  %772 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %773 = icmp ne %struct.pci_resource* %772, null
  br i1 %773, label %774, label %797

774:                                              ; preds = %769
  %775 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %776 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %775, i32 0, i32 0
  %777 = load i32, i32* %776, align 8
  %778 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %779 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %778, i32 0, i32 1
  %780 = load i32, i32* %779, align 4
  %781 = add nsw i32 %777, %780
  %782 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %783 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %782, i32 0, i32 0
  store i32 %781, i32* %783, align 8
  %784 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %785 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %784, i32 0, i32 0
  %786 = load i32, i32* %785, align 8
  %787 = ashr i32 %786, 16
  store i32 %787, i32* %16, align 4
  %788 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %789 = load i32, i32* %22, align 4
  %790 = load i32, i32* @PCI_MEMORY_BASE, align 4
  %791 = load i32, i32* %16, align 4
  %792 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %788, i32 %789, i32 %790, i32 %791)
  store i32 %792, i32* %18, align 4
  %793 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %794 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %793, i32 0, i32 1
  %795 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %796 = call i32 @return_resource(%struct.pci_resource** %794, %struct.pci_resource* %795)
  br label %797

797:                                              ; preds = %774, %769
  %798 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 1
  %799 = call %struct.pci_resource* @do_bridge_resource_split(%struct.pci_resource** %798, i32 1048576)
  store %struct.pci_resource* %799, %struct.pci_resource** %23, align 8
  %800 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %801 = icmp ne %struct.pci_resource* %800, null
  br i1 %801, label %802, label %852

802:                                              ; preds = %797
  %803 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %804 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %803, i32 0, i32 0
  %805 = load i32, i32* %804, align 8
  %806 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %807 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %806, i32 0, i32 0
  %808 = load i32, i32* %807, align 8
  %809 = sub nsw i32 %805, %808
  %810 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %811 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %810, i32 0, i32 1
  store i32 %809, i32* %811, align 4
  %812 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %813 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %812, i32 0, i32 1
  %814 = load i32, i32* %813, align 4
  %815 = icmp ne i32 %814, 0
  br i1 %815, label %816, label %839

816:                                              ; preds = %802
  %817 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %818 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %817, i32 0, i32 4
  %819 = load %struct.pci_resource*, %struct.pci_resource** %818, align 8
  %820 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %821 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %820, i32 0, i32 2
  store %struct.pci_resource* %819, %struct.pci_resource** %821, align 8
  %822 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %823 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %824 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %823, i32 0, i32 4
  store %struct.pci_resource* %822, %struct.pci_resource** %824, align 8
  %825 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %826 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %825, i32 0, i32 0
  %827 = load i32, i32* %826, align 8
  %828 = sub nsw i32 %827, 1
  %829 = ashr i32 %828, 16
  store i32 %829, i32* %16, align 4
  %830 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %831 = load i32, i32* %22, align 4
  %832 = load i32, i32* @PCI_MEMORY_LIMIT, align 4
  %833 = load i32, i32* %16, align 4
  %834 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %830, i32 %831, i32 %832, i32 %833)
  store i32 %834, i32* %18, align 4
  %835 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %836 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %835, i32 0, i32 1
  %837 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %838 = call i32 @return_resource(%struct.pci_resource** %836, %struct.pci_resource* %837)
  br label %851

839:                                              ; preds = %802
  store i32 0, i32* %16, align 4
  %840 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %841 = load i32, i32* %22, align 4
  %842 = load i32, i32* @PCI_MEMORY_LIMIT, align 4
  %843 = load i32, i32* %16, align 4
  %844 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %840, i32 %841, i32 %842, i32 %843)
  store i32 %844, i32* %18, align 4
  %845 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %846 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %845, i32 0, i32 1
  %847 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %848 = call i32 @return_resource(%struct.pci_resource** %846, %struct.pci_resource* %847)
  %849 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %850 = call i32 @kfree(%struct.pci_resource* %849)
  br label %851

851:                                              ; preds = %839, %816
  br label %861

852:                                              ; preds = %797
  %853 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %854 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %853, i32 0, i32 4
  %855 = load %struct.pci_resource*, %struct.pci_resource** %854, align 8
  %856 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %857 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %856, i32 0, i32 2
  store %struct.pci_resource* %855, %struct.pci_resource** %857, align 8
  %858 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %859 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %860 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %859, i32 0, i32 4
  store %struct.pci_resource* %858, %struct.pci_resource** %860, align 8
  br label %861

861:                                              ; preds = %852, %851
  br label %875

862:                                              ; preds = %765, %762
  %863 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %864 = icmp ne %struct.pci_resource* %863, null
  br i1 %864, label %865, label %874

865:                                              ; preds = %862
  %866 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %867 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %866, i32 0, i32 4
  %868 = load %struct.pci_resource*, %struct.pci_resource** %867, align 8
  %869 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %870 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %869, i32 0, i32 2
  store %struct.pci_resource* %868, %struct.pci_resource** %870, align 8
  %871 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %872 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %873 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %872, i32 0, i32 4
  store %struct.pci_resource* %871, %struct.pci_resource** %873, align 8
  br label %874

874:                                              ; preds = %865, %862
  br label %875

875:                                              ; preds = %874, %861
  %876 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 0
  %877 = load %struct.pci_resource*, %struct.pci_resource** %876, align 8
  %878 = icmp ne %struct.pci_resource* %877, null
  br i1 %878, label %879, label %972

879:                                              ; preds = %875
  %880 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 0
  %881 = call %struct.pci_resource* @do_pre_bridge_resource_split(%struct.pci_resource** %880, %struct.pci_resource** %28, i32 1048576)
  store %struct.pci_resource* %881, %struct.pci_resource** %24, align 8
  %882 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %883 = icmp ne %struct.pci_resource* %882, null
  br i1 %883, label %884, label %907

884:                                              ; preds = %879
  %885 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %886 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %885, i32 0, i32 0
  %887 = load i32, i32* %886, align 8
  %888 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %889 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %888, i32 0, i32 1
  %890 = load i32, i32* %889, align 4
  %891 = add nsw i32 %887, %890
  %892 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %893 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %892, i32 0, i32 0
  store i32 %891, i32* %893, align 8
  %894 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %895 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %894, i32 0, i32 0
  %896 = load i32, i32* %895, align 8
  %897 = ashr i32 %896, 16
  store i32 %897, i32* %16, align 4
  %898 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %899 = load i32, i32* %22, align 4
  %900 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %901 = load i32, i32* %16, align 4
  %902 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %898, i32 %899, i32 %900, i32 %901)
  store i32 %902, i32* %18, align 4
  %903 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %904 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %903, i32 0, i32 0
  %905 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %906 = call i32 @return_resource(%struct.pci_resource** %904, %struct.pci_resource* %905)
  br label %907

907:                                              ; preds = %884, %879
  %908 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 0
  %909 = call %struct.pci_resource* @do_bridge_resource_split(%struct.pci_resource** %908, i32 1048576)
  store %struct.pci_resource* %909, %struct.pci_resource** %24, align 8
  %910 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %911 = icmp ne %struct.pci_resource* %910, null
  br i1 %911, label %912, label %962

912:                                              ; preds = %907
  %913 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %914 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %913, i32 0, i32 0
  %915 = load i32, i32* %914, align 8
  %916 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %917 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %916, i32 0, i32 0
  %918 = load i32, i32* %917, align 8
  %919 = sub nsw i32 %915, %918
  %920 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %921 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %920, i32 0, i32 1
  store i32 %919, i32* %921, align 4
  %922 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %923 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %922, i32 0, i32 1
  %924 = load i32, i32* %923, align 4
  %925 = icmp ne i32 %924, 0
  br i1 %925, label %926, label %949

926:                                              ; preds = %912
  %927 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %928 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %927, i32 0, i32 5
  %929 = load %struct.pci_resource*, %struct.pci_resource** %928, align 8
  %930 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %931 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %930, i32 0, i32 2
  store %struct.pci_resource* %929, %struct.pci_resource** %931, align 8
  %932 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %933 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %934 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %933, i32 0, i32 5
  store %struct.pci_resource* %932, %struct.pci_resource** %934, align 8
  %935 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %936 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %935, i32 0, i32 0
  %937 = load i32, i32* %936, align 8
  %938 = sub nsw i32 %937, 1
  %939 = ashr i32 %938, 16
  store i32 %939, i32* %16, align 4
  %940 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %941 = load i32, i32* %22, align 4
  %942 = load i32, i32* @PCI_PREF_MEMORY_LIMIT, align 4
  %943 = load i32, i32* %16, align 4
  %944 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %940, i32 %941, i32 %942, i32 %943)
  store i32 %944, i32* %18, align 4
  %945 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %946 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %945, i32 0, i32 0
  %947 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %948 = call i32 @return_resource(%struct.pci_resource** %946, %struct.pci_resource* %947)
  br label %961

949:                                              ; preds = %912
  store i32 0, i32* %16, align 4
  %950 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %951 = load i32, i32* %22, align 4
  %952 = load i32, i32* @PCI_PREF_MEMORY_LIMIT, align 4
  %953 = load i32, i32* %16, align 4
  %954 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %950, i32 %951, i32 %952, i32 %953)
  store i32 %954, i32* %18, align 4
  %955 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %956 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %955, i32 0, i32 0
  %957 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %958 = call i32 @return_resource(%struct.pci_resource** %956, %struct.pci_resource* %957)
  %959 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %960 = call i32 @kfree(%struct.pci_resource* %959)
  br label %961

961:                                              ; preds = %949, %926
  br label %971

962:                                              ; preds = %907
  %963 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %964 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %963, i32 0, i32 5
  %965 = load %struct.pci_resource*, %struct.pci_resource** %964, align 8
  %966 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %967 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %966, i32 0, i32 2
  store %struct.pci_resource* %965, %struct.pci_resource** %967, align 8
  %968 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %969 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %970 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %969, i32 0, i32 5
  store %struct.pci_resource* %968, %struct.pci_resource** %970, align 8
  br label %971

971:                                              ; preds = %962, %961
  br label %985

972:                                              ; preds = %875
  %973 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %974 = icmp ne %struct.pci_resource* %973, null
  br i1 %974, label %975, label %984

975:                                              ; preds = %972
  %976 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %977 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %976, i32 0, i32 5
  %978 = load %struct.pci_resource*, %struct.pci_resource** %977, align 8
  %979 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %980 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %979, i32 0, i32 2
  store %struct.pci_resource* %978, %struct.pci_resource** %980, align 8
  %981 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %982 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %983 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %982, i32 0, i32 5
  store %struct.pci_resource* %981, %struct.pci_resource** %983, align 8
  br label %984

984:                                              ; preds = %975, %972
  br label %985

985:                                              ; preds = %984, %971
  store i32 343, i32* %15, align 4
  %986 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %987 = load i32, i32* %22, align 4
  %988 = load i32, i32* @PCI_COMMAND, align 4
  %989 = load i32, i32* %15, align 4
  %990 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %986, i32 %987, i32 %988, i32 %989)
  store i32 %990, i32* %18, align 4
  store i32 7, i32* %15, align 4
  %991 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %992 = load i32, i32* %22, align 4
  %993 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %994 = load i32, i32* %15, align 4
  %995 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %991, i32 %992, i32 %993, i32 %994)
  store i32 %995, i32* %18, align 4
  br label %1324

996:                                              ; preds = %58
  %997 = load i32, i32* %12, align 4
  %998 = and i32 %997, 127
  %999 = load i32, i32* @PCI_HEADER_TYPE_NORMAL, align 4
  %1000 = icmp eq i32 %998, %999
  br i1 %1000, label %1001, label %1321

1001:                                             ; preds = %996
  %1002 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1003 = load i32, i32* %22, align 4
  %1004 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %1002, i32 %1003, i32 11, i32* %14)
  store i32 %1004, i32* %18, align 4
  %1005 = load i32, i32* %14, align 4
  %1006 = load i32, i32* @PCI_BASE_CLASS_DISPLAY, align 4
  %1007 = icmp eq i32 %1005, %1006
  br i1 %1007, label %1008, label %1010

1008:                                             ; preds = %1001
  %1009 = load i32, i32* @DEVICE_TYPE_NOT_SUPPORTED, align 4
  store i32 %1009, i32* %5, align 4
  br label %1346

1010:                                             ; preds = %1001
  store i32 16, i32* %10, align 4
  br label %1011

1011:                                             ; preds = %1177, %1010
  %1012 = load i32, i32* %10, align 4
  %1013 = icmp sle i32 %1012, 36
  br i1 %1013, label %1014, label %1180

1014:                                             ; preds = %1011
  store i32 -1, i32* %19, align 4
  %1015 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1016 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %1015, i32 0, i32 0
  %1017 = load i32, i32* %1016, align 4
  %1018 = load i32, i32* %22, align 4
  %1019 = load i32, i32* %10, align 4
  %1020 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %1017, i32 %1018, i32 %1019)
  %1021 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1022 = load i32, i32* %22, align 4
  %1023 = load i32, i32* %10, align 4
  %1024 = load i32, i32* %19, align 4
  %1025 = call i32 @pci_bus_write_config_dword(%struct.pci_bus* %1021, i32 %1022, i32 %1023, i32 %1024)
  store i32 %1025, i32* %18, align 4
  %1026 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1027 = load i32, i32* %22, align 4
  %1028 = load i32, i32* %10, align 4
  %1029 = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %1026, i32 %1027, i32 %1028, i32* %19)
  store i32 %1029, i32* %18, align 4
  %1030 = load i32, i32* %19, align 4
  %1031 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %1030)
  %1032 = load i32, i32* %19, align 4
  %1033 = icmp ne i32 %1032, 0
  br i1 %1033, label %1034, label %1176

1034:                                             ; preds = %1014
  %1035 = load i32, i32* %19, align 4
  %1036 = sext i32 %1035 to i64
  %1037 = and i64 %1036, 3
  %1038 = icmp eq i64 %1037, 1
  br i1 %1038, label %1039, label %1083

1039:                                             ; preds = %1034
  %1040 = load i32, i32* %19, align 4
  %1041 = and i32 %1040, -4
  store i32 %1041, i32* %20, align 4
  %1042 = load i32, i32* %20, align 4
  %1043 = xor i32 %1042, -1
  %1044 = add nsw i32 %1043, 1
  store i32 %1044, i32* %20, align 4
  %1045 = load i32, i32* %20, align 4
  %1046 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %1045)
  %1047 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1048 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1047, i32 0, i32 2
  %1049 = load i32, i32* %20, align 4
  %1050 = call %struct.pci_resource* @get_io_resource(%struct.pci_resource** %1048, i32 %1049)
  store %struct.pci_resource* %1050, %struct.pci_resource** %25, align 8
  %1051 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1052 = icmp ne %struct.pci_resource* %1051, null
  br i1 %1052, label %1056, label %1053

1053:                                             ; preds = %1039
  %1054 = load i32, i32* @ENOMEM, align 4
  %1055 = sub nsw i32 0, %1054
  store i32 %1055, i32* %5, align 4
  br label %1346

1056:                                             ; preds = %1039
  %1057 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1058 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1057, i32 0, i32 0
  %1059 = load i32, i32* %1058, align 8
  %1060 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1061 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1060, i32 0, i32 1
  %1062 = load i32, i32* %1061, align 4
  %1063 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1064 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1063, i32 0, i32 2
  %1065 = load %struct.pci_resource*, %struct.pci_resource** %1064, align 8
  %1066 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i32 %1059, i32 %1062, %struct.pci_resource* %1065)
  %1067 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1068 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1069 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1068, i32 0, i32 6
  %1070 = load %struct.pci_resource*, %struct.pci_resource** %1069, align 8
  %1071 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), %struct.pci_func* %1067, %struct.pci_resource* %1070)
  %1072 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1073 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1072, i32 0, i32 0
  %1074 = load i32, i32* %1073, align 8
  store i32 %1074, i32* %20, align 4
  %1075 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1076 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1075, i32 0, i32 6
  %1077 = load %struct.pci_resource*, %struct.pci_resource** %1076, align 8
  %1078 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1079 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1078, i32 0, i32 2
  store %struct.pci_resource* %1077, %struct.pci_resource** %1079, align 8
  %1080 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1081 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1082 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1081, i32 0, i32 6
  store %struct.pci_resource* %1080, %struct.pci_resource** %1082, align 8
  br label %1157

1083:                                             ; preds = %1034
  %1084 = load i32, i32* %19, align 4
  %1085 = sext i32 %1084 to i64
  %1086 = and i64 %1085, 11
  %1087 = icmp eq i64 %1086, 8
  br i1 %1087, label %1088, label %1118

1088:                                             ; preds = %1083
  %1089 = load i32, i32* %19, align 4
  %1090 = and i32 %1089, -16
  store i32 %1090, i32* %20, align 4
  %1091 = load i32, i32* %20, align 4
  %1092 = xor i32 %1091, -1
  %1093 = add nsw i32 %1092, 1
  store i32 %1093, i32* %20, align 4
  %1094 = load i32, i32* %20, align 4
  %1095 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %1094)
  %1096 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1097 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1096, i32 0, i32 0
  %1098 = load i32, i32* %20, align 4
  %1099 = call %struct.pci_resource* @get_resource(%struct.pci_resource** %1097, i32 %1098)
  store %struct.pci_resource* %1099, %struct.pci_resource** %24, align 8
  %1100 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %1101 = icmp ne %struct.pci_resource* %1100, null
  br i1 %1101, label %1102, label %1114

1102:                                             ; preds = %1088
  %1103 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %1104 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1103, i32 0, i32 0
  %1105 = load i32, i32* %1104, align 8
  store i32 %1105, i32* %20, align 4
  %1106 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1107 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1106, i32 0, i32 5
  %1108 = load %struct.pci_resource*, %struct.pci_resource** %1107, align 8
  %1109 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %1110 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1109, i32 0, i32 2
  store %struct.pci_resource* %1108, %struct.pci_resource** %1110, align 8
  %1111 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %1112 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1113 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1112, i32 0, i32 5
  store %struct.pci_resource* %1111, %struct.pci_resource** %1113, align 8
  br label %1117

1114:                                             ; preds = %1088
  %1115 = load i32, i32* @ENOMEM, align 4
  %1116 = sub nsw i32 0, %1115
  store i32 %1116, i32* %5, align 4
  br label %1346

1117:                                             ; preds = %1102
  br label %1156

1118:                                             ; preds = %1083
  %1119 = load i32, i32* %19, align 4
  %1120 = sext i32 %1119 to i64
  %1121 = and i64 %1120, 11
  %1122 = icmp eq i64 %1121, 0
  br i1 %1122, label %1123, label %1153

1123:                                             ; preds = %1118
  %1124 = load i32, i32* %19, align 4
  %1125 = and i32 %1124, -16
  store i32 %1125, i32* %20, align 4
  %1126 = load i32, i32* %20, align 4
  %1127 = xor i32 %1126, -1
  %1128 = add nsw i32 %1127, 1
  store i32 %1128, i32* %20, align 4
  %1129 = load i32, i32* %20, align 4
  %1130 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %1129)
  %1131 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1132 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1131, i32 0, i32 1
  %1133 = load i32, i32* %20, align 4
  %1134 = call %struct.pci_resource* @get_resource(%struct.pci_resource** %1132, i32 %1133)
  store %struct.pci_resource* %1134, %struct.pci_resource** %23, align 8
  %1135 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %1136 = icmp ne %struct.pci_resource* %1135, null
  br i1 %1136, label %1137, label %1149

1137:                                             ; preds = %1123
  %1138 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %1139 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1138, i32 0, i32 0
  %1140 = load i32, i32* %1139, align 8
  store i32 %1140, i32* %20, align 4
  %1141 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1142 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1141, i32 0, i32 4
  %1143 = load %struct.pci_resource*, %struct.pci_resource** %1142, align 8
  %1144 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %1145 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1144, i32 0, i32 2
  store %struct.pci_resource* %1143, %struct.pci_resource** %1145, align 8
  %1146 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %1147 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1148 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1147, i32 0, i32 4
  store %struct.pci_resource* %1146, %struct.pci_resource** %1148, align 8
  br label %1152

1149:                                             ; preds = %1123
  %1150 = load i32, i32* @ENOMEM, align 4
  %1151 = sub nsw i32 0, %1150
  store i32 %1151, i32* %5, align 4
  br label %1346

1152:                                             ; preds = %1137
  br label %1155

1153:                                             ; preds = %1118
  %1154 = load i32, i32* @NOT_ENOUGH_RESOURCES, align 4
  store i32 %1154, i32* %5, align 4
  br label %1346

1155:                                             ; preds = %1152
  br label %1156

1156:                                             ; preds = %1155, %1117
  br label %1157

1157:                                             ; preds = %1156, %1056
  %1158 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1159 = load i32, i32* %22, align 4
  %1160 = load i32, i32* %10, align 4
  %1161 = load i32, i32* %20, align 4
  %1162 = call i32 @pci_bus_write_config_dword(%struct.pci_bus* %1158, i32 %1159, i32 %1160, i32 %1161)
  store i32 %1162, i32* %18, align 4
  %1163 = load i32, i32* %19, align 4
  %1164 = sext i32 %1163 to i64
  %1165 = and i64 %1164, 7
  %1166 = icmp eq i64 %1165, 4
  br i1 %1166, label %1167, label %1175

1167:                                             ; preds = %1157
  %1168 = load i32, i32* %10, align 4
  %1169 = add nsw i32 %1168, 4
  store i32 %1169, i32* %10, align 4
  store i32 0, i32* %20, align 4
  %1170 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1171 = load i32, i32* %22, align 4
  %1172 = load i32, i32* %10, align 4
  %1173 = load i32, i32* %20, align 4
  %1174 = call i32 @pci_bus_write_config_dword(%struct.pci_bus* %1170, i32 %1171, i32 %1172, i32 %1173)
  store i32 %1174, i32* %18, align 4
  br label %1175

1175:                                             ; preds = %1167, %1157
  br label %1176

1176:                                             ; preds = %1175, %1014
  br label %1177

1177:                                             ; preds = %1176
  %1178 = load i32, i32* %10, align 4
  %1179 = add nsw i32 %1178, 4
  store i32 %1179, i32* %10, align 4
  br label %1011

1180:                                             ; preds = %1011
  %1181 = load i64, i64* @cpqhp_legacy_mode, align 8
  %1182 = icmp ne i64 %1181, 0
  br i1 %1182, label %1183, label %1249

1183:                                             ; preds = %1180
  %1184 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1185 = load i32, i32* %22, align 4
  %1186 = load i32, i32* @PCI_INTERRUPT_PIN, align 4
  %1187 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %1184, i32 %1185, i32 %1186, i32* %12)
  store i32 %1187, i32* %18, align 4
  %1188 = load i32, i32* %12, align 4
  %1189 = icmp ne i32 %1188, 0
  br i1 %1189, label %1190, label %1231

1190:                                             ; preds = %1183
  %1191 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1192 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1191, i32 0, i32 4
  %1193 = load %struct.irq_mapping*, %struct.irq_mapping** %1192, align 8
  %1194 = icmp ne %struct.irq_mapping* %1193, null
  br i1 %1194, label %1195, label %1231

1195:                                             ; preds = %1190
  %1196 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1197 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1196, i32 0, i32 4
  %1198 = load %struct.irq_mapping*, %struct.irq_mapping** %1197, align 8
  %1199 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1198, i32 0, i32 2
  %1200 = load i32, i32* %1199, align 8
  %1201 = load i32, i32* %12, align 4
  %1202 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1203 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1202, i32 0, i32 4
  %1204 = load %struct.irq_mapping*, %struct.irq_mapping** %1203, align 8
  %1205 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1204, i32 0, i32 0
  %1206 = load i32, i32* %1205, align 8
  %1207 = add nsw i32 %1201, %1206
  %1208 = sub nsw i32 %1207, 1
  %1209 = and i32 %1208, 3
  %1210 = shl i32 1, %1209
  %1211 = and i32 %1200, %1210
  %1212 = icmp ne i32 %1211, 0
  br i1 %1212, label %1213, label %1231

1213:                                             ; preds = %1195
  %1214 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1215 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1214, i32 0, i32 4
  %1216 = load %struct.irq_mapping*, %struct.irq_mapping** %1215, align 8
  %1217 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1216, i32 0, i32 1
  %1218 = load i32*, i32** %1217, align 8
  %1219 = load i32, i32* %12, align 4
  %1220 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1221 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1220, i32 0, i32 4
  %1222 = load %struct.irq_mapping*, %struct.irq_mapping** %1221, align 8
  %1223 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1222, i32 0, i32 0
  %1224 = load i32, i32* %1223, align 8
  %1225 = add nsw i32 %1219, %1224
  %1226 = sub nsw i32 %1225, 1
  %1227 = and i32 %1226, 3
  %1228 = sext i32 %1227 to i64
  %1229 = getelementptr inbounds i32, i32* %1218, i64 %1228
  %1230 = load i32, i32* %1229, align 4
  store i32 %1230, i32* %11, align 4
  br label %1243

1231:                                             ; preds = %1195, %1190, %1183
  %1232 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1233 = load i32, i32* %22, align 4
  %1234 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %1232, i32 %1233, i32 11, i32* %14)
  store i32 %1234, i32* %18, align 4
  %1235 = load i32, i32* %14, align 4
  %1236 = load i32, i32* @PCI_BASE_CLASS_STORAGE, align 4
  %1237 = icmp eq i32 %1235, %1236
  br i1 %1237, label %1238, label %1240

1238:                                             ; preds = %1231
  %1239 = load i32, i32* @cpqhp_disk_irq, align 4
  store i32 %1239, i32* %11, align 4
  br label %1242

1240:                                             ; preds = %1231
  %1241 = load i32, i32* @cpqhp_nic_irq, align 4
  store i32 %1241, i32* %11, align 4
  br label %1242

1242:                                             ; preds = %1240, %1238
  br label %1243

1243:                                             ; preds = %1242, %1213
  %1244 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1245 = load i32, i32* %22, align 4
  %1246 = load i32, i32* @PCI_INTERRUPT_LINE, align 4
  %1247 = load i32, i32* %11, align 4
  %1248 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %1244, i32 %1245, i32 %1246, i32 %1247)
  store i32 %1248, i32* %18, align 4
  br label %1249

1249:                                             ; preds = %1243, %1180
  %1250 = load i32, i32* %8, align 4
  %1251 = icmp ne i32 %1250, 0
  br i1 %1251, label %1266, label %1252

1252:                                             ; preds = %1249
  %1253 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1254 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1253, i32 0, i32 0
  %1255 = load i32, i32* %1254, align 8
  %1256 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1257 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1256, i32 0, i32 1
  %1258 = load i32, i32* %1257, align 4
  %1259 = load i32, i32* %12, align 4
  %1260 = load i32, i32* %11, align 4
  %1261 = call i32 @cpqhp_set_irq(i32 %1255, i32 %1258, i32 %1259, i32 %1260)
  store i32 %1261, i32* %18, align 4
  %1262 = load i32, i32* %18, align 4
  %1263 = icmp ne i32 %1262, 0
  br i1 %1263, label %1264, label %1265

1264:                                             ; preds = %1252
  store i32 1, i32* %5, align 4
  br label %1346

1265:                                             ; preds = %1252
  br label %1300

1266:                                             ; preds = %1249
  %1267 = load i32, i32* %11, align 4
  %1268 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1269 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1268, i32 0, i32 4
  %1270 = load %struct.irq_mapping*, %struct.irq_mapping** %1269, align 8
  %1271 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1270, i32 0, i32 1
  %1272 = load i32*, i32** %1271, align 8
  %1273 = load i32, i32* %12, align 4
  %1274 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1275 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1274, i32 0, i32 4
  %1276 = load %struct.irq_mapping*, %struct.irq_mapping** %1275, align 8
  %1277 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1276, i32 0, i32 0
  %1278 = load i32, i32* %1277, align 8
  %1279 = add nsw i32 %1273, %1278
  %1280 = sub nsw i32 %1279, 1
  %1281 = and i32 %1280, 3
  %1282 = sext i32 %1281 to i64
  %1283 = getelementptr inbounds i32, i32* %1272, i64 %1282
  store i32 %1267, i32* %1283, align 4
  %1284 = load i32, i32* %12, align 4
  %1285 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1286 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1285, i32 0, i32 4
  %1287 = load %struct.irq_mapping*, %struct.irq_mapping** %1286, align 8
  %1288 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1287, i32 0, i32 0
  %1289 = load i32, i32* %1288, align 8
  %1290 = add nsw i32 %1284, %1289
  %1291 = sub nsw i32 %1290, 1
  %1292 = shl i32 1, %1291
  %1293 = and i32 %1292, 3
  %1294 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1295 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1294, i32 0, i32 4
  %1296 = load %struct.irq_mapping*, %struct.irq_mapping** %1295, align 8
  %1297 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1296, i32 0, i32 2
  %1298 = load i32, i32* %1297, align 8
  %1299 = or i32 %1298, %1293
  store i32 %1299, i32* %1297, align 8
  br label %1300

1300:                                             ; preds = %1266, %1265
  store i32 64, i32* %12, align 4
  %1301 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1302 = load i32, i32* %22, align 4
  %1303 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %1304 = load i32, i32* %12, align 4
  %1305 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %1301, i32 %1302, i32 %1303, i32 %1304)
  store i32 %1305, i32* %18, align 4
  store i32 8, i32* %12, align 4
  %1306 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1307 = load i32, i32* %22, align 4
  %1308 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %1309 = load i32, i32* %12, align 4
  %1310 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %1306, i32 %1307, i32 %1308, i32 %1309)
  store i32 %1310, i32* %18, align 4
  store i32 0, i32* %17, align 4
  %1311 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1312 = load i32, i32* %22, align 4
  %1313 = load i32, i32* @PCI_ROM_ADDRESS, align 4
  %1314 = load i32, i32* %17, align 4
  %1315 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %1311, i32 %1312, i32 %1313, i32 %1314)
  store i32 %1315, i32* %18, align 4
  store i32 343, i32* %16, align 4
  %1316 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1317 = load i32, i32* %22, align 4
  %1318 = load i32, i32* @PCI_COMMAND, align 4
  %1319 = load i32, i32* %16, align 4
  %1320 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %1316, i32 %1317, i32 %1318, i32 %1319)
  store i32 %1320, i32* %18, align 4
  br label %1323

1321:                                             ; preds = %996
  %1322 = load i32, i32* @DEVICE_TYPE_NOT_SUPPORTED, align 4
  store i32 %1322, i32* %5, align 4
  br label %1346

1323:                                             ; preds = %1300
  br label %1324

1324:                                             ; preds = %1323, %985
  %1325 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1326 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1325, i32 0, i32 3
  store i32 1, i32* %1326, align 4
  store i32 0, i32* %5, align 4
  br label %1346

1327:                                             ; preds = %589, %504
  %1328 = call i32 @cpqhp_destroy_resource_list(%struct.resource_lists* %34)
  %1329 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1330 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1329, i32 0, i32 3
  %1331 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %1332 = call i32 @return_resource(%struct.pci_resource** %1330, %struct.pci_resource* %1331)
  %1333 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1334 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1333, i32 0, i32 2
  %1335 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %1336 = call i32 @return_resource(%struct.pci_resource** %1334, %struct.pci_resource* %1335)
  %1337 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1338 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1337, i32 0, i32 1
  %1339 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %1340 = call i32 @return_resource(%struct.pci_resource** %1338, %struct.pci_resource* %1339)
  %1341 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1342 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1341, i32 0, i32 0
  %1343 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %1344 = call i32 @return_resource(%struct.pci_resource** %1342, %struct.pci_resource* %1343)
  %1345 = load i32, i32* %18, align 4
  store i32 %1345, i32* %5, align 4
  br label %1346

1346:                                             ; preds = %1327, %1324, %1321, %1264, %1153, %1149, %1114, %1053, %1008, %326, %187, %178, %169, %161, %151, %141, %131, %104, %86, %77, %56
  %1347 = load i32, i32* %5, align 4
  ret i32 %1347
}

declare dso_local i32 @PCI_DEVFN(i32, i64) #1

declare dso_local i32 @pci_bus_read_config_byte(%struct.pci_bus*, i32, i32, i32*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @pci_bus_write_config_byte(%struct.pci_bus*, i32, i32, i32) #1

declare dso_local %struct.pci_resource* @get_max_resource(%struct.pci_resource**, i32) #1

declare dso_local %struct.pci_resource* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.pci_resource*) #1

declare dso_local i32 @memcpy(%struct.pci_resource*, %struct.pci_resource*, i32) #1

declare dso_local i32 @pci_bus_write_config_word(%struct.pci_bus*, i32, i32, i32) #1

declare dso_local i32 @pci_bus_read_config_dword(%struct.pci_bus*, i32, i32, i32*) #1

declare dso_local %struct.pci_func* @cpqhp_slot_create(i32) #1

declare dso_local i32 @configure_new_device(%struct.controller*, %struct.pci_func*, i32, %struct.resource_lists*) #1

declare dso_local i32 @cpqhp_set_irq(i32, i32, i32, i32) #1

declare dso_local i32 @return_resource(%struct.pci_resource**, %struct.pci_resource*) #1

declare dso_local %struct.pci_resource* @do_pre_bridge_resource_split(%struct.pci_resource**, %struct.pci_resource**, i32) #1

declare dso_local %struct.pci_resource* @do_bridge_resource_split(%struct.pci_resource**, i32) #1

declare dso_local i32 @pci_bus_write_config_dword(%struct.pci_bus*, i32, i32, i32) #1

declare dso_local %struct.pci_resource* @get_io_resource(%struct.pci_resource**, i32) #1

declare dso_local %struct.pci_resource* @get_resource(%struct.pci_resource**, i32) #1

declare dso_local i32 @cpqhp_destroy_resource_list(%struct.resource_lists*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
