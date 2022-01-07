; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32, i32, i8* }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.fb_info = type { i32, i32, i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_8__, %struct.TYPE_9__, i32, i32, i32*, %struct.i740fb_par* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.i740fb_par = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_videomode = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@i740fb_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot enable PCI device\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"error requesting regions\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"error remapping base\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"error remapping MMIO\0A\00", align 1
@XRX = common dso_local global i64 0, align 8
@DRAM_ROW_TYPE = common dso_local global i32 0, align 4
@DRAM_ROW_1 = common dso_local global i32 0, align 4
@DRAM_ROW_1_SDRAM = common dso_local global i32 0, align 4
@DRAM_ROW_BNDRY_1 = common dso_local global i32 0, align 4
@DRAM_ROW_BNDRY_0 = common dso_local global i32 0, align 4
@DRAM_ROW_CNTL_LO = common dso_local global i32 0, align 4
@DRAM_RAS_TIMING = common dso_local global i32 0, align 4
@DRAM_RAS_PRECHARGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Intel740 on %s, %ld KB %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SGRAM\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"SDRAM\00", align 1
@i740fb_fix = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"error getting mode database\0A\00", align 1
@mode_option = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"640x480-8@60\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"mode %s not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"cannot allocate colormap\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"error registering framebuffer\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"%s frame buffer device\0A\00", align 1
@mtrr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @i740fb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i740fb_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.i740fb_par*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.fb_videomode*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call %struct.fb_info* @framebuffer_alloc(i32 28, i32* %14)
  store %struct.fb_info* %15, %struct.fb_info** %6, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %17 = icmp ne %struct.fb_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %403

21:                                               ; preds = %2
  %22 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 11
  %24 = load %struct.i740fb_par*, %struct.i740fb_par** %23, align 8
  store %struct.i740fb_par* %24, %struct.i740fb_par** %7, align 8
  %25 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %26 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %25, i32 0, i32 6
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %29 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 8, i32* %34, align 4
  %35 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 10
  store i32* @i740fb_ops, i32** %36, align 8
  %37 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %38 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i32 @pci_enable_device(%struct.pci_dev* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %21
  %47 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %399

51:                                               ; preds = %21
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pci_request_regions(%struct.pci_dev* %52, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %398

65:                                               ; preds = %51
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = call i32 @pci_ioremap_wc_bar(%struct.pci_dev* %66, i32 0)
  %68 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %65
  %75 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  br label %395

81:                                               ; preds = %65
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = call i32 @pci_ioremap_bar(%struct.pci_dev* %82, i32 1)
  %84 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %85 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %87 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %81
  %91 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, i8*, ...) @dev_err(i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %389

97:                                               ; preds = %81
  %98 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %99 = load i64, i64* @XRX, align 8
  %100 = load i32, i32* @DRAM_ROW_TYPE, align 4
  %101 = call i32 @i740inreg(%struct.i740fb_par* %98, i64 %99, i32 %100)
  %102 = load i32, i32* @DRAM_ROW_1, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @DRAM_ROW_1_SDRAM, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %97
  %107 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %108 = load i64, i64* @XRX, align 8
  %109 = load i32, i32* @DRAM_ROW_BNDRY_1, align 4
  %110 = call i32 @i740outb(%struct.i740fb_par* %107, i64 %108, i32 %109)
  br label %116

111:                                              ; preds = %97
  %112 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %113 = load i64, i64* @XRX, align 8
  %114 = load i32, i32* @DRAM_ROW_BNDRY_0, align 4
  %115 = call i32 @i740outb(%struct.i740fb_par* %112, i64 %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %106
  %117 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %118 = load i64, i64* @XRX, align 8
  %119 = add nsw i64 %118, 1
  %120 = call i32 @i740inb(%struct.i740fb_par* %117, i64 %119)
  %121 = mul nsw i32 %120, 1024
  %122 = mul nsw i32 %121, 1024
  %123 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %124 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %126 = load i64, i64* @XRX, align 8
  %127 = load i32, i32* @DRAM_ROW_CNTL_LO, align 4
  %128 = call i32 @i740inreg(%struct.i740fb_par* %125, i64 %126, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @DRAM_RAS_TIMING, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %116
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @DRAM_RAS_PRECHARGE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br label %138

138:                                              ; preds = %133, %116
  %139 = phi i1 [ true, %116 ], [ %137, %133 ]
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %143 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %145 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %146 = call i32 @pci_name(%struct.pci_dev* %145)
  %147 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %148 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = ashr i32 %149, 10
  %151 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %152 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %157 = call i32 (%struct.fb_info*, i8*, i32, ...) @fb_info(%struct.fb_info* %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %146, i32 %150, i8* %156)
  %158 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %159 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %158, i32 0, i32 4
  %160 = bitcast %struct.TYPE_7__* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 bitcast (%struct.TYPE_7__* @i740fb_fix to i8*), i64 32, i1 false)
  %161 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %162 = call i8* @pci_resource_start(%struct.pci_dev* %161, i32 1)
  %163 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 4
  store i8* %162, i8** %165, align 8
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = call i32 @pci_resource_len(%struct.pci_dev* %166, i32 1)
  %168 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %169 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  store i32 %167, i32* %170, align 4
  %171 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %172 = call i8* @pci_resource_start(%struct.pci_dev* %171, i32 0)
  %173 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %174 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  store i8* %172, i8** %175, align 8
  %176 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %177 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %180 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 8
  %182 = load i32, i32* @FBINFO_DEFAULT, align 4
  %183 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %186 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %188 = call i64 @i740fb_setup_ddc_bus(%struct.fb_info* %187)
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %249

190:                                              ; preds = %138
  %191 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %192 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %191, i32 0, i32 1
  store i32 1, i32* %192, align 4
  %193 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %194 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %193, i32 0, i32 3
  %195 = call i32* @fb_ddc_read(i32* %194)
  store i32* %195, i32** %11, align 8
  %196 = load i32*, i32** %11, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %248

198:                                              ; preds = %190
  %199 = load i32*, i32** %11, align 8
  %200 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %201 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %200, i32 0, i32 7
  %202 = call i32 @fb_edid_to_monspecs(i32* %199, %struct.TYPE_9__* %201)
  %203 = load i32*, i32** %11, align 8
  %204 = call i32 @kfree(i32* %203)
  %205 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %206 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %205, i32 0, i32 7
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %215, label %210

210:                                              ; preds = %198
  %211 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %212 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i32, i8*, ...) @dev_err(i32 %213, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %247

215:                                              ; preds = %198
  %216 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %217 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %216, i32 0, i32 7
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %221 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %220, i32 0, i32 7
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %225 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %224, i32 0, i32 8
  %226 = call i32 @fb_videomode_to_modelist(i32* %219, i32 %223, i32* %225)
  %227 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %228 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %227, i32 0, i32 7
  %229 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %230 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %229, i32 0, i32 8
  %231 = call %struct.fb_videomode* @fb_find_best_display(%struct.TYPE_9__* %228, i32* %230)
  store %struct.fb_videomode* %231, %struct.fb_videomode** %12, align 8
  %232 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %233 = icmp ne %struct.fb_videomode* %232, null
  br i1 %233, label %234, label %246

234:                                              ; preds = %215
  %235 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %236 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %235, i32 0, i32 6
  %237 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %238 = call i32 @fb_videomode_to_var(%struct.TYPE_8__* %236, %struct.fb_videomode* %237)
  %239 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %240 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %239, i32 0, i32 6
  %241 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %242 = call i32 @i740fb_check_var(%struct.TYPE_8__* %240, %struct.fb_info* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %234
  store i32 1, i32* %10, align 4
  br label %245

245:                                              ; preds = %244, %234
  br label %246

246:                                              ; preds = %245, %215
  br label %247

247:                                              ; preds = %246, %210
  br label %248

248:                                              ; preds = %247, %190
  br label %249

249:                                              ; preds = %248, %138
  %250 = load i8*, i8** @mode_option, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %256, label %252

252:                                              ; preds = %249
  %253 = load i32, i32* %10, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %252
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** @mode_option, align 8
  br label %256

256:                                              ; preds = %255, %252, %249
  %257 = load i8*, i8** @mode_option, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %291

259:                                              ; preds = %256
  %260 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %261 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %260, i32 0, i32 6
  %262 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %263 = load i8*, i8** @mode_option, align 8
  %264 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %265 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %264, i32 0, i32 7
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %269 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %268, i32 0, i32 7
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %273 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %272, i32 0, i32 6
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @fb_find_mode(%struct.TYPE_8__* %261, %struct.fb_info* %262, i8* %263, i32* %267, i32 %271, i32* null, i32 %275)
  store i32 %276, i32* %8, align 4
  %277 = load i32, i32* %8, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %259
  %280 = load i32, i32* %8, align 4
  %281 = icmp eq i32 %280, 4
  br i1 %281, label %282, label %290

282:                                              ; preds = %279, %259
  %283 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %284 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 8
  %286 = load i8*, i8** @mode_option, align 8
  %287 = call i32 (i32, i8*, ...) @dev_err(i32 %285, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %286)
  %288 = load i32, i32* @EINVAL, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %8, align 4
  br label %290

290:                                              ; preds = %282, %279
  br label %291

291:                                              ; preds = %290, %256
  %292 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %293 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %292, i32 0, i32 7
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @fb_destroy_modedb(i32* %295)
  %297 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %298 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %297, i32 0, i32 7
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  store i32* null, i32** %299, align 8
  %300 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %301 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %300, i32 0, i32 4
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = mul nsw i32 %303, 8
  %305 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %306 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %305, i32 0, i32 6
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %310 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %309, i32 0, i32 6
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = mul nsw i32 %308, %312
  %314 = sdiv i32 %304, %313
  %315 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %316 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %315, i32 0, i32 6
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 1
  store i32 %314, i32* %317, align 4
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* @EINVAL, align 4
  %320 = sub nsw i32 0, %319
  %321 = icmp eq i32 %318, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %291
  br label %374

323:                                              ; preds = %291
  %324 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %325 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %324, i32 0, i32 3
  %326 = call i32 @fb_alloc_cmap(i32* %325, i32 256, i32 0)
  store i32 %326, i32* %8, align 4
  %327 = load i32, i32* %8, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %323
  %330 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %331 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 8
  %333 = call i32 (i32, i8*, ...) @dev_err(i32 %332, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %373

334:                                              ; preds = %323
  %335 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %336 = call i32 @register_framebuffer(%struct.fb_info* %335)
  store i32 %336, i32* %8, align 4
  %337 = load i32, i32* %8, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %341 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 8
  %343 = call i32 (i32, i8*, ...) @dev_err(i32 %342, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %369

344:                                              ; preds = %334
  %345 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %346 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %347 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %346, i32 0, i32 4
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = call i32 (%struct.fb_info*, i8*, i32, ...) @fb_info(%struct.fb_info* %345, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %349)
  %351 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %352 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %353 = call i32 @pci_set_drvdata(%struct.pci_dev* %351, %struct.fb_info* %352)
  %354 = load i64, i64* @mtrr, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %368

356:                                              ; preds = %344
  %357 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %358 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 1
  %360 = load i8*, i8** %359, align 8
  %361 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %362 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %361, i32 0, i32 4
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @arch_phys_wc_add(i8* %360, i32 %364)
  %366 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %367 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %366, i32 0, i32 4
  store i32 %365, i32* %367, align 4
  br label %368

368:                                              ; preds = %356, %344
  store i32 0, i32* %3, align 4
  br label %403

369:                                              ; preds = %339
  %370 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %371 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %370, i32 0, i32 3
  %372 = call i32 @fb_dealloc_cmap(i32* %371)
  br label %373

373:                                              ; preds = %369, %329
  br label %374

374:                                              ; preds = %373, %322
  %375 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %376 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %374
  %380 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %381 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %380, i32 0, i32 3
  %382 = call i32 @i2c_del_adapter(i32* %381)
  br label %383

383:                                              ; preds = %379, %374
  %384 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %385 = load %struct.i740fb_par*, %struct.i740fb_par** %7, align 8
  %386 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @pci_iounmap(%struct.pci_dev* %384, i32 %387)
  br label %389

389:                                              ; preds = %383, %90
  %390 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %391 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %392 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = call i32 @pci_iounmap(%struct.pci_dev* %390, i32 %393)
  br label %395

395:                                              ; preds = %389, %74
  %396 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %397 = call i32 @pci_release_regions(%struct.pci_dev* %396)
  br label %398

398:                                              ; preds = %395, %60
  br label %399

399:                                              ; preds = %398, %46
  %400 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %401 = call i32 @framebuffer_release(%struct.fb_info* %400)
  %402 = load i32, i32* %8, align 4
  store i32 %402, i32* %3, align 4
  br label %403

403:                                              ; preds = %399, %368, %18
  %404 = load i32, i32* %3, align 4
  ret i32 %404
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_wc_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @i740inreg(%struct.i740fb_par*, i64, i32) #1

declare dso_local i32 @i740outb(%struct.i740fb_par*, i64, i32) #1

declare dso_local i32 @i740inb(%struct.i740fb_par*, i64) #1

declare dso_local i32 @fb_info(%struct.fb_info*, i8*, i32, ...) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @i740fb_setup_ddc_bus(%struct.fb_info*) #1

declare dso_local i32* @fb_ddc_read(i32*) #1

declare dso_local i32 @fb_edid_to_monspecs(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @fb_videomode_to_modelist(i32*, i32, i32*) #1

declare dso_local %struct.fb_videomode* @fb_find_best_display(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @fb_videomode_to_var(%struct.TYPE_8__*, %struct.fb_videomode*) #1

declare dso_local i32 @i740fb_check_var(%struct.TYPE_8__*, %struct.fb_info*) #1

declare dso_local i32 @fb_find_mode(%struct.TYPE_8__*, %struct.fb_info*, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @fb_destroy_modedb(i32*) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.fb_info*) #1

declare dso_local i32 @arch_phys_wc_add(i8*, i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
