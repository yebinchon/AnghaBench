; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_starturbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_starturbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i64, i32, i32, %struct.urb*, i32, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.urb = type { i32, %struct.TYPE_11__*, i8* }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }
%struct.TYPE_10__ = type { %struct.bas_bc_state* }
%struct.bas_bc_state = type { i32, i32*, i32, %struct.bc_state*, %struct.bc_state*, %struct.TYPE_12__*, i64, %struct.urb** }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@L2_HDLC = common dso_local global i64 0, align 8
@INS_flag_hunt = common dso_local global i32 0, align 4
@BAS_INURBS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@BAS_INBUFSIZE = common dso_local global i32 0, align 4
@read_iso_callback = common dso_local global i32 0, align 4
@BAS_FRAMETIME = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i8* null, align 8
@BAS_NUMFRAMES = common dso_local global i32 0, align 4
@BAS_MAXFRAME = common dso_local global i32 0, align 4
@DEBUG_ISO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Initial isoc read\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PPP_FLAG = common dso_local global i32 0, align 4
@BAS_OUTURBS = common dso_local global i32 0, align 4
@write_iso_callback = common dso_local global i32 0, align 4
@BAS_OUTBUFSIZE = common dso_local global i32 0, align 4
@BAS_NORMFRAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Initial isoc write\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Initial isoc write (free)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bc_state*)* @starturbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @starturbs(%struct.bc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_state*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.bas_bc_state*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bc_state* %0, %struct.bc_state** %3, align 8
  %10 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %11 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %10, i32 0, i32 6
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %4, align 8
  %18 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %19 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.bas_bc_state*, %struct.bas_bc_state** %20, align 8
  store %struct.bas_bc_state* %21, %struct.bas_bc_state** %5, align 8
  %22 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %23 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @L2_HDLC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @INS_flag_hunt, align 4
  %29 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %30 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %35 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %133, %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @BAS_INURBS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %136

40:                                               ; preds = %36
  %41 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %42 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %41, i32 0, i32 7
  %43 = load %struct.urb**, %struct.urb*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.urb*, %struct.urb** %43, i64 %45
  %47 = load %struct.urb*, %struct.urb** %46, align 8
  store %struct.urb* %47, %struct.urb** %6, align 8
  %48 = load %struct.urb*, %struct.urb** %6, align 8
  %49 = icmp ne %struct.urb* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @EFAULT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %283

53:                                               ; preds = %40
  %54 = load %struct.urb*, %struct.urb** %6, align 8
  %55 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %56 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %57 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %58 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 2, %59
  %61 = add nsw i32 3, %60
  %62 = call i32 @usb_rcvisocpipe(%struct.usb_device* %56, i32 %61)
  %63 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %64 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @BAS_INBUFSIZE, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %65, %69
  %71 = load i32, i32* @BAS_INBUFSIZE, align 4
  %72 = load i32, i32* @read_iso_callback, align 4
  %73 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %74 = load i32, i32* @BAS_FRAMETIME, align 4
  %75 = call i32 @usb_fill_int_urb(%struct.urb* %54, %struct.usb_device* %55, i32 %62, i64 %70, i32 %71, i32 %72, %struct.bc_state* %73, i32 %74)
  %76 = load i8*, i8** @URB_ISO_ASAP, align 8
  %77 = load %struct.urb*, %struct.urb** %6, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @BAS_NUMFRAMES, align 4
  %80 = load %struct.urb*, %struct.urb** %6, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %119, %53
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @BAS_NUMFRAMES, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %122

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @BAS_MAXFRAME, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load %struct.urb*, %struct.urb** %6, align 8
  %91 = getelementptr inbounds %struct.urb, %struct.urb* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store i32 %89, i32* %96, align 8
  %97 = load i32, i32* @BAS_MAXFRAME, align 4
  %98 = load %struct.urb*, %struct.urb** %6, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  store i32 %97, i32* %104, align 4
  %105 = load %struct.urb*, %struct.urb** %6, align 8
  %106 = getelementptr inbounds %struct.urb, %struct.urb* %105, i32 0, i32 1
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  store i64 0, i64* %111, align 8
  %112 = load %struct.urb*, %struct.urb** %6, align 8
  %113 = getelementptr inbounds %struct.urb, %struct.urb* %112, i32 0, i32 1
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %86
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %82

122:                                              ; preds = %82
  %123 = load i32, i32* @DEBUG_ISO, align 4
  %124 = load %struct.urb*, %struct.urb** %6, align 8
  %125 = call i32 @dump_urb(i32 %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.urb* %124)
  %126 = load %struct.urb*, %struct.urb** %6, align 8
  %127 = load i32, i32* @GFP_ATOMIC, align 4
  %128 = call i32 @usb_submit_urb(%struct.urb* %126, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %283

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %36

136:                                              ; preds = %36
  %137 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %138 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %137, i32 0, i32 5
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load i32, i32* @PPP_FLAG, align 4
  %141 = call i32 @gigaset_isowbuf_init(%struct.TYPE_12__* %139, i32 %140)
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %236, %136
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @BAS_OUTURBS, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %239

146:                                              ; preds = %142
  %147 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %148 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %147, i32 0, i32 3
  %149 = load %struct.bc_state*, %struct.bc_state** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %149, i64 %151
  %153 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %152, i32 0, i32 3
  %154 = load %struct.urb*, %struct.urb** %153, align 8
  store %struct.urb* %154, %struct.urb** %6, align 8
  %155 = load %struct.urb*, %struct.urb** %6, align 8
  %156 = icmp ne %struct.urb* %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %146
  %158 = load i32, i32* @EFAULT, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %9, align 4
  br label %283

160:                                              ; preds = %146
  %161 = load %struct.urb*, %struct.urb** %6, align 8
  %162 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %163 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %164 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %165 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 2, %166
  %168 = add nsw i32 4, %167
  %169 = call i32 @usb_sndisocpipe(%struct.usb_device* %163, i32 %168)
  %170 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %171 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %170, i32 0, i32 5
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* @write_iso_callback, align 4
  %176 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %177 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %176, i32 0, i32 3
  %178 = load %struct.bc_state*, %struct.bc_state** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %178, i64 %180
  %182 = load i32, i32* @BAS_FRAMETIME, align 4
  %183 = call i32 @usb_fill_int_urb(%struct.urb* %161, %struct.usb_device* %162, i32 %169, i64 %174, i32 8, i32 %175, %struct.bc_state* %181, i32 %182)
  %184 = load i8*, i8** @URB_ISO_ASAP, align 8
  %185 = load %struct.urb*, %struct.urb** %6, align 8
  %186 = getelementptr inbounds %struct.urb, %struct.urb* %185, i32 0, i32 2
  store i8* %184, i8** %186, align 8
  %187 = load i32, i32* @BAS_NUMFRAMES, align 4
  %188 = load %struct.urb*, %struct.urb** %6, align 8
  %189 = getelementptr inbounds %struct.urb, %struct.urb* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  store i32 0, i32* %7, align 4
  br label %190

190:                                              ; preds = %225, %160
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @BAS_NUMFRAMES, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %228

194:                                              ; preds = %190
  %195 = load i32, i32* @BAS_OUTBUFSIZE, align 4
  %196 = load %struct.urb*, %struct.urb** %6, align 8
  %197 = getelementptr inbounds %struct.urb, %struct.urb* %196, i32 0, i32 1
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  store i32 %195, i32* %202, align 8
  %203 = load i32, i32* @BAS_NORMFRAME, align 4
  %204 = load %struct.urb*, %struct.urb** %6, align 8
  %205 = getelementptr inbounds %struct.urb, %struct.urb* %204, i32 0, i32 1
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  store i32 %203, i32* %210, align 4
  %211 = load %struct.urb*, %struct.urb** %6, align 8
  %212 = getelementptr inbounds %struct.urb, %struct.urb* %211, i32 0, i32 1
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 3
  store i64 0, i64* %217, align 8
  %218 = load %struct.urb*, %struct.urb** %6, align 8
  %219 = getelementptr inbounds %struct.urb, %struct.urb* %218, i32 0, i32 1
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 2
  store i64 0, i64* %224, align 8
  br label %225

225:                                              ; preds = %194
  %226 = load i32, i32* %7, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %7, align 4
  br label %190

228:                                              ; preds = %190
  %229 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %230 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %229, i32 0, i32 3
  %231 = load %struct.bc_state*, %struct.bc_state** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %231, i64 %233
  %235 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %234, i32 0, i32 2
  store i32 -1, i32* %235, align 4
  br label %236

236:                                              ; preds = %228
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %8, align 4
  br label %142

239:                                              ; preds = %142
  store i32 0, i32* %8, align 4
  br label %240

240:                                              ; preds = %263, %239
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @BAS_OUTURBS, align 4
  %243 = sub nsw i32 %242, 1
  %244 = icmp slt i32 %241, %243
  br i1 %244, label %245, label %266

245:                                              ; preds = %240
  %246 = load i32, i32* @DEBUG_ISO, align 4
  %247 = load %struct.urb*, %struct.urb** %6, align 8
  %248 = call i32 @dump_urb(i32 %246, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %247)
  %249 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %250 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %249, i32 0, i32 3
  %251 = load %struct.bc_state*, %struct.bc_state** %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %251, i64 %253
  %255 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %254, i32 0, i32 3
  %256 = load %struct.urb*, %struct.urb** %255, align 8
  %257 = load i32, i32* @GFP_ATOMIC, align 4
  %258 = call i32 @usb_submit_urb(%struct.urb* %256, i32 %257)
  store i32 %258, i32* %9, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %245
  br label %283

262:                                              ; preds = %245
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %240

266:                                              ; preds = %240
  %267 = load i32, i32* @DEBUG_ISO, align 4
  %268 = load %struct.urb*, %struct.urb** %6, align 8
  %269 = call i32 @dump_urb(i32 %267, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %268)
  %270 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %271 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %270, i32 0, i32 3
  %272 = load %struct.bc_state*, %struct.bc_state** %271, align 8
  %273 = load i32, i32* @BAS_OUTURBS, align 4
  %274 = sub nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %272, i64 %275
  %277 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %278 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %277, i32 0, i32 4
  store %struct.bc_state* %276, %struct.bc_state** %278, align 8
  %279 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %280 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %279, i32 0, i32 1
  store i32* null, i32** %280, align 8
  %281 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %282 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %281, i32 0, i32 2
  store i32 0, i32* %282, align 8
  store i32 0, i32* %2, align 4
  br label %287

283:                                              ; preds = %261, %157, %131, %50
  %284 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %285 = call i32 @stopurbs(%struct.bas_bc_state* %284)
  %286 = load i32, i32* %9, align 4
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %283, %266
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, %struct.usb_device*, i32, i64, i32, i32, %struct.bc_state*, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dump_urb(i32, i8*, %struct.urb*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @gigaset_isowbuf_init(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @usb_sndisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @stopurbs(%struct.bas_bc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
