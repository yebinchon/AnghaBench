; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_getcardinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_getcardinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { %struct.TYPE_6__*, i32, %struct.hfa384x* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hfa384x = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__ }

@HFA384x_RID_NICSERIALNUMBER_LEN = common dso_local global i32 0, align 4
@HFA384x_RID_NICIDENTITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to retrieve NICIDENTITY\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ident: nic h/w: id=0x%02x %d.%d.%d\0A\00", align 1
@HFA384x_RID_PRIIDENTITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to retrieve PRIIDENTITY\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ident: pri f/w: id=0x%02x %d.%d.%d\0A\00", align 1
@HFA384x_RID_STAIDENTITY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to retrieve STAIDENTITY\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"FATAL: Card is not an Intersil Prism2/2.5/3\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"ident: sta f/w: id=0x%02x %d.%d.%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"ident:  ap f/w: id=0x%02x %d.%d.%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Unsupported Tertiary AP firmware loaded!\0A\00", align 1
@HFA384x_RID_MFISUPRANGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to retrieve MFISUPRANGE\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"MFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\0A\00", align 1
@HFA384x_RID_CFISUPRANGE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"Failed to retrieve CFISUPRANGE\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"CFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\0A\00", align 1
@HFA384x_RID_PRISUPRANGE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"Failed to retrieve PRISUPRANGE\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"PRI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\0A\00", align 1
@HFA384x_RID_STASUPRANGE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"Failed to retrieve STASUPRANGE\0A\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"STA:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"AP:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\0A\00", align 1
@HFA384x_RID_PRI_CFIACTRANGES = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [37 x i8] c"Failed to retrieve PRI_CFIACTRANGES\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"PRI-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\0A\00", align 1
@HFA384x_RID_STA_CFIACTRANGES = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [37 x i8] c"Failed to retrieve STA_CFIACTRANGES\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"STA-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\0A\00", align 1
@HFA384x_RID_STA_MFIACTRANGES = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [37 x i8] c"Failed to retrieve STA_MFIACTRANGES\0A\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"STA-MFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\0A\00", align 1
@HFA384x_RID_NICSERIALNUMBER = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [22 x i8] c"Prism2 card SN: %*pE\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"Failed to retrieve Prism2 Card SN\0A\00", align 1
@HFA384x_RID_CNFOWNMACADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [32 x i8] c"Failed to retrieve mac address\0A\00", align 1
@P80211_NSDCAP_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@HFA384x_RID_PRIVACYOPTIMP = common dso_local global i32 0, align 4
@P80211_NSDCAP_HARDWAREWEP = common dso_local global i32 0, align 4
@HFA384x_RID_CNFDBMADJUST = common dso_local global i32 0, align 4
@P80211_NSDCAP_NOSCAN = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [19 x i8] c"Failed, result=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlandevice*)* @prism2sta_getcardinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2sta_getcardinfo(%struct.wlandevice* %0) #0 {
  %2 = alloca %struct.wlandevice*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfa384x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %9 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %8, i32 0, i32 2
  %10 = load %struct.hfa384x*, %struct.hfa384x** %9, align 8
  store %struct.hfa384x* %10, %struct.hfa384x** %4, align 8
  %11 = load i32, i32* @HFA384x_RID_NICSERIALNUMBER_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca %struct.TYPE_5__, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %16 = load i32, i32* @HFA384x_RID_NICIDENTITY, align 4
  %17 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %18 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %17, i32 0, i32 10
  %19 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %15, i32 %16, %struct.TYPE_5__* %18, i32 4)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %24 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %731

27:                                               ; preds = %1
  %28 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %29 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %28, i32 0, i32 10
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @le16_to_cpus(i32* %30)
  %32 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %33 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %32, i32 0, i32 10
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = call i32 @le16_to_cpus(i32* %34)
  %36 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %37 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %36, i32 0, i32 10
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = call i32 @le16_to_cpus(i32* %38)
  %40 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %41 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %40, i32 0, i32 10
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = call i32 @le16_to_cpus(i32* %42)
  %44 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %45 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %48 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %47, i32 0, i32 10
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %52 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %51, i32 0, i32 10
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %56 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %55, i32 0, i32 10
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %60 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %59, i32 0, i32 10
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_info(%struct.TYPE_6__* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %54, i32 %58, i32 %62)
  %64 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %65 = load i32, i32* @HFA384x_RID_PRIIDENTITY, align 4
  %66 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %67 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %66, i32 0, i32 11
  %68 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %64, i32 %65, %struct.TYPE_5__* %67, i32 4)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %27
  %72 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %73 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %731

76:                                               ; preds = %27
  %77 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %78 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %77, i32 0, i32 11
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = call i32 @le16_to_cpus(i32* %79)
  %81 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %82 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %81, i32 0, i32 11
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = call i32 @le16_to_cpus(i32* %83)
  %85 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %86 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %85, i32 0, i32 11
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = call i32 @le16_to_cpus(i32* %87)
  %89 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %90 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = call i32 @le16_to_cpus(i32* %91)
  %93 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %94 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %97 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %96, i32 0, i32 11
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %101 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %100, i32 0, i32 11
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %105 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %104, i32 0, i32 11
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %109 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %108, i32 0, i32 11
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_info(%struct.TYPE_6__* %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %103, i32 %107, i32 %111)
  %113 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %114 = load i32, i32* @HFA384x_RID_STAIDENTITY, align 4
  %115 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %116 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %115, i32 0, i32 2
  %117 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %113, i32 %114, %struct.TYPE_5__* %116, i32 4)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %76
  %121 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %122 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %731

125:                                              ; preds = %76
  %126 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %127 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %126, i32 0, i32 10
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %129, 32768
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %133 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %134, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %731

136:                                              ; preds = %125
  %137 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %138 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = call i32 @le16_to_cpus(i32* %139)
  %141 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %142 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = call i32 @le16_to_cpus(i32* %143)
  %145 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %146 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = call i32 @le16_to_cpus(i32* %147)
  %149 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %150 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  %152 = call i32 @le16_to_cpus(i32* %151)
  %153 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %154 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @GENMASK(i32 15, i32 14)
  %158 = and i32 %156, %157
  %159 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %160 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = call i32 @GENMASK(i32 15, i32 14)
  %162 = xor i32 %161, -1
  %163 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %164 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, %162
  store i32 %167, i32* %165, align 4
  %168 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %169 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 31
  br i1 %172, label %173, label %194

173:                                              ; preds = %136
  %174 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %175 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %178 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %182 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %186 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %190 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_info(%struct.TYPE_6__* %176, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %180, i32 %184, i32 %188, i32 %192)
  br label %219

194:                                              ; preds = %136
  %195 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %196 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %195, i32 0, i32 0
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %199 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %203 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %207 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %211 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_info(%struct.TYPE_6__* %197, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %201, i32 %205, i32 %209, i32 %213)
  %215 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %216 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %215, i32 0, i32 0
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %217, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %731

219:                                              ; preds = %173
  %220 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %221 = load i32, i32* @HFA384x_RID_MFISUPRANGE, align 4
  %222 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %223 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %222, i32 0, i32 9
  %224 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %220, i32 %221, %struct.TYPE_5__* %223, i32 4)
  store i32 %224, i32* %3, align 4
  %225 = load i32, i32* %3, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %219
  %228 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %229 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %228, i32 0, i32 0
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %230, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %731

232:                                              ; preds = %219
  %233 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %234 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %233, i32 0, i32 9
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 4
  %236 = call i32 @le16_to_cpus(i32* %235)
  %237 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %238 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %237, i32 0, i32 9
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = call i32 @le16_to_cpus(i32* %239)
  %241 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %242 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %241, i32 0, i32 9
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = call i32 @le16_to_cpus(i32* %243)
  %245 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %246 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %245, i32 0, i32 9
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 5
  %248 = call i32 @le16_to_cpus(i32* %247)
  %249 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %250 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %249, i32 0, i32 9
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 6
  %252 = call i32 @le16_to_cpus(i32* %251)
  %253 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %254 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %253, i32 0, i32 0
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %254, align 8
  %256 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %257 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %256, i32 0, i32 9
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %261 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %260, i32 0, i32 9
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %265 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %264, i32 0, i32 9
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %269 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %268, i32 0, i32 9
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %273 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %272, i32 0, i32 9
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 4
  %276 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_info(%struct.TYPE_6__* %255, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %259, i32 %263, i32 %267, i32 %271, i32 %275)
  %277 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %278 = load i32, i32* @HFA384x_RID_CFISUPRANGE, align 4
  %279 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %280 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %279, i32 0, i32 8
  %281 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %277, i32 %278, %struct.TYPE_5__* %280, i32 4)
  store i32 %281, i32* %3, align 4
  %282 = load i32, i32* %3, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %232
  %285 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %286 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %285, i32 0, i32 0
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %286, align 8
  %288 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %287, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %731

289:                                              ; preds = %232
  %290 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %291 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %290, i32 0, i32 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 4
  %293 = call i32 @le16_to_cpus(i32* %292)
  %294 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %295 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %294, i32 0, i32 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 0
  %297 = call i32 @le16_to_cpus(i32* %296)
  %298 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %299 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %298, i32 0, i32 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 1
  %301 = call i32 @le16_to_cpus(i32* %300)
  %302 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %303 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %302, i32 0, i32 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 5
  %305 = call i32 @le16_to_cpus(i32* %304)
  %306 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %307 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %306, i32 0, i32 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 6
  %309 = call i32 @le16_to_cpus(i32* %308)
  %310 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %311 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %310, i32 0, i32 0
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %314 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %313, i32 0, i32 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %318 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %317, i32 0, i32 8
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %322 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %321, i32 0, i32 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %326 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %325, i32 0, i32 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %330 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %329, i32 0, i32 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 6
  %332 = load i32, i32* %331, align 4
  %333 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_info(%struct.TYPE_6__* %312, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i32 %316, i32 %320, i32 %324, i32 %328, i32 %332)
  %334 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %335 = load i32, i32* @HFA384x_RID_PRISUPRANGE, align 4
  %336 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %337 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %336, i32 0, i32 7
  %338 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %334, i32 %335, %struct.TYPE_5__* %337, i32 4)
  store i32 %338, i32* %3, align 4
  %339 = load i32, i32* %3, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %289
  %342 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %343 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %342, i32 0, i32 0
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %343, align 8
  %345 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %344, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  br label %731

346:                                              ; preds = %289
  %347 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %348 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %347, i32 0, i32 7
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 4
  %350 = call i32 @le16_to_cpus(i32* %349)
  %351 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %352 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %351, i32 0, i32 7
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 0
  %354 = call i32 @le16_to_cpus(i32* %353)
  %355 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %356 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %355, i32 0, i32 7
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 1
  %358 = call i32 @le16_to_cpus(i32* %357)
  %359 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %360 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %359, i32 0, i32 7
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 5
  %362 = call i32 @le16_to_cpus(i32* %361)
  %363 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %364 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %363, i32 0, i32 7
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 6
  %366 = call i32 @le16_to_cpus(i32* %365)
  %367 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %368 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %367, i32 0, i32 0
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %368, align 8
  %370 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %371 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %370, i32 0, i32 7
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %375 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %374, i32 0, i32 7
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %379 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %378, i32 0, i32 7
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %383 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %382, i32 0, i32 7
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 5
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %387 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %386, i32 0, i32 7
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 6
  %389 = load i32, i32* %388, align 4
  %390 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_info(%struct.TYPE_6__* %369, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0), i32 %373, i32 %377, i32 %381, i32 %385, i32 %389)
  %391 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %392 = load i32, i32* @HFA384x_RID_STASUPRANGE, align 4
  %393 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %394 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %393, i32 0, i32 6
  %395 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %391, i32 %392, %struct.TYPE_5__* %394, i32 4)
  store i32 %395, i32* %3, align 4
  %396 = load i32, i32* %3, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %403

398:                                              ; preds = %346
  %399 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %400 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %399, i32 0, i32 0
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** %400, align 8
  %402 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %401, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  br label %731

403:                                              ; preds = %346
  %404 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %405 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %404, i32 0, i32 6
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 4
  %407 = call i32 @le16_to_cpus(i32* %406)
  %408 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %409 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %408, i32 0, i32 6
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 0
  %411 = call i32 @le16_to_cpus(i32* %410)
  %412 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %413 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %412, i32 0, i32 6
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i32 0, i32 1
  %415 = call i32 @le16_to_cpus(i32* %414)
  %416 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %417 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %416, i32 0, i32 6
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 5
  %419 = call i32 @le16_to_cpus(i32* %418)
  %420 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %421 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %420, i32 0, i32 6
  %422 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %421, i32 0, i32 6
  %423 = call i32 @le16_to_cpus(i32* %422)
  %424 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %425 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %424, i32 0, i32 6
  %426 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = icmp eq i32 %427, 4
  br i1 %428, label %429, label %454

429:                                              ; preds = %403
  %430 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %431 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %430, i32 0, i32 0
  %432 = load %struct.TYPE_6__*, %struct.TYPE_6__** %431, align 8
  %433 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %434 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %433, i32 0, i32 6
  %435 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %434, i32 0, i32 4
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %438 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %437, i32 0, i32 6
  %439 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %442 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %441, i32 0, i32 6
  %443 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %446 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %445, i32 0, i32 6
  %447 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %446, i32 0, i32 5
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %450 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %449, i32 0, i32 6
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 6
  %452 = load i32, i32* %451, align 4
  %453 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_info(%struct.TYPE_6__* %432, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0), i32 %436, i32 %440, i32 %444, i32 %448, i32 %452)
  br label %479

454:                                              ; preds = %403
  %455 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %456 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %455, i32 0, i32 0
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %456, align 8
  %458 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %459 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %458, i32 0, i32 6
  %460 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %459, i32 0, i32 4
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %463 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %462, i32 0, i32 6
  %464 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %467 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %466, i32 0, i32 6
  %468 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %471 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %470, i32 0, i32 6
  %472 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %471, i32 0, i32 5
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %475 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %474, i32 0, i32 6
  %476 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %475, i32 0, i32 6
  %477 = load i32, i32* %476, align 4
  %478 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_info(%struct.TYPE_6__* %457, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0), i32 %461, i32 %465, i32 %469, i32 %473, i32 %477)
  br label %479

479:                                              ; preds = %454, %429
  %480 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %481 = load i32, i32* @HFA384x_RID_PRI_CFIACTRANGES, align 4
  %482 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %483 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %482, i32 0, i32 5
  %484 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %480, i32 %481, %struct.TYPE_5__* %483, i32 4)
  store i32 %484, i32* %3, align 4
  %485 = load i32, i32* %3, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %492

487:                                              ; preds = %479
  %488 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %489 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %488, i32 0, i32 0
  %490 = load %struct.TYPE_6__*, %struct.TYPE_6__** %489, align 8
  %491 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %490, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0))
  br label %731

492:                                              ; preds = %479
  %493 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %494 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %493, i32 0, i32 5
  %495 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %494, i32 0, i32 4
  %496 = call i32 @le16_to_cpus(i32* %495)
  %497 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %498 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %497, i32 0, i32 5
  %499 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %498, i32 0, i32 0
  %500 = call i32 @le16_to_cpus(i32* %499)
  %501 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %502 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %501, i32 0, i32 5
  %503 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %502, i32 0, i32 1
  %504 = call i32 @le16_to_cpus(i32* %503)
  %505 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %506 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %505, i32 0, i32 5
  %507 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %506, i32 0, i32 5
  %508 = call i32 @le16_to_cpus(i32* %507)
  %509 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %510 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %509, i32 0, i32 5
  %511 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %510, i32 0, i32 6
  %512 = call i32 @le16_to_cpus(i32* %511)
  %513 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %514 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %513, i32 0, i32 0
  %515 = load %struct.TYPE_6__*, %struct.TYPE_6__** %514, align 8
  %516 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %517 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %516, i32 0, i32 5
  %518 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %517, i32 0, i32 4
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %521 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %520, i32 0, i32 5
  %522 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %525 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %524, i32 0, i32 5
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %529 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %528, i32 0, i32 5
  %530 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %529, i32 0, i32 5
  %531 = load i32, i32* %530, align 4
  %532 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %533 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %532, i32 0, i32 5
  %534 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %533, i32 0, i32 6
  %535 = load i32, i32* %534, align 4
  %536 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_info(%struct.TYPE_6__* %515, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 %519, i32 %523, i32 %527, i32 %531, i32 %535)
  %537 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %538 = load i32, i32* @HFA384x_RID_STA_CFIACTRANGES, align 4
  %539 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %540 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %539, i32 0, i32 4
  %541 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %537, i32 %538, %struct.TYPE_5__* %540, i32 4)
  store i32 %541, i32* %3, align 4
  %542 = load i32, i32* %3, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %549

544:                                              ; preds = %492
  %545 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %546 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %545, i32 0, i32 0
  %547 = load %struct.TYPE_6__*, %struct.TYPE_6__** %546, align 8
  %548 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %547, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  br label %731

549:                                              ; preds = %492
  %550 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %551 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %550, i32 0, i32 4
  %552 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %551, i32 0, i32 4
  %553 = call i32 @le16_to_cpus(i32* %552)
  %554 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %555 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %554, i32 0, i32 4
  %556 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %555, i32 0, i32 0
  %557 = call i32 @le16_to_cpus(i32* %556)
  %558 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %559 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %558, i32 0, i32 4
  %560 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %559, i32 0, i32 1
  %561 = call i32 @le16_to_cpus(i32* %560)
  %562 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %563 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %562, i32 0, i32 4
  %564 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %563, i32 0, i32 5
  %565 = call i32 @le16_to_cpus(i32* %564)
  %566 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %567 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %566, i32 0, i32 4
  %568 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %567, i32 0, i32 6
  %569 = call i32 @le16_to_cpus(i32* %568)
  %570 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %571 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %570, i32 0, i32 0
  %572 = load %struct.TYPE_6__*, %struct.TYPE_6__** %571, align 8
  %573 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %574 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %573, i32 0, i32 4
  %575 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %574, i32 0, i32 4
  %576 = load i32, i32* %575, align 4
  %577 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %578 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %577, i32 0, i32 4
  %579 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 4
  %581 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %582 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %581, i32 0, i32 4
  %583 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  %585 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %586 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %585, i32 0, i32 4
  %587 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %586, i32 0, i32 5
  %588 = load i32, i32* %587, align 4
  %589 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %590 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %589, i32 0, i32 4
  %591 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %590, i32 0, i32 6
  %592 = load i32, i32* %591, align 4
  %593 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_info(%struct.TYPE_6__* %572, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i32 %576, i32 %580, i32 %584, i32 %588, i32 %592)
  %594 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %595 = load i32, i32* @HFA384x_RID_STA_MFIACTRANGES, align 4
  %596 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %597 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %596, i32 0, i32 3
  %598 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %594, i32 %595, %struct.TYPE_5__* %597, i32 4)
  store i32 %598, i32* %3, align 4
  %599 = load i32, i32* %3, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %606

601:                                              ; preds = %549
  %602 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %603 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %602, i32 0, i32 0
  %604 = load %struct.TYPE_6__*, %struct.TYPE_6__** %603, align 8
  %605 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %604, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0))
  br label %731

606:                                              ; preds = %549
  %607 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %608 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %607, i32 0, i32 3
  %609 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %608, i32 0, i32 4
  %610 = call i32 @le16_to_cpus(i32* %609)
  %611 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %612 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %611, i32 0, i32 3
  %613 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %612, i32 0, i32 0
  %614 = call i32 @le16_to_cpus(i32* %613)
  %615 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %616 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %615, i32 0, i32 3
  %617 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %616, i32 0, i32 1
  %618 = call i32 @le16_to_cpus(i32* %617)
  %619 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %620 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %619, i32 0, i32 3
  %621 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %620, i32 0, i32 5
  %622 = call i32 @le16_to_cpus(i32* %621)
  %623 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %624 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %623, i32 0, i32 3
  %625 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %624, i32 0, i32 6
  %626 = call i32 @le16_to_cpus(i32* %625)
  %627 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %628 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %627, i32 0, i32 0
  %629 = load %struct.TYPE_6__*, %struct.TYPE_6__** %628, align 8
  %630 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %631 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %630, i32 0, i32 3
  %632 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %631, i32 0, i32 4
  %633 = load i32, i32* %632, align 4
  %634 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %635 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %634, i32 0, i32 3
  %636 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 4
  %638 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %639 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %638, i32 0, i32 3
  %640 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 4
  %642 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %643 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %642, i32 0, i32 3
  %644 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %643, i32 0, i32 5
  %645 = load i32, i32* %644, align 4
  %646 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %647 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %646, i32 0, i32 3
  %648 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %647, i32 0, i32 6
  %649 = load i32, i32* %648, align 4
  %650 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_info(%struct.TYPE_6__* %629, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0), i32 %633, i32 %637, i32 %641, i32 %645, i32 %649)
  %651 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %652 = load i32, i32* @HFA384x_RID_NICSERIALNUMBER, align 4
  %653 = load i32, i32* @HFA384x_RID_NICSERIALNUMBER_LEN, align 4
  %654 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %651, i32 %652, %struct.TYPE_5__* %14, i32 %653)
  store i32 %654, i32* %3, align 4
  %655 = load i32, i32* %3, align 4
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %663, label %657

657:                                              ; preds = %606
  %658 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %659 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %658, i32 0, i32 0
  %660 = load %struct.TYPE_6__*, %struct.TYPE_6__** %659, align 8
  %661 = load i32, i32* @HFA384x_RID_NICSERIALNUMBER_LEN, align 4
  %662 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_info(%struct.TYPE_6__* %660, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i32 %661, %struct.TYPE_5__* %14)
  br label %668

663:                                              ; preds = %606
  %664 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %665 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %664, i32 0, i32 0
  %666 = load %struct.TYPE_6__*, %struct.TYPE_6__** %665, align 8
  %667 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %666, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0))
  br label %731

668:                                              ; preds = %657
  %669 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %670 = load i32, i32* @HFA384x_RID_CNFOWNMACADDR, align 4
  %671 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %672 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %671, i32 0, i32 0
  %673 = load %struct.TYPE_6__*, %struct.TYPE_6__** %672, align 8
  %674 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %673, i32 0, i32 0
  %675 = load %struct.TYPE_5__*, %struct.TYPE_5__** %674, align 8
  %676 = load i32, i32* @ETH_ALEN, align 4
  %677 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %669, i32 %670, %struct.TYPE_5__* %675, i32 %676)
  store i32 %677, i32* %3, align 4
  %678 = load i32, i32* %3, align 4
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %685

680:                                              ; preds = %668
  %681 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %682 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %681, i32 0, i32 0
  %683 = load %struct.TYPE_6__*, %struct.TYPE_6__** %682, align 8
  %684 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %683, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0))
  br label %731

685:                                              ; preds = %668
  %686 = load i32, i32* @P80211_NSDCAP_SHORT_PREAMBLE, align 4
  %687 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %688 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %687, i32 0, i32 1
  %689 = load i32, i32* %688, align 8
  %690 = or i32 %689, %686
  store i32 %690, i32* %688, align 8
  %691 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %692 = load i32, i32* @HFA384x_RID_PRIVACYOPTIMP, align 4
  %693 = call i32 @hfa384x_drvr_getconfig16(%struct.hfa384x* %691, i32 %692, i32* %5)
  %694 = load i32, i32* %5, align 4
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %702

696:                                              ; preds = %685
  %697 = load i32, i32* @P80211_NSDCAP_HARDWAREWEP, align 4
  %698 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %699 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %698, i32 0, i32 1
  %700 = load i32, i32* %699, align 8
  %701 = or i32 %700, %697
  store i32 %701, i32* %699, align 8
  br label %702

702:                                              ; preds = %696, %685
  %703 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %704 = load i32, i32* @HFA384x_RID_CNFDBMADJUST, align 4
  %705 = call i32 @hfa384x_drvr_getconfig16(%struct.hfa384x* %703, i32 %704, i32* %5)
  %706 = load i32, i32* %5, align 4
  %707 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %708 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %707, i32 0, i32 1
  store i32 %706, i32* %708, align 4
  %709 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %710 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %709, i32 0, i32 2
  %711 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %710, i32 0, i32 2
  %712 = load i32, i32* %711, align 4
  %713 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %714 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %713, i32 0, i32 2
  %715 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %714, i32 0, i32 3
  %716 = load i32, i32* %715, align 4
  %717 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %718 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %717, i32 0, i32 2
  %719 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %718, i32 0, i32 1
  %720 = load i32, i32* %719, align 4
  %721 = call i64 @HFA384x_FIRMWARE_VERSION(i32 %712, i32 %716, i32 %720)
  %722 = call i64 @HFA384x_FIRMWARE_VERSION(i32 1, i32 5, i32 5)
  %723 = icmp slt i64 %721, %722
  br i1 %723, label %724, label %730

724:                                              ; preds = %702
  %725 = load i32, i32* @P80211_NSDCAP_NOSCAN, align 4
  %726 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %727 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %726, i32 0, i32 1
  %728 = load i32, i32* %727, align 8
  %729 = or i32 %728, %725
  store i32 %729, i32* %727, align 8
  br label %730

730:                                              ; preds = %724, %702
  br label %737

731:                                              ; preds = %680, %663, %601, %544, %487, %398, %341, %284, %227, %194, %131, %120, %71, %22
  %732 = load %struct.wlandevice*, %struct.wlandevice** %2, align 8
  %733 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %732, i32 0, i32 0
  %734 = load %struct.TYPE_6__*, %struct.TYPE_6__** %733, align 8
  %735 = load i32, i32* %3, align 4
  %736 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_err(%struct.TYPE_6__* %734, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i32 %735)
  br label %737

737:                                              ; preds = %731, %730
  %738 = load i32, i32* %3, align 4
  %739 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %739)
  ret i32 %738
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hfa384x_drvr_getconfig(%struct.hfa384x*, i32, %struct.TYPE_5__*, i32) #2

declare dso_local i32 @netdev_err(%struct.TYPE_6__*, i8*, ...) #2

declare dso_local i32 @le16_to_cpus(i32*) #2

declare dso_local i32 @netdev_info(%struct.TYPE_6__*, i8*, i32, ...) #2

declare dso_local i32 @GENMASK(i32, i32) #2

declare dso_local i32 @hfa384x_drvr_getconfig16(%struct.hfa384x*, i32, i32*) #2

declare dso_local i64 @HFA384x_FIRMWARE_VERSION(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
