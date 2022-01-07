; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_configure_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_configure_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.tcmu_dev = type { i32, i32, i64, i32*, %struct.tcmu_mailbox*, %struct.uio_info, i32, i32, i8*, i8*, i8*, i64, i32 }
%struct.tcmu_mailbox = type { i32, i8*, i8*, i32 }
%struct.uio_info = type { i32*, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8*, i32, i8*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMDR_SIZE = common dso_local global i8* null, align 8
@CMDR_OFF = common dso_local global i8* null, align 8
@DATA_BLOCK_SIZE = common dso_local global i32 0, align 4
@TCMU_MAILBOX_VERSION = common dso_local global i32 0, align 4
@TCMU_MAILBOX_FLAG_CAP_OOOC = common dso_local global i32 0, align 4
@TCMU_MAILBOX_FLAG_CAP_READ_LEN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tcm-user command & data buffer\00", align 1
@UIO_MEM_NONE = common dso_local global i32 0, align 4
@tcmu_irqcontrol = common dso_local global i32 0, align 4
@UIO_IRQ_CUSTOM = common dso_local global i32 0, align 4
@tcmu_mmap = common dso_local global i32 0, align 4
@tcmu_open = common dso_local global i32 0, align 4
@tcmu_release = common dso_local global i32 0, align 4
@tcmu_root_device = common dso_local global i32 0, align 4
@tcmu_kern_cmd_reply_supported = common dso_local global i64 0, align 8
@root_udev_mutex = common dso_local global i32 0, align 4
@root_udev = common dso_local global i32 0, align 4
@tcmu_dev_kref_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*)* @tcmu_configure_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_configure_device(%struct.se_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.tcmu_dev*, align 8
  %5 = alloca %struct.uio_info*, align 8
  %6 = alloca %struct.tcmu_mailbox*, align 8
  %7 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  %8 = load %struct.se_device*, %struct.se_device** %3, align 8
  %9 = call %struct.tcmu_dev* @TCMU_DEV(%struct.se_device* %8)
  store %struct.tcmu_dev* %9, %struct.tcmu_dev** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %11 = call i32 @tcmu_update_uio_info(%struct.tcmu_dev* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %256

16:                                               ; preds = %1
  %17 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %18 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %17, i32 0, i32 5
  store %struct.uio_info* %18, %struct.uio_info** %5, align 8
  %19 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %20 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %19, i32 0, i32 12
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %23 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @bitmap_zalloc(i32 %24, i32 %25)
  %27 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %28 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %30 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %29, i32 0, i32 12
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %33 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %16
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %248

39:                                               ; preds = %16
  %40 = load i8*, i8** @CMDR_SIZE, align 8
  %41 = call %struct.tcmu_mailbox* @vzalloc(i8* %40)
  %42 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %43 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %42, i32 0, i32 4
  store %struct.tcmu_mailbox* %41, %struct.tcmu_mailbox** %43, align 8
  %44 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %45 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %44, i32 0, i32 4
  %46 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %45, align 8
  %47 = icmp ne %struct.tcmu_mailbox* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %241

51:                                               ; preds = %39
  %52 = load i8*, i8** @CMDR_SIZE, align 8
  %53 = load i8*, i8** @CMDR_OFF, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %59 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %58, i32 0, i32 10
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @CMDR_SIZE, align 8
  %61 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %62 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %61, i32 0, i32 9
  store i8* %60, i8** %62, align 8
  %63 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %64 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @DATA_BLOCK_SIZE, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %69 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %71 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %70, i32 0, i32 11
  store i64 0, i64* %71, align 8
  %72 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %73 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %72, i32 0, i32 4
  %74 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %73, align 8
  store %struct.tcmu_mailbox* %74, %struct.tcmu_mailbox** %6, align 8
  %75 = load i32, i32* @TCMU_MAILBOX_VERSION, align 4
  %76 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %6, align 8
  %77 = getelementptr inbounds %struct.tcmu_mailbox, %struct.tcmu_mailbox* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @TCMU_MAILBOX_FLAG_CAP_OOOC, align 4
  %79 = load i32, i32* @TCMU_MAILBOX_FLAG_CAP_READ_LEN, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %6, align 8
  %82 = getelementptr inbounds %struct.tcmu_mailbox, %struct.tcmu_mailbox* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i8*, i8** @CMDR_OFF, align 8
  %84 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %6, align 8
  %85 = getelementptr inbounds %struct.tcmu_mailbox, %struct.tcmu_mailbox* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %87 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %86, i32 0, i32 10
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %6, align 8
  %90 = getelementptr inbounds %struct.tcmu_mailbox, %struct.tcmu_mailbox* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %92 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %91, i32 0, i32 9
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PAGE_ALIGNED(i8* %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @WARN_ON(i32 %97)
  %99 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %100 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = srem i32 %101, %102
  %104 = call i32 @WARN_ON(i32 %103)
  %105 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %106 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @DATA_BLOCK_SIZE, align 4
  %109 = srem i32 %107, %108
  %110 = call i32 @WARN_ON(i32 %109)
  %111 = load i32, i32* @TCMU_MAILBOX_VERSION, align 4
  %112 = call i32 @__stringify(i32 %111)
  %113 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %114 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 8
  %115 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %116 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %115, i32 0, i32 6
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %119, align 8
  %120 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %121 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %120, i32 0, i32 4
  %122 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %121, align 8
  %123 = ptrtoint %struct.tcmu_mailbox* %122 to i64
  %124 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %125 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %124, i32 0, i32 6
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  store i64 %123, i64* %128, align 8
  %129 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %130 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** @CMDR_SIZE, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr i8, i8* %132, i64 %133
  %135 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %136 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %135, i32 0, i32 8
  store i8* %134, i8** %136, align 8
  %137 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %138 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %137, i32 0, i32 6
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  store i8* %134, i8** %141, align 8
  %142 = load i32, i32* @UIO_MEM_NONE, align 4
  %143 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %144 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %143, i32 0, i32 6
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i32 %142, i32* %147, align 8
  %148 = load i32, i32* @tcmu_irqcontrol, align 4
  %149 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %150 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @UIO_IRQ_CUSTOM, align 4
  %152 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %153 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @tcmu_mmap, align 4
  %155 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %156 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @tcmu_open, align 4
  %158 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %159 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @tcmu_release, align 4
  %161 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %162 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* @tcmu_root_device, align 4
  %164 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %165 = call i32 @uio_register_device(i32 %163, %struct.uio_info* %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %51
  br label %234

169:                                              ; preds = %51
  %170 = load %struct.se_device*, %struct.se_device** %3, align 8
  %171 = getelementptr inbounds %struct.se_device, %struct.se_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load %struct.se_device*, %struct.se_device** %3, align 8
  %177 = getelementptr inbounds %struct.se_device, %struct.se_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  store i32 512, i32* %178, align 8
  br label %179

179:                                              ; preds = %175, %169
  %180 = load %struct.se_device*, %struct.se_device** %3, align 8
  %181 = getelementptr inbounds %struct.se_device, %struct.se_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %179
  %186 = load %struct.se_device*, %struct.se_device** %3, align 8
  %187 = getelementptr inbounds %struct.se_device, %struct.se_device* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  store i32 128, i32* %188, align 4
  br label %189

189:                                              ; preds = %185, %179
  %190 = load %struct.se_device*, %struct.se_device** %3, align 8
  %191 = getelementptr inbounds %struct.se_device, %struct.se_device* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %189
  %196 = load %struct.se_device*, %struct.se_device** %3, align 8
  %197 = getelementptr inbounds %struct.se_device, %struct.se_device* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 3
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %195, %189
  %200 = load %struct.se_device*, %struct.se_device** %3, align 8
  %201 = getelementptr inbounds %struct.se_device, %struct.se_device* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 2
  store i32 128, i32* %202, align 8
  %203 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %204 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp sge i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %199
  %208 = load i64, i64* @tcmu_kern_cmd_reply_supported, align 8
  %209 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %210 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %209, i32 0, i32 2
  store i64 %208, i64* %210, align 8
  br label %211

211:                                              ; preds = %207, %199
  %212 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %213 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %212, i32 0, i32 6
  %214 = call i32 @kref_get(i32* %213)
  %215 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %216 = call i32 @tcmu_send_dev_add_event(%struct.tcmu_dev* %215)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %211
  br label %226

220:                                              ; preds = %211
  %221 = call i32 @mutex_lock(i32* @root_udev_mutex)
  %222 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %223 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %222, i32 0, i32 7
  %224 = call i32 @list_add(i32* %223, i32* @root_udev)
  %225 = call i32 @mutex_unlock(i32* @root_udev_mutex)
  store i32 0, i32* %2, align 4
  br label %256

226:                                              ; preds = %219
  %227 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %228 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %227, i32 0, i32 6
  %229 = load i32, i32* @tcmu_dev_kref_release, align 4
  %230 = call i32 @kref_put(i32* %228, i32 %229)
  %231 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %232 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %231, i32 0, i32 5
  %233 = call i32 @uio_unregister_device(%struct.uio_info* %232)
  br label %234

234:                                              ; preds = %226, %168
  %235 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %236 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %235, i32 0, i32 4
  %237 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %236, align 8
  %238 = call i32 @vfree(%struct.tcmu_mailbox* %237)
  %239 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %240 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %239, i32 0, i32 4
  store %struct.tcmu_mailbox* null, %struct.tcmu_mailbox** %240, align 8
  br label %241

241:                                              ; preds = %234, %48
  %242 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %243 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @bitmap_free(i32* %244)
  %246 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %247 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %246, i32 0, i32 3
  store i32* null, i32** %247, align 8
  br label %248

248:                                              ; preds = %241, %36
  %249 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %250 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @kfree(i32* %251)
  %253 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %254 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %253, i32 0, i32 0
  store i32* null, i32** %254, align 8
  %255 = load i32, i32* %7, align 4
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %248, %220, %14
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local %struct.tcmu_dev* @TCMU_DEV(%struct.se_device*) #1

declare dso_local i32 @tcmu_update_uio_info(%struct.tcmu_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @bitmap_zalloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tcmu_mailbox* @vzalloc(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PAGE_ALIGNED(i8*) #1

declare dso_local i32 @__stringify(i32) #1

declare dso_local i32 @uio_register_device(i32, %struct.uio_info*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @tcmu_send_dev_add_event(%struct.tcmu_dev*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @uio_unregister_device(%struct.uio_info*) #1

declare dso_local i32 @vfree(%struct.tcmu_mailbox*) #1

declare dso_local i32 @bitmap_free(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
