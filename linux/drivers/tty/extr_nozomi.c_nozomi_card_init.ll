; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_nozomi_card_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_nozomi_card_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nozomi = type { i32, i32, %struct.nozomi*, %struct.port*, i32, i32, i64, i32, i32, %struct.pci_dev* }
%struct.port = type { i32, %struct.TYPE_4__, %struct.nozomi* }
%struct.TYPE_4__ = type { i32* }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Init, new card found\0A\00", align 1
@ndevs = common dso_local global %struct.nozomi** null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"no free tty range for this card left\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Could not allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to enable PCI Device\0A\00", align 1
@NOZOMI_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"I/O address 0x%04x already in use\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Unable to map card MMIO\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SEND_BUF_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Could not allocate send buffer?\0A\00", align 1
@PORT_MDM = common dso_local global i32 0, align 4
@MAX_PORT = common dso_local global i32 0, align 4
@FIFO_BUFFER_SIZE_UL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Could not allocate kfifo buffer\0A\00", align 1
@interrupt_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"can't request irq %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"base_addr: %p\00", align 1
@RESET = common dso_local global i64 0, align 8
@NOZOMI_STATE_ENABLED = common dso_local global i32 0, align 4
@noz_tty_port_ops = common dso_local global i32 0, align 4
@ntty_driver = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"Could not allocate tty?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @nozomi_card_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nozomi_card_init(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nozomi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.port*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.nozomi* null, %struct.nozomi** %7, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = call i32 @dev_dbg(i32* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %29, %2
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.nozomi**, %struct.nozomi*** @ndevs, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.nozomi** %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.nozomi**, %struct.nozomi*** @ndevs, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nozomi*, %struct.nozomi** %21, i64 %23
  %25 = load %struct.nozomi*, %struct.nozomi** %24, align 8
  %26 = icmp ne %struct.nozomi* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %32

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %15

32:                                               ; preds = %27, %15
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.nozomi**, %struct.nozomi*** @ndevs, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.nozomi** %34)
  %36 = icmp sge i32 %33, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %324

43:                                               ; preds = %32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.nozomi* @kzalloc(i32 56, i32 %44)
  store %struct.nozomi* %45, %struct.nozomi** %7, align 8
  %46 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %47 = icmp ne %struct.nozomi* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %321

58:                                               ; preds = %43
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %61 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %60, i32 0, i32 9
  store %struct.pci_dev* %59, %struct.pci_dev** %61, align 8
  %62 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %63 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %62, i32 0, i32 9
  %64 = load %struct.pci_dev*, %struct.pci_dev** %63, align 8
  %65 = call i32 @pci_enable_device(%struct.pci_dev* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %321

72:                                               ; preds = %58
  %73 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %74 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %73, i32 0, i32 9
  %75 = load %struct.pci_dev*, %struct.pci_dev** %74, align 8
  %76 = load i32, i32* @NOZOMI_NAME, align 4
  %77 = call i32 @pci_request_regions(%struct.pci_dev* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %318

84:                                               ; preds = %72
  %85 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %86 = call i32 @nozomi_get_card_type(%struct.nozomi* %85)
  %87 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %88 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %87, i32 0, i32 9
  %89 = load %struct.pci_dev*, %struct.pci_dev** %88, align 8
  %90 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %91 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pci_iomap(%struct.pci_dev* %89, i32 0, i32 %92)
  %94 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %95 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %97 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %84
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 0
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %315

106:                                              ; preds = %84
  %107 = load i32, i32* @SEND_BUF_MAX, align 4
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call %struct.nozomi* @kmalloc(i32 %107, i32 %108)
  %110 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %111 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %110, i32 0, i32 2
  store %struct.nozomi* %109, %struct.nozomi** %111, align 8
  %112 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %113 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %112, i32 0, i32 2
  %114 = load %struct.nozomi*, %struct.nozomi** %113, align 8
  %115 = icmp ne %struct.nozomi* %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %106
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = call i32 (i32*, i8*, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %306

122:                                              ; preds = %106
  %123 = load i32, i32* @PORT_MDM, align 4
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %147, %122
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @MAX_PORT, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %150

128:                                              ; preds = %124
  %129 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %130 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %129, i32 0, i32 3
  %131 = load %struct.port*, %struct.port** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.port, %struct.port* %131, i64 %133
  %135 = getelementptr inbounds %struct.port, %struct.port* %134, i32 0, i32 0
  %136 = load i32, i32* @FIFO_BUFFER_SIZE_UL, align 4
  %137 = load i32, i32* @GFP_KERNEL, align 4
  %138 = call i64 @kfifo_alloc(i32* %135, i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %128
  %141 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 0
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %6, align 4
  br label %288

146:                                              ; preds = %128
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %124

150:                                              ; preds = %124
  %151 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %152 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %151, i32 0, i32 7
  %153 = call i32 @spin_lock_init(i32* %152)
  %154 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %155 = call i32 @nozomi_setup_private_data(%struct.nozomi* %154)
  %156 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %157 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %156, i32 0, i32 6
  store i64 0, i64* %157, align 8
  %158 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %159 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %162 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @writew(i64 %160, i32 %163)
  %165 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %166 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @IRQF_SHARED, align 4
  %169 = load i32, i32* @NOZOMI_NAME, align 4
  %170 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %171 = call i32 @request_irq(i32 %167, i32* @interrupt_handler, i32 %168, i32 %169, %struct.nozomi* %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = call i64 @unlikely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %150
  %176 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %177 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %176, i32 0, i32 0
  %178 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %179 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32*, i8*, ...) @dev_err(i32* %177, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %180)
  br label %288

182:                                              ; preds = %150
  %183 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %184 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @DBG1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %185)
  %187 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %188 = call i32 @make_sysfs_files(%struct.nozomi* %187)
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @MAX_PORT, align 4
  %191 = mul nsw i32 %189, %190
  %192 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %193 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %195 = load %struct.nozomi**, %struct.nozomi*** @ndevs, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.nozomi*, %struct.nozomi** %195, i64 %197
  store %struct.nozomi* %194, %struct.nozomi** %198, align 8
  %199 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %200 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %201 = call i32 @pci_set_drvdata(%struct.pci_dev* %199, %struct.nozomi* %200)
  %202 = load i64, i64* @RESET, align 8
  %203 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %204 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %203, i32 0, i32 6
  store i64 %202, i64* %204, align 8
  %205 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %206 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %209 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @iowrite16(i64 %207, i32 %210)
  %212 = load i32, i32* @NOZOMI_STATE_ENABLED, align 4
  %213 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %214 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 8
  store i32 0, i32* %9, align 4
  br label %215

215:                                              ; preds = %259, %182
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @MAX_PORT, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %262

219:                                              ; preds = %215
  %220 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %221 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %220, i32 0, i32 3
  %222 = load %struct.port*, %struct.port** %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.port, %struct.port* %222, i64 %224
  store %struct.port* %225, %struct.port** %11, align 8
  %226 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %227 = load %struct.port*, %struct.port** %11, align 8
  %228 = getelementptr inbounds %struct.port, %struct.port* %227, i32 0, i32 2
  store %struct.nozomi* %226, %struct.nozomi** %228, align 8
  %229 = load %struct.port*, %struct.port** %11, align 8
  %230 = getelementptr inbounds %struct.port, %struct.port* %229, i32 0, i32 1
  %231 = call i32 @tty_port_init(%struct.TYPE_4__* %230)
  %232 = load %struct.port*, %struct.port** %11, align 8
  %233 = getelementptr inbounds %struct.port, %struct.port* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  store i32* @noz_tty_port_ops, i32** %234, align 8
  %235 = load %struct.port*, %struct.port** %11, align 8
  %236 = getelementptr inbounds %struct.port, %struct.port* %235, i32 0, i32 1
  %237 = load i32, i32* @ntty_driver, align 4
  %238 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %239 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = add nsw i32 %240, %241
  %243 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %244 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %243, i32 0, i32 0
  %245 = call %struct.device* @tty_port_register_device(%struct.TYPE_4__* %236, i32 %237, i32 %242, i32* %244)
  store %struct.device* %245, %struct.device** %10, align 8
  %246 = load %struct.device*, %struct.device** %10, align 8
  %247 = call i64 @IS_ERR(%struct.device* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %219
  %250 = load %struct.device*, %struct.device** %10, align 8
  %251 = call i32 @PTR_ERR(%struct.device* %250)
  store i32 %251, i32* %6, align 4
  %252 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %253 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %252, i32 0, i32 0
  %254 = call i32 (i32*, i8*, ...) @dev_err(i32* %253, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %255 = load %struct.port*, %struct.port** %11, align 8
  %256 = getelementptr inbounds %struct.port, %struct.port* %255, i32 0, i32 1
  %257 = call i32 @tty_port_destroy(%struct.TYPE_4__* %256)
  br label %263

258:                                              ; preds = %219
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %9, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %9, align 4
  br label %215

262:                                              ; preds = %215
  store i32 0, i32* %3, align 4
  br label %326

263:                                              ; preds = %249
  store i32 0, i32* %9, align 4
  br label %264

264:                                              ; preds = %284, %263
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* @MAX_PORT, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %287

268:                                              ; preds = %264
  %269 = load i32, i32* @ntty_driver, align 4
  %270 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %271 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %272, %273
  %275 = call i32 @tty_unregister_device(i32 %269, i32 %274)
  %276 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %277 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %276, i32 0, i32 3
  %278 = load %struct.port*, %struct.port** %277, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.port, %struct.port* %278, i64 %280
  %282 = getelementptr inbounds %struct.port, %struct.port* %281, i32 0, i32 1
  %283 = call i32 @tty_port_destroy(%struct.TYPE_4__* %282)
  br label %284

284:                                              ; preds = %268
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %9, align 4
  br label %264

287:                                              ; preds = %264
  br label %288

288:                                              ; preds = %287, %175, %140
  store i32 0, i32* %9, align 4
  br label %289

289:                                              ; preds = %302, %288
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* @MAX_PORT, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %305

293:                                              ; preds = %289
  %294 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %295 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %294, i32 0, i32 3
  %296 = load %struct.port*, %struct.port** %295, align 8
  %297 = load i32, i32* %9, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.port, %struct.port* %296, i64 %298
  %300 = getelementptr inbounds %struct.port, %struct.port* %299, i32 0, i32 0
  %301 = call i32 @kfifo_free(i32* %300)
  br label %302

302:                                              ; preds = %293
  %303 = load i32, i32* %9, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %9, align 4
  br label %289

305:                                              ; preds = %289
  br label %306

306:                                              ; preds = %305, %116
  %307 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %308 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %307, i32 0, i32 2
  %309 = load %struct.nozomi*, %struct.nozomi** %308, align 8
  %310 = call i32 @kfree(%struct.nozomi* %309)
  %311 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %312 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @iounmap(i32 %313)
  br label %315

315:                                              ; preds = %306, %100
  %316 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %317 = call i32 @pci_release_regions(%struct.pci_dev* %316)
  br label %318

318:                                              ; preds = %315, %80
  %319 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %320 = call i32 @pci_disable_device(%struct.pci_dev* %319)
  br label %321

321:                                              ; preds = %318, %68, %52
  %322 = load %struct.nozomi*, %struct.nozomi** %7, align 8
  %323 = call i32 @kfree(%struct.nozomi* %322)
  br label %324

324:                                              ; preds = %321, %37
  %325 = load i32, i32* %6, align 4
  store i32 %325, i32* %3, align 4
  br label %326

326:                                              ; preds = %324, %262
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.nozomi**) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.nozomi* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @nozomi_get_card_type(%struct.nozomi*) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local %struct.nozomi* @kmalloc(i32, i32) #1

declare dso_local i64 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nozomi_setup_private_data(%struct.nozomi*) #1

declare dso_local i32 @writew(i64, i32) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.nozomi*) #1

declare dso_local i32 @DBG1(i8*, i32) #1

declare dso_local i32 @make_sysfs_files(%struct.nozomi*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.nozomi*) #1

declare dso_local i32 @iowrite16(i64, i32) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_4__*) #1

declare dso_local %struct.device* @tty_port_register_device(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @tty_port_destroy(%struct.TYPE_4__*) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @kfree(%struct.nozomi*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
