; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savage_init_fb_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savage_init_fb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32, %struct.TYPE_5__, i32, i32*, %struct.TYPE_4__, %struct.TYPE_6__, %struct.savagefb_par* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i32 }
%struct.savagefb_par = type { i64, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@S3_SUPERSAVAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"SuperSavage\00", align 1
@S3_SAVAGE4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Savage4\00", align 1
@S3_SAVAGE3D = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"Savage3D\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Savage3D-MV\00", align 1
@S3_SAVAGE2000 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"Savage2000\00", align 1
@S3_SAVAGE_MX = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"Savage/MX-MV\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Savage/MX\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Savage/IX-MV\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Savage/IX\00", align 1
@S3_PROSAVAGE = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"ProSavagePM\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"ProSavageKM\00", align 1
@S3_TWISTER = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"TwisterP\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"TwisterK\00", align 1
@S3_PROSAVAGEDDR = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"ProSavageDDR\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"ProSavage8\00", align 1
@savage3D_waitidle = common dso_local global i32 0, align 4
@savage3D_waitfifo = common dso_local global i32 0, align 4
@savage4_waitidle = common dso_local global i32 0, align 4
@savage4_waitfifo = common dso_local global i32 0, align 4
@savage2000_waitidle = common dso_local global i32 0, align 4
@savage2000_waitfifo = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@savagefb_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_XPAN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_COPYAREA = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_FILLRECT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_IMAGEBLIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NR_PALETTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.pci_dev*, %struct.pci_device_id*)* @savage_init_fb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savage_init_fb_info(%struct.fb_info* %0, %struct.pci_dev* %1, %struct.pci_device_id* %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_device_id*, align 8
  %7 = alloca %struct.savagefb_par*, align 8
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store %struct.pci_device_id* %2, %struct.pci_device_id** %6, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 7
  %11 = load %struct.savagefb_par*, %struct.savagefb_par** %10, align 8
  store %struct.savagefb_par* %11, %struct.savagefb_par** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %14 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %13, i32 0, i32 4
  store %struct.pci_dev* %12, %struct.pci_dev** %14, align 8
  %15 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %16 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 5
  store i32 %15, i32* %18, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %29 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %185 [
    i32 128, label %38
    i32 133, label %47
    i32 135, label %56
    i32 134, label %66
    i32 136, label %76
    i32 129, label %85
    i32 130, label %95
    i32 131, label %105
    i32 132, label %115
    i32 139, label %125
    i32 140, label %135
    i32 137, label %145
    i32 138, label %155
    i32 142, label %165
    i32 141, label %175
  ]

38:                                               ; preds = %3
  %39 = load i64, i64* @S3_SUPERSAVAGE, align 8
  %40 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %41 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @snprintf(i32 %45, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %185

47:                                               ; preds = %3
  %48 = load i64, i64* @S3_SAVAGE4, align 8
  %49 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %50 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snprintf(i32 %54, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %185

56:                                               ; preds = %3
  %57 = load i8*, i8** @S3_SAVAGE3D, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %60 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @snprintf(i32 %64, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %185

66:                                               ; preds = %3
  %67 = load i8*, i8** @S3_SAVAGE3D, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %70 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @snprintf(i32 %74, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %185

76:                                               ; preds = %3
  %77 = load i64, i64* @S3_SAVAGE2000, align 8
  %78 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %79 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @snprintf(i32 %83, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %185

85:                                               ; preds = %3
  %86 = load i8*, i8** @S3_SAVAGE_MX, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %89 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @snprintf(i32 %93, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %185

95:                                               ; preds = %3
  %96 = load i8*, i8** @S3_SAVAGE_MX, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %99 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @snprintf(i32 %103, i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %185

105:                                              ; preds = %3
  %106 = load i8*, i8** @S3_SAVAGE_MX, align 8
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %109 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @snprintf(i32 %113, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %185

115:                                              ; preds = %3
  %116 = load i8*, i8** @S3_SAVAGE_MX, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %119 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @snprintf(i32 %123, i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %185

125:                                              ; preds = %3
  %126 = load i8*, i8** @S3_PROSAVAGE, align 8
  %127 = ptrtoint i8* %126 to i64
  %128 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %129 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %131 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @snprintf(i32 %133, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %185

135:                                              ; preds = %3
  %136 = load i8*, i8** @S3_PROSAVAGE, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %139 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %141 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @snprintf(i32 %143, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %185

145:                                              ; preds = %3
  %146 = load i8*, i8** @S3_TWISTER, align 8
  %147 = ptrtoint i8* %146 to i64
  %148 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %149 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %151 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @snprintf(i32 %153, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %185

155:                                              ; preds = %3
  %156 = load i8*, i8** @S3_TWISTER, align 8
  %157 = ptrtoint i8* %156 to i64
  %158 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %159 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %161 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @snprintf(i32 %163, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %185

165:                                              ; preds = %3
  %166 = load i8*, i8** @S3_PROSAVAGEDDR, align 8
  %167 = ptrtoint i8* %166 to i64
  %168 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %169 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  %170 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %171 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @snprintf(i32 %173, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  br label %185

175:                                              ; preds = %3
  %176 = load i8*, i8** @S3_PROSAVAGEDDR, align 8
  %177 = ptrtoint i8* %176 to i64
  %178 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %179 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %181 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @snprintf(i32 %183, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  br label %185

185:                                              ; preds = %3, %175, %165, %155, %145, %135, %125, %115, %105, %95, %85, %76, %66, %56, %47, %38
  %186 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %187 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @S3_SAVAGE3D_SERIES(i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = load i32, i32* @savage3D_waitidle, align 4
  %193 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %194 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* @savage3D_waitfifo, align 4
  %196 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %197 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 4
  br label %225

198:                                              ; preds = %185
  %199 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %200 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i64 @S3_SAVAGE4_SERIES(i64 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %198
  %205 = load i64, i64* @S3_SUPERSAVAGE, align 8
  %206 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %207 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %205, %208
  br i1 %209, label %210, label %217

210:                                              ; preds = %204, %198
  %211 = load i32, i32* @savage4_waitidle, align 4
  %212 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %213 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 8
  %214 = load i32, i32* @savage4_waitfifo, align 4
  %215 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %216 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 4
  br label %224

217:                                              ; preds = %204
  %218 = load i32, i32* @savage2000_waitidle, align 4
  %219 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %220 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %219, i32 0, i32 3
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* @savage2000_waitfifo, align 4
  %222 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %223 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 4
  br label %224

224:                                              ; preds = %217, %210
  br label %225

225:                                              ; preds = %224, %191
  %226 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %227 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 4
  store i64 0, i64* %228, align 8
  %229 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %230 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %231 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 3
  store i32 %229, i32* %232, align 8
  %233 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %234 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  store i32 -1, i32* %235, align 8
  %236 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %237 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  store i32 -1, i32* %238, align 4
  %239 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %240 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 2
  store i64 0, i64* %241, align 8
  %242 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %243 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %242, i32 0, i32 4
  store i32* @savagefb_ops, i32** %243, align 8
  %244 = load i32, i32* @FBINFO_DEFAULT, align 4
  %245 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @FBINFO_HWACCEL_XPAN, align 4
  %248 = or i32 %246, %247
  %249 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %250 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  %251 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  %252 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %255 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %254, i32 0, i32 3
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* %8, align 4
  ret i32 %256
}

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i64 @S3_SAVAGE3D_SERIES(i64) #1

declare dso_local i64 @S3_SAVAGE4_SERIES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
