; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_stat_e4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_stat_e4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@E4_SA_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"modem not yet synchronized\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"modem initializing\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"modem synchronization failed (may be try other cmv/dsp)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"unknown state: %x\0A\00", align 1
@UEA_SET_MODE = common dso_local global i32 0, align 4
@UEA_LOOPBACK_OFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"modem operational\0A\00", align 1
@ATM_PHY_SIG_FOUND = common dso_local global i32 0, align 4
@E4_SA_DIAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Stat flag = 0x%x\0A\00", align 1
@E4_SA_RATE = common dso_local global i32 0, align 4
@link_rate = common dso_local global i32 0, align 4
@E4_SA_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*)* @uea_stat_e4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_stat_e4(%struct.uea_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  %7 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %8 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %7)
  %9 = call i32 @uea_enters(i32 %8)
  %10 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %11 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %16 = load i32, i32* @E4_SA_STAT, align 4
  %17 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %18 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %15, i32 1, i32 %16, i32 0, i32 0, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %261

26:                                               ; preds = %1
  %27 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %28 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %47 [
    i32 0, label %32
    i32 1, label %32
    i32 3, label %32
    i32 4, label %32
    i32 5, label %36
    i32 6, label %36
    i32 9, label %36
    i32 10, label %36
    i32 2, label %40
    i32 7, label %46
  ]

32:                                               ; preds = %26, %26, %26, %26
  %33 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %34 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %33)
  %35 = call i32 (i32, i8*, ...) @uea_dbg(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %261

36:                                               ; preds = %26, %26, %26, %26
  %37 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %38 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %37)
  %39 = call i32 (i32, i8*, ...) @uea_dbg(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %261

40:                                               ; preds = %26
  %41 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %42 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %41)
  %43 = call i32 @uea_info(i32 %42, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %261

46:                                               ; preds = %26
  br label %56

47:                                               ; preds = %26
  %48 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %49 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %48)
  %50 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %51 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @uea_warn(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  store i32 0, i32* %2, align 4
  br label %261

56:                                               ; preds = %46
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 7
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %61 = load i32, i32* @UEA_SET_MODE, align 4
  %62 = load i32, i32* @UEA_LOOPBACK_OFF, align 4
  %63 = call i32 @uea_request(%struct.uea_softc* %60, i32 %61, i32 %62, i32 0, i32* null)
  %64 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %65 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %64)
  %66 = call i32 @uea_info(i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %67 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %68 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @release_firmware(i32* %69)
  %71 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %72 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %59, %56
  %74 = load i32, i32* @ATM_PHY_SIG_FOUND, align 4
  %75 = call i32 @UPDATE_ATM_SIGNAL(i32 %74)
  %76 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %77 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %76, i32 0, i32 1
  %78 = call i32 @wake_up(i32* %77)
  %79 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %80 = load i32, i32* @E4_SA_DIAG, align 4
  %81 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %82 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %79, i32 1, i32 %80, i32 0, i32 0, i32* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %73
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %261

90:                                               ; preds = %73
  %91 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %92 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %97 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %95
  store i32 %101, i32* %99, align 8
  %102 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %103 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %139

108:                                              ; preds = %90
  %109 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %110 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %109)
  %111 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %112 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @uea_dbg(i32 %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %118 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 1
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %108
  %125 = load i32, i32* @EAGAIN, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %261

127:                                              ; preds = %108
  %128 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %129 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 16384
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load i32, i32* @EAGAIN, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %261

138:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %261

139:                                              ; preds = %90
  %140 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %141 = load i32, i32* @E4_SA_RATE, align 4
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %143 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %140, i32 4, i32 %141, i32 0, i32 0, i32* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %2, align 4
  br label %261

148:                                              ; preds = %139
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %154 = load i32, i32* %153, align 4
  br label %158

155:                                              ; preds = %148
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %157 = load i32, i32* %156, align 4
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi i32 [ %154, %152 ], [ %157, %155 ]
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = sdiv i32 %160, 1000
  %162 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %163 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 3
  store i32 %161, i32* %165, align 4
  %166 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %167 = load i32, i32* @E4_SA_RATE, align 4
  %168 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %169 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %166, i32 4, i32 %167, i32 1, i32 0, i32* %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %158
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %2, align 4
  br label %261

174:                                              ; preds = %158
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %180 = load i32, i32* %179, align 4
  br label %184

181:                                              ; preds = %174
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %183 = load i32, i32* %182, align 4
  br label %184

184:                                              ; preds = %181, %178
  %185 = phi i32 [ %180, %178 ], [ %183, %181 ]
  store i32 %185, i32* %4, align 4
  %186 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sdiv i32 %187, 1000
  %189 = call i32 @uea_set_bulk_timeout(%struct.uea_softc* %186, i32 %188)
  %190 = load i32, i32* %4, align 4
  %191 = sdiv i32 %190, 1000
  %192 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %193 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 4
  store i32 %191, i32* %195, align 8
  %196 = load i32, i32* @link_rate, align 4
  %197 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %198 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 %201, 1000
  %203 = sdiv i32 %202, 424
  %204 = call i32 @UPDATE_ATM_STAT(i32 %196, i32 %203)
  %205 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %206 = load i32, i32* @E4_SA_INFO, align 4
  %207 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %205, i32 1, i32 %206, i32 68, i32 1, i32* %4)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %184
  %211 = load i32, i32* %6, align 4
  store i32 %211, i32* %2, align 4
  br label %261

212:                                              ; preds = %184
  %213 = load i32, i32* %4, align 4
  %214 = sdiv i32 %213, 10
  %215 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %216 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 5
  store i32 %214, i32* %218, align 4
  %219 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %220 = load i32, i32* @E4_SA_INFO, align 4
  %221 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %219, i32 1, i32 %220, i32 69, i32 1, i32* %4)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %212
  %225 = load i32, i32* %6, align 4
  store i32 %225, i32* %2, align 4
  br label %261

226:                                              ; preds = %212
  %227 = load i32, i32* %4, align 4
  %228 = sdiv i32 %227, 10
  %229 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %230 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 6
  store i32 %228, i32* %232, align 8
  %233 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %234 = load i32, i32* @E4_SA_INFO, align 4
  %235 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %233, i32 1, i32 %234, i32 68, i32 3, i32* %4)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %226
  %239 = load i32, i32* %6, align 4
  store i32 %239, i32* %2, align 4
  br label %261

240:                                              ; preds = %226
  %241 = load i32, i32* %4, align 4
  %242 = sdiv i32 %241, 2
  %243 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %244 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 7
  store i32 %242, i32* %246, align 4
  %247 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %248 = load i32, i32* @E4_SA_INFO, align 4
  %249 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %247, i32 1, i32 %248, i32 69, i32 3, i32* %4)
  store i32 %249, i32* %6, align 4
  %250 = load i32, i32* %6, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %240
  %253 = load i32, i32* %6, align 4
  store i32 %253, i32* %2, align 4
  br label %261

254:                                              ; preds = %240
  %255 = load i32, i32* %4, align 4
  %256 = sdiv i32 %255, 10
  %257 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %258 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 8
  store i32 %256, i32* %260, align 8
  store i32 0, i32* %2, align 4
  br label %261

261:                                              ; preds = %254, %252, %238, %224, %210, %172, %146, %138, %135, %124, %88, %47, %40, %36, %32, %24
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local i32 @uea_enters(i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @uea_read_cmv_e4(%struct.uea_softc*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @uea_dbg(i32, i8*, ...) #1

declare dso_local i32 @uea_info(i32, i8*) #1

declare dso_local i32 @uea_warn(i32, i8*, i32) #1

declare dso_local i32 @uea_request(%struct.uea_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @release_firmware(i32*) #1

declare dso_local i32 @UPDATE_ATM_SIGNAL(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @uea_set_bulk_timeout(%struct.uea_softc*, i32) #1

declare dso_local i32 @UPDATE_ATM_STAT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
