; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_driver.c_jsm_probe_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_driver.c_jsm_probe_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32, i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.jsm_board = type { i32, i32, i32, i32, i32, i8*, i32, i32, %struct.TYPE_3__*, i8*, %struct.pci_dev*, i8*, i32, i32 }

@jsm_probe_one.adapter_count = internal global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Device enable FAILED\0A\00", align 1
@JSM_DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"pci_request_region FAILED\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"jsm_found_board - Classic adapter\0A\00", align 1
@jsm_cls_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Card has no PCI Memory resources, failing board.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"jsm_found_board - NEO adapter\0A\00", align 1
@jsm_neo_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@ENXIO = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"JSM\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to hook IRQ %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Can't init tty devices (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Can't init uart port (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"board %d: Digi Classic/Neo (rev %d), irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @jsm_probe_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsm_probe_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jsm_board*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pci_enable_device(%struct.pci_dev* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1
  %15 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %290

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load i32, i32* @JSM_DRIVER_NAME, align 4
  %19 = call i32 @pci_request_regions(%struct.pci_dev* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %287

26:                                               ; preds = %16
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.jsm_board* @kzalloc(i32 80, i32 %27)
  store %struct.jsm_board* %28, %struct.jsm_board** %7, align 8
  %29 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %30 = icmp ne %struct.jsm_board* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %284

34:                                               ; preds = %26
  %35 = load i32, i32* @jsm_probe_one.adapter_count, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @jsm_probe_one.adapter_count, align 4
  %37 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %38 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %37, i32 0, i32 13
  store i32 %35, i32* %38, align 4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %41 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %40, i32 0, i32 10
  store %struct.pci_dev* %39, %struct.pci_dev** %41, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %54 [
    i32 133, label %45
    i32 132, label %45
    i32 131, label %45
    i32 130, label %45
    i32 129, label %45
    i32 138, label %48
    i32 137, label %48
    i32 128, label %48
    i32 143, label %48
    i32 142, label %48
    i32 141, label %48
    i32 136, label %51
    i32 135, label %51
    i32 134, label %51
    i32 140, label %51
    i32 139, label %51
  ]

45:                                               ; preds = %34, %34, %34, %34, %34
  %46 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %47 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %46, i32 0, i32 0
  store i32 2, i32* %47, align 8
  br label %57

48:                                               ; preds = %34, %34, %34, %34, %34, %34
  %49 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %50 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %49, i32 0, i32 0
  store i32 4, i32* %50, align 8
  br label %57

51:                                               ; preds = %34, %34, %34, %34, %34
  %52 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %53 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %52, i32 0, i32 0
  store i32 8, i32* %53, align 8
  br label %57

54:                                               ; preds = %34
  %55 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %56 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %51, %48, %45
  %58 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %59 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %58, i32 0, i32 12
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %65 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 4
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %70 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %204 [
    i32 138, label %74
    i32 137, label %74
    i32 136, label %74
    i32 135, label %74
    i32 133, label %149
    i32 132, label %149
    i32 131, label %149
    i32 130, label %149
    i32 129, label %149
    i32 128, label %149
    i32 143, label %149
    i32 142, label %149
    i32 141, label %149
    i32 134, label %149
    i32 140, label %149
    i32 139, label %149
  ]

74:                                               ; preds = %57, %57, %57, %57
  %75 = load i32, i32* @INIT, align 4
  %76 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %77 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %76, i32 0, i32 10
  %78 = call i32 @jsm_dbg(i32 %75, %struct.pci_dev** %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = call i8* @pci_resource_start(%struct.pci_dev* %79, i32 4)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %83 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = call i8* @pci_resource_end(%struct.pci_dev* %84, i32 4)
  %86 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %87 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %86, i32 0, i32 9
  store i8* %85, i8** %87, align 8
  %88 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %89 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %74
  %94 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %95 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, -4
  store i32 %97, i32* %95, align 4
  br label %103

98:                                               ; preds = %74
  %99 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %100 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, -16
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = call i8* @pci_resource_start(%struct.pci_dev* %104, i32 1)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %108 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = call i8* @pci_resource_end(%struct.pci_dev* %109, i32 1)
  %111 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %112 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %111, i32 0, i32 11
  store i8* %110, i8** %112, align 8
  %113 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %114 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, 65534
  %117 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %118 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %120 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %119, i32 0, i32 8
  store %struct.TYPE_3__* @jsm_cls_ops, %struct.TYPE_3__** %120, align 8
  %121 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %122 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %121, i32 0, i32 3
  store i32 8, i32* %122, align 4
  %123 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %124 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %123, i32 0, i32 4
  store i32 921600, i32* %124, align 8
  %125 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %126 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %129 = call i32 @pci_resource_len(%struct.pci_dev* %128, i32 4)
  %130 = call i8* @ioremap(i32 %127, i32 %129)
  %131 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %132 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %131, i32 0, i32 5
  store i8* %130, i8** %132, align 8
  %133 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %134 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %133, i32 0, i32 5
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %103
  %138 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %139 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %138, i32 0, i32 1
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %139, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %6, align 4
  br label %281

143:                                              ; preds = %103
  %144 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %145 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = add i32 %146, 76
  %148 = call i32 @outb(i32 67, i32 %147)
  br label %207

149:                                              ; preds = %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57
  %150 = load i32, i32* @INIT, align 4
  %151 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %152 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %151, i32 0, i32 10
  %153 = call i32 @jsm_dbg(i32 %150, %struct.pci_dev** %152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %154 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %155 = call i8* @pci_resource_start(%struct.pci_dev* %154, i32 0)
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %158 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %160 = call i8* @pci_resource_end(%struct.pci_dev* %159, i32 0)
  %161 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %162 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %161, i32 0, i32 9
  store i8* %160, i8** %162, align 8
  %163 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %164 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 1
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %149
  %169 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %170 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, -4
  store i32 %172, i32* %170, align 4
  br label %178

173:                                              ; preds = %149
  %174 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %175 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, -16
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %173, %168
  %179 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %180 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %179, i32 0, i32 8
  store %struct.TYPE_3__* @jsm_neo_ops, %struct.TYPE_3__** %180, align 8
  %181 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %182 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %181, i32 0, i32 3
  store i32 512, i32* %182, align 4
  %183 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %184 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %183, i32 0, i32 4
  store i32 921600, i32* %184, align 8
  %185 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %186 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %189 = call i32 @pci_resource_len(%struct.pci_dev* %188, i32 0)
  %190 = call i8* @ioremap(i32 %187, i32 %189)
  %191 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %192 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %191, i32 0, i32 5
  store i8* %190, i8** %192, align 8
  %193 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %194 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %193, i32 0, i32 5
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %203, label %197

197:                                              ; preds = %178
  %198 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %199 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %198, i32 0, i32 1
  %200 = call i32 (i32*, i8*, ...) @dev_err(i32* %199, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %6, align 4
  br label %281

203:                                              ; preds = %178
  br label %207

204:                                              ; preds = %57
  %205 = load i32, i32* @ENXIO, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  br label %292

207:                                              ; preds = %203, %143
  %208 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %209 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %212 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %211, i32 0, i32 8
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @IRQF_SHARED, align 4
  %217 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %218 = call i32 @request_irq(i32 %210, i32 %215, i32 %216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.jsm_board* %217)
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %207
  %222 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %223 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %222, i32 0, i32 1
  %224 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %225 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @dev_warn(i32* %223, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %226)
  br label %276

228:                                              ; preds = %207
  %229 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %230 = call i32 @jsm_tty_init(%struct.jsm_board* %229)
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %6, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %228
  %234 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %235 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %234, i32 0, i32 1
  %236 = load i32, i32* %6, align 4
  %237 = call i32 (i32*, i8*, ...) @dev_err(i32* %235, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* @ENXIO, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %6, align 4
  br label %268

240:                                              ; preds = %228
  %241 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %242 = call i32 @jsm_uart_port_init(%struct.jsm_board* %241)
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %6, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %240
  %246 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %247 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %246, i32 0, i32 1
  %248 = load i32, i32* %6, align 4
  %249 = call i32 (i32*, i8*, ...) @dev_err(i32* %247, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %248)
  %250 = load i32, i32* @ENXIO, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %6, align 4
  br label %268

252:                                              ; preds = %240
  %253 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %254 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %253, i32 0, i32 1
  %255 = load i32, i32* @jsm_probe_one.adapter_count, align 4
  %256 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %257 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %256, i32 0, i32 7
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %260 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @dev_info(i32* %254, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %255, i32 %258, i32 %261)
  %263 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %264 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %265 = call i32 @pci_set_drvdata(%struct.pci_dev* %263, %struct.jsm_board* %264)
  %266 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %267 = call i32 @pci_save_state(%struct.pci_dev* %266)
  store i32 0, i32* %3, align 4
  br label %292

268:                                              ; preds = %245, %233
  %269 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %270 = call i32 @jsm_remove_uart_port(%struct.jsm_board* %269)
  %271 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %272 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %275 = call i32 @free_irq(i32 %273, %struct.jsm_board* %274)
  br label %276

276:                                              ; preds = %268, %221
  %277 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %278 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %277, i32 0, i32 5
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @iounmap(i8* %279)
  br label %281

281:                                              ; preds = %276, %197, %137
  %282 = load %struct.jsm_board*, %struct.jsm_board** %7, align 8
  %283 = call i32 @kfree(%struct.jsm_board* %282)
  br label %284

284:                                              ; preds = %281, %31
  %285 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %286 = call i32 @pci_release_regions(%struct.pci_dev* %285)
  br label %287

287:                                              ; preds = %284, %22
  %288 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %289 = call i32 @pci_disable_device(%struct.pci_dev* %288)
  br label %290

290:                                              ; preds = %287, %12
  %291 = load i32, i32* %6, align 4
  store i32 %291, i32* %3, align 4
  br label %292

292:                                              ; preds = %290, %252, %204
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local %struct.jsm_board* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @jsm_dbg(i32, %struct.pci_dev**, i8*) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i8* @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.jsm_board*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @jsm_tty_init(%struct.jsm_board*) #1

declare dso_local i32 @jsm_uart_port_init(%struct.jsm_board*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.jsm_board*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @jsm_remove_uart_port(%struct.jsm_board*) #1

declare dso_local i32 @free_irq(i32, %struct.jsm_board*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @kfree(%struct.jsm_board*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
