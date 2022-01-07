; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_max_usb_curr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_max_usb_curr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_charger = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"USB Type - Standard host is detected through USB driver\0A\00", align 1
@USB_CH_IP_CUR_LVL_0P5 = common dso_local global i8* null, align 8
@USB_CH_IP_CUR_LVL_0P9 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"USB_STAT_ACA_RID_A detected\0A\00", align 1
@USB_CH_IP_CUR_LVL_1P3 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"USB Type - 0x%02x MaxCurr: %d\00", align 1
@USB_CH_IP_CUR_LVL_1P5 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"USB Type - Legacy charger.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"USB Type - Charging not allowed\0A\00", align 1
@USB_CH_IP_CUR_LVL_0P05 = common dso_local global i8* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"USB Type - USB_STAT_RESERVED VBUS has collapsed\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"USB Type invalid - try charging anyway\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"USB Type - Unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_charger*, i32)* @ab8500_charger_max_usb_curr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_charger_max_usb_curr(%struct.ab8500_charger* %0, i32 %1) #0 {
  %3 = alloca %struct.ab8500_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ab8500_charger* %0, %struct.ab8500_charger** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %7 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %176 [
    i32 128, label %9
    i32 130, label %9
    i32 129, label %9
    i32 135, label %20
    i32 136, label %27
    i32 144, label %34
    i32 146, label %41
    i32 145, label %52
    i32 134, label %68
    i32 138, label %75
    i32 143, label %82
    i32 142, label %82
    i32 133, label %89
    i32 137, label %106
    i32 131, label %117
    i32 141, label %153
    i32 140, label %153
    i32 147, label %153
    i32 139, label %153
    i32 132, label %167
  ]

9:                                                ; preds = %2, %2, %2
  %10 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %11 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i32, i8*, ...) @dev_dbg(i32 %12, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** @USB_CH_IP_CUR_LVL_0P5, align 8
  %15 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %16 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %19 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  br label %187

20:                                               ; preds = %2
  %21 = load i8*, i8** @USB_CH_IP_CUR_LVL_0P5, align 8
  %22 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %23 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %26 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %187

27:                                               ; preds = %2
  %28 = load i8*, i8** @USB_CH_IP_CUR_LVL_0P5, align 8
  %29 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %30 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %33 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  br label %187

34:                                               ; preds = %2
  %35 = load i8*, i8** @USB_CH_IP_CUR_LVL_0P9, align 8
  %36 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %37 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  %39 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %40 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  br label %187

41:                                               ; preds = %2
  %42 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %43 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i8*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i8*, i8** @USB_CH_IP_CUR_LVL_0P5, align 8
  %47 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %48 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %51 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  br label %187

52:                                               ; preds = %2
  %53 = load i8*, i8** @USB_CH_IP_CUR_LVL_1P3, align 8
  %54 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %55 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i8* %53, i8** %56, align 8
  %57 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %58 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %62 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i32, i8*, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %60, i8* %64)
  %66 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %67 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %187

68:                                               ; preds = %2
  %69 = load i8*, i8** @USB_CH_IP_CUR_LVL_0P5, align 8
  %70 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %71 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i8* %69, i8** %72, align 8
  %73 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %74 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  br label %187

75:                                               ; preds = %2
  %76 = load i8*, i8** @USB_CH_IP_CUR_LVL_1P5, align 8
  %77 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %78 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  %80 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %81 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  br label %187

82:                                               ; preds = %2, %2
  %83 = load i8*, i8** @USB_CH_IP_CUR_LVL_1P5, align 8
  %84 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %85 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i8* %83, i8** %86, align 8
  %87 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %88 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  br label %187

89:                                               ; preds = %2
  %90 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %91 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %96 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %98 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i8*, i8** @USB_CH_IP_CUR_LVL_1P5, align 8
  %102 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %103 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  br label %187

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %2, %105
  %107 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %108 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i8*, i8** @USB_CH_IP_CUR_LVL_0P05, align 8
  %112 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %113 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i8* %111, i8** %114, align 8
  %115 = load i32, i32* @ENXIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %187

117:                                              ; preds = %2
  %118 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %119 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @is_ab8500(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %125 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 4
  %127 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %128 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dev_err(i32 %129, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %131 = load i32, i32* @ENXIO, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %187

133:                                              ; preds = %117
  %134 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %135 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i32, i8*, ...) @dev_dbg(i32 %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i8*, i8** @USB_CH_IP_CUR_LVL_0P05, align 8
  %139 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %140 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i8* %138, i8** %141, align 8
  %142 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %143 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %147 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i32, i8*, ...) @dev_dbg(i32 %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %145, i8* %149)
  %151 = load i32, i32* @ENXIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %187

153:                                              ; preds = %2, %2, %2, %2
  %154 = load i8*, i8** @USB_CH_IP_CUR_LVL_0P5, align 8
  %155 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %156 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  store i8* %154, i8** %157, align 8
  %158 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %159 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %163 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (i32, i8*, ...) @dev_dbg(i32 %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %161, i8* %165)
  br label %187

167:                                              ; preds = %2
  %168 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %169 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dev_err(i32 %170, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %172 = load i8*, i8** @USB_CH_IP_CUR_LVL_0P5, align 8
  %173 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %174 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  store i8* %172, i8** %175, align 8
  br label %187

176:                                              ; preds = %2
  %177 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %178 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @dev_err(i32 %179, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %181 = load i8*, i8** @USB_CH_IP_CUR_LVL_0P05, align 8
  %182 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %183 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  store i8* %181, i8** %184, align 8
  %185 = load i32, i32* @ENXIO, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %176, %167, %153, %133, %123, %106, %94, %82, %75, %68, %52, %41, %34, %27, %20, %9
  %188 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %189 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %193 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  store i8* %191, i8** %194, align 8
  %195 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %196 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %4, align 4
  %199 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %200 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 (i32, i8*, ...) @dev_dbg(i32 %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %198, i8* %202)
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @is_ab8500(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
