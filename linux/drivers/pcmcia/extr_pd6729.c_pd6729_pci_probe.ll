; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pd6729.c_pd6729_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pd6729.c_pd6729_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.pci_device_id = type { i32 }
%struct.pd6729_socket = type { i32, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i64, %struct.pd6729_socket*, %struct.TYPE_4__, i32*, i32*, i32, %struct.pci_dev*, i64 }
%struct.TYPE_4__ = type { i32* }

@MAX_SOCKETS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to kzalloc socket.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to enable pci_device.\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"refusing to load the driver as the io_base is NULL.\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Cirrus PD6729 PCI to PCMCIA Bridge at 0x%llx on irq %d\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"pd6729: Enabling PCI_COMMAND_MEMORY.\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"pd6729\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"pci request region failed.\0A\00", align 1
@NO_IRQ = common dso_local global i64 0, align 8
@irq_mode = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"no ISA interrupt is available.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SS_CAP_PAGE_REGS = common dso_local global i32 0, align 4
@SS_CAP_PCCARD = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@pd6729_operations = common dso_local global i32 0, align 4
@pccard_nonstatic_ops = common dso_local global i32 0, align 4
@pd6729_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to register irq %d\0A\00", align 1
@pd6729_interrupt_wrapper = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"pcmcia_register_socket failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pd6729_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd6729_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.pd6729_socket*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %12 = load i32, i32* @MAX_SOCKETS, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.pd6729_socket* @kcalloc(i32 %12, i32 88, i32 %13)
  store %struct.pd6729_socket* %14, %struct.pd6729_socket** %11, align 8
  %15 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %16 = icmp ne %struct.pd6729_socket* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = call i32 @dev_warn(i32* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %300

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @pci_enable_device(%struct.pci_dev* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  %31 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %296

32:                                               ; preds = %23
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i64 @pci_resource_start(%struct.pci_dev* %33, i32 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 1
  %39 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %293

42:                                               ; preds = %32
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 1
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = call i64 @pci_resource_start(%struct.pci_dev* %45, i32 0)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %46, i64 %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = load i32, i32* @PCI_COMMAND, align 4
  %53 = call i32 @pci_read_config_byte(%struct.pci_dev* %51, i32 %52, i8* %10)
  %54 = load i8, i8* %10, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @PCI_COMMAND_MEMORY, align 1
  %57 = sext i8 %56 to i32
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %42
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 1
  %63 = call i32 @dev_dbg(i32* %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i8, i8* @PCI_COMMAND_MEMORY, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* %10, align 1
  %67 = sext i8 %66 to i32
  %68 = or i32 %67, %65
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %10, align 1
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = load i32, i32* @PCI_COMMAND, align 4
  %72 = load i8, i8* %10, align 1
  %73 = call i32 @pci_write_config_byte(%struct.pci_dev* %70, i32 %71, i8 signext %72)
  br label %74

74:                                               ; preds = %60, %42
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = call i32 @pci_request_regions(%struct.pci_dev* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 1
  %82 = call i32 @dev_warn(i32* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %293

83:                                               ; preds = %74
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NO_IRQ, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* @irq_mode, align 4
  br label %90

90:                                               ; preds = %89, %83
  %91 = call i64 (...) @pd6729_isa_scan()
  store i64 %91, i64* %9, align 8
  %92 = load i32, i32* @irq_mode, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i64, i64* %9, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 1
  %100 = call i32 @dev_warn(i32* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %8, align 4
  br label %290

103:                                              ; preds = %94, %90
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %200, %103
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @MAX_SOCKETS, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %203

108:                                              ; preds = %104
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = call i64 @pci_resource_start(%struct.pci_dev* %109, i32 0)
  %111 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %111, i64 %113
  %115 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %114, i32 0, i32 3
  store i64 %110, i64* %115, align 8
  %116 = load i32, i32* @SS_CAP_PAGE_REGS, align 4
  %117 = load i32, i32* @SS_CAP_PCCARD, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %119, i64 %121
  %123 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %118
  store i32 %126, i32* %124, align 8
  %127 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %127, i64 %129
  %131 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  store i32 4096, i32* %132, align 4
  %133 = load i64, i64* %9, align 8
  %134 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %134, i64 %136
  %138 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 9
  store i64 %133, i64* %139, align 8
  %140 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %141 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %143, i64 %145
  %147 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  store i64 %142, i64* %148, align 8
  %149 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %150 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %150, i64 %152
  %154 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 8
  store %struct.pci_dev* %149, %struct.pci_dev** %155, align 8
  %156 = load i32, i32* @THIS_MODULE, align 4
  %157 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %157, i64 %159
  %161 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 7
  store i32 %156, i32* %162, align 8
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %164, i64 %166
  %168 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %167, i32 0, i32 0
  store i32 %163, i32* %168, align 8
  %169 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %169, i64 %171
  %173 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 6
  store i32* @pd6729_operations, i32** %174, align 8
  %175 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %175, i64 %177
  %179 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 5
  store i32* @pccard_nonstatic_ops, i32** %180, align 8
  %181 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %182 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %181, i32 0, i32 1
  %183 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %183, i64 %185
  %187 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  store i32* %182, i32** %189, align 8
  %190 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %190, i64 %192
  %194 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %194, i64 %196
  %198 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  store %struct.pd6729_socket* %193, %struct.pd6729_socket** %199, align 8
  br label %200

200:                                              ; preds = %108
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %6, align 4
  br label %104

203:                                              ; preds = %104
  %204 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %205 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %206 = call i32 @pci_set_drvdata(%struct.pci_dev* %204, %struct.pd6729_socket* %205)
  %207 = load i32, i32* @irq_mode, align 4
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %227

209:                                              ; preds = %203
  %210 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %211 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* @pd6729_interrupt, align 4
  %214 = load i32, i32* @IRQF_SHARED, align 4
  %215 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %216 = call i32 @request_irq(i64 %212, i32 %213, i32 %214, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.pd6729_socket* %215)
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %209
  %220 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %221 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %220, i32 0, i32 1
  %222 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %223 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @dev_err(i32* %221, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %224)
  br label %290

226:                                              ; preds = %209
  br label %238

227:                                              ; preds = %203
  %228 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %229 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %228, i32 0, i32 1
  %230 = load i32, i32* @pd6729_interrupt_wrapper, align 4
  %231 = call i32 @timer_setup(i32* %229, i32 %230, i32 0)
  %232 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %233 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %232, i32 0, i32 1
  %234 = load i64, i64* @jiffies, align 8
  %235 = load i64, i64* @HZ, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @mod_timer(i32* %233, i64 %236)
  br label %238

238:                                              ; preds = %227, %226
  store i32 0, i32* %6, align 4
  br label %239

239:                                              ; preds = %272, %238
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* @MAX_SOCKETS, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %275

243:                                              ; preds = %239
  %244 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %244, i64 %246
  %248 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %247, i32 0, i32 2
  %249 = call i32 @pcmcia_register_socket(%struct.TYPE_5__* %248)
  store i32 %249, i32* %8, align 4
  %250 = load i32, i32* %8, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %271

252:                                              ; preds = %243
  %253 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %254 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %253, i32 0, i32 1
  %255 = call i32 @dev_warn(i32* %254, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %256

256:                                              ; preds = %267, %252
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* %6, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %270

260:                                              ; preds = %256
  %261 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %262 = load i32, i32* %7, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %261, i64 %263
  %265 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %264, i32 0, i32 2
  %266 = call i32 @pcmcia_unregister_socket(%struct.TYPE_5__* %265)
  br label %267

267:                                              ; preds = %260
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %7, align 4
  br label %256

270:                                              ; preds = %256
  br label %276

271:                                              ; preds = %243
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %6, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %6, align 4
  br label %239

275:                                              ; preds = %239
  store i32 0, i32* %3, align 4
  br label %300

276:                                              ; preds = %270
  %277 = load i32, i32* @irq_mode, align 4
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %279, label %285

279:                                              ; preds = %276
  %280 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %281 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %284 = call i32 @free_irq(i64 %282, %struct.pd6729_socket* %283)
  br label %289

285:                                              ; preds = %276
  %286 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %287 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %286, i32 0, i32 1
  %288 = call i32 @del_timer_sync(i32* %287)
  br label %289

289:                                              ; preds = %285, %279
  br label %290

290:                                              ; preds = %289, %219, %97
  %291 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %292 = call i32 @pci_release_regions(%struct.pci_dev* %291)
  br label %293

293:                                              ; preds = %290, %79, %36
  %294 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %295 = call i32 @pci_disable_device(%struct.pci_dev* %294)
  br label %296

296:                                              ; preds = %293, %28
  %297 = load %struct.pd6729_socket*, %struct.pd6729_socket** %11, align 8
  %298 = call i32 @kfree(%struct.pd6729_socket* %297)
  %299 = load i32, i32* %8, align 4
  store i32 %299, i32* %3, align 4
  br label %300

300:                                              ; preds = %296, %275, %17
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local %struct.pd6729_socket* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 signext) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i64 @pd6729_isa_scan(...) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.pd6729_socket*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.pd6729_socket*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @pcmcia_register_socket(%struct.TYPE_5__*) #1

declare dso_local i32 @pcmcia_unregister_socket(%struct.TYPE_5__*) #1

declare dso_local i32 @free_irq(i64, %struct.pd6729_socket*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.pd6729_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
