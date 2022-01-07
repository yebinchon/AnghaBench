; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_gadgetfs_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_gadgetfs_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i64, i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }
%struct.dev_data = type { i32, i64, i32, i32, i32, i32, i32, i32, %struct.usb_request*, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_9__*, %struct.TYPE_12__* }
%struct.usb_request = type { i32, i32, i64, %struct.TYPE_12__*, i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.usb_gadgetfs_event = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.usb_ctrlrequest }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@STATE_DEV_UNCONNECTED = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"no high speed config??\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STATE_DEV_CONNECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"connected\0A\00", align 1
@GADGETFS_CONNECT = common dso_local global i32 0, align 4
@STATE_DEV_SETUP = common dso_local global i64 0, align 8
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"configuration #%d\0A\00", align 1
@USB_STATE_CONFIGURED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"%s req%02x.%02x v%04x i%04x l%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"delegate\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GADGETFS_SETUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"ep_queue --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_ctrlrequest*)* @gadgetfs_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gadgetfs_setup(%struct.usb_gadget* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca %struct.dev_data*, align 8
  %7 = alloca %struct.usb_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_gadgetfs_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %14 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %15 = call %struct.dev_data* @get_gadget_data(%struct.usb_gadget* %14)
  store %struct.dev_data* %15, %struct.dev_data** %6, align 8
  %16 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %17 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %16, i32 0, i32 8
  %18 = load %struct.usb_request*, %struct.usb_request** %17, align 8
  store %struct.usb_request* %18, %struct.usb_request** %7, align 8
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %22 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %30 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %29, i32 0, i32 6
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %33 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %35 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @STATE_DEV_UNCONNECTED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %2
  %40 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %41 = call i64 @gadget_is_dualspeed(%struct.usb_gadget* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %45 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @USB_SPEED_HIGH, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %51 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %50, i32 0, i32 13
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = icmp eq %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %56 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %55, i32 0, i32 6
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %59 = call i32 @ERROR(%struct.dev_data* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %435

62:                                               ; preds = %49, %43, %39
  %63 = load i64, i64* @STATE_DEV_CONNECTED, align 8
  %64 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %65 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %67 = call i32 (%struct.dev_data*, i8*, ...) @INFO(%struct.dev_data* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %69 = load i32, i32* @GADGETFS_CONNECT, align 4
  %70 = call %struct.usb_gadgetfs_event* @next_event(%struct.dev_data* %68, i32 %69)
  store %struct.usb_gadgetfs_event* %70, %struct.usb_gadgetfs_event** %9, align 8
  %71 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %72 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.usb_gadgetfs_event*, %struct.usb_gadgetfs_event** %9, align 8
  %75 = getelementptr inbounds %struct.usb_gadgetfs_event, %struct.usb_gadgetfs_event* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %78 = call i32 @ep0_readable(%struct.dev_data* %77)
  br label %89

79:                                               ; preds = %2
  %80 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %81 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @STATE_DEV_SETUP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %87 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %79
  br label %89

89:                                               ; preds = %88, %62
  %90 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %91 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %90, i32 0, i32 16
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %94 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %93, i32 0, i32 3
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %94, align 8
  %95 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %96 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %95, i32 0, i32 4
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  %99 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %100 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %255 [
    i32 129, label %102
    i32 128, label %159
    i32 130, label %239
  ]

102:                                              ; preds = %89
  %103 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %104 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @USB_DIR_IN, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %256

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  %111 = ashr i32 %110, 8
  switch i32 %111, label %157 [
    i32 134, label %112
    i32 133, label %131
    i32 132, label %142
    i32 135, label %142
    i32 131, label %156
  ]

112:                                              ; preds = %109
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @min(i32 %113, i32 4)
  store i32 %114, i32* %8, align 4
  %115 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %116 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %115, i32 0, i32 15
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %123 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %122, i32 0, i32 14
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 4
  %126 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %127 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %126, i32 0, i32 14
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %130 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %129, i32 0, i32 3
  store %struct.TYPE_12__* %128, %struct.TYPE_12__** %130, align 8
  br label %158

131:                                              ; preds = %109
  %132 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %133 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %132, i32 0, i32 13
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = icmp ne %struct.TYPE_10__* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  br label %158

137:                                              ; preds = %131
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @min(i32 %138, i32 4)
  store i32 %139, i32* %8, align 4
  %140 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %141 = call i32 @make_qualifier(%struct.dev_data* %140)
  br label %158

142:                                              ; preds = %109, %109
  %143 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %144 = load i32, i32* %10, align 4
  %145 = ashr i32 %144, 8
  %146 = load i32, i32* %10, align 4
  %147 = and i32 %146, 255
  %148 = call i32 @config_buf(%struct.dev_data* %143, i32 %145, i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @min(i32 %152, i32 %153)
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %151, %142
  br label %158

156:                                              ; preds = %109
  br label %256

157:                                              ; preds = %109
  br label %158

158:                                              ; preds = %157, %155, %137, %136, %112
  br label %378

159:                                              ; preds = %89
  %160 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %161 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %256

165:                                              ; preds = %159
  %166 = load i32, i32* %10, align 4
  %167 = icmp eq i32 0, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  store i32 0, i32* %8, align 4
  %169 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %170 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %169, i32 0, i32 2
  store i32 0, i32* %170, align 8
  %171 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %172 = call i32 @usb_gadget_vbus_draw(%struct.usb_gadget* %171, i32 8)
  br label %218

173:                                              ; preds = %165
  %174 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %175 = call i64 @gadget_is_dualspeed(%struct.usb_gadget* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %173
  %178 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %179 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @USB_SPEED_HIGH, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %177
  %184 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %185 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %184, i32 0, i32 13
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %12, align 4
  %189 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %190 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %189, i32 0, i32 13
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %13, align 4
  br label %205

194:                                              ; preds = %177, %173
  %195 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %196 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %195, i32 0, i32 12
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %12, align 4
  %200 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %201 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %200, i32 0, i32 12
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %13, align 4
  br label %205

205:                                              ; preds = %194, %183
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* %10, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %205
  store i32 0, i32* %8, align 4
  %210 = load i32, i32* %12, align 4
  %211 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %212 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %214 = load i32, i32* %13, align 4
  %215 = mul nsw i32 2, %214
  %216 = call i32 @usb_gadget_vbus_draw(%struct.usb_gadget* %213, i32 %215)
  br label %217

217:                                              ; preds = %209, %205
  br label %218

218:                                              ; preds = %217, %168
  %219 = load i32, i32* %8, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %238

221:                                              ; preds = %218
  %222 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %223 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %224 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (%struct.dev_data*, i8*, ...) @INFO(%struct.dev_data* %222, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %225)
  %227 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %228 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %229 = call i32 @usb_gadget_set_state(%struct.usb_gadget* %227, i32 %228)
  %230 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %231 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %230, i32 0, i32 11
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %221
  %235 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %236 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %235, i32 0, i32 3
  store i32 0, i32* %236, align 4
  br label %284

237:                                              ; preds = %221
  br label %238

238:                                              ; preds = %237, %218
  br label %378

239:                                              ; preds = %89
  %240 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %241 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 128
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  br label %256

245:                                              ; preds = %239
  %246 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %247 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %250 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %249, i32 0, i32 3
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = bitcast %struct.TYPE_12__* %251 to i32*
  store i32 %248, i32* %252, align 4
  %253 = load i32, i32* %11, align 4
  %254 = call i32 @min(i32 %253, i32 1)
  store i32 %254, i32* %8, align 4
  br label %378

255:                                              ; preds = %89
  br label %256

256:                                              ; preds = %255, %244, %164, %156, %108
  %257 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %258 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %259 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %258, i32 0, i32 11
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %264 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %265 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %268 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %10, align 4
  %271 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %272 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @le16_to_cpu(i32 %273)
  %275 = load i32, i32* %11, align 4
  %276 = call i32 @VDEBUG(%struct.dev_data* %257, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %263, i32 %266, i32 %269, i32 %270, i32 %274, i32 %275)
  %277 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %278 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %277, i32 0, i32 11
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %377

281:                                              ; preds = %256
  %282 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %283 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %282, i32 0, i32 3
  store i32 1, i32* %283, align 4
  br label %284

284:                                              ; preds = %281, %234
  %285 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %286 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @USB_DIR_IN, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i32 1, i32 0
  %293 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %294 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %293, i32 0, i32 4
  store i32 %292, i32* %294, align 8
  %295 = load i32, i32* %11, align 4
  %296 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %297 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %296, i32 0, i32 5
  store i32 %295, i32* %297, align 4
  %298 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %299 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %298, i32 0, i32 10
  store i32 0, i32* %299, align 4
  %300 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %301 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %300, i32 0, i32 9
  store i32 0, i32* %301, align 8
  %302 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %303 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %284
  %307 = load i32, i32* %11, align 4
  %308 = icmp ne i32 %307, 0
  br label %309

309:                                              ; preds = %306, %284
  %310 = phi i1 [ false, %284 ], [ %308, %306 ]
  %311 = zext i1 %310 to i32
  %312 = call i32 @unlikely(i32 %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %362

314:                                              ; preds = %309
  %315 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %316 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %319 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %318, i32 0, i32 8
  %320 = load %struct.usb_request*, %struct.usb_request** %319, align 8
  %321 = load i32, i32* %11, align 4
  %322 = call i32 @setup_req(i32 %317, %struct.usb_request* %320, i32 %321)
  store i32 %322, i32* %8, align 4
  %323 = load i32, i32* %8, align 4
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %314
  br label %378

326:                                              ; preds = %314
  %327 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %328 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %327, i32 0, i32 7
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 4
  %331 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %332 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %331, i32 0, i32 6
  %333 = call i32 @spin_unlock(i32* %332)
  %334 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %335 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %338 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %337, i32 0, i32 8
  %339 = load %struct.usb_request*, %struct.usb_request** %338, align 8
  %340 = load i32, i32* @GFP_KERNEL, align 4
  %341 = call i32 @usb_ep_queue(i32 %336, %struct.usb_request* %339, i32 %340)
  store i32 %341, i32* %8, align 4
  %342 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %343 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %342, i32 0, i32 6
  %344 = call i32 @spin_lock(i32* %343)
  %345 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %346 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %345, i32 0, i32 7
  %347 = load i32, i32* %346, align 4
  %348 = add nsw i32 %347, -1
  store i32 %348, i32* %346, align 4
  %349 = load i32, i32* %8, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %359

351:                                              ; preds = %326
  %352 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %353 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %356 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %355, i32 0, i32 8
  %357 = load %struct.usb_request*, %struct.usb_request** %356, align 8
  %358 = call i32 @clean_req(i32 %354, %struct.usb_request* %357)
  br label %378

359:                                              ; preds = %326
  %360 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %361 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %360, i32 0, i32 3
  store i32 0, i32* %361, align 4
  br label %362

362:                                              ; preds = %359, %309
  %363 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %364 = load i32, i32* @GADGETFS_SETUP, align 4
  %365 = call %struct.usb_gadgetfs_event* @next_event(%struct.dev_data* %363, i32 %364)
  store %struct.usb_gadgetfs_event* %365, %struct.usb_gadgetfs_event** %9, align 8
  %366 = load %struct.usb_gadgetfs_event*, %struct.usb_gadgetfs_event** %9, align 8
  %367 = getelementptr inbounds %struct.usb_gadgetfs_event, %struct.usb_gadgetfs_event* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 1
  %369 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %370 = bitcast %struct.usb_ctrlrequest* %368 to i8*
  %371 = bitcast %struct.usb_ctrlrequest* %369 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %370, i8* align 4 %371, i64 20, i1 false)
  %372 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %373 = call i32 @ep0_readable(%struct.dev_data* %372)
  %374 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %375 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %374, i32 0, i32 6
  %376 = call i32 @spin_unlock(i32* %375)
  store i32 0, i32* %3, align 4
  br label %435

377:                                              ; preds = %256
  br label %378

378:                                              ; preds = %377, %351, %325, %245, %238, %158
  %379 = load i32, i32* %8, align 4
  %380 = icmp sge i32 %379, 0
  br i1 %380, label %381, label %430

381:                                              ; preds = %378
  %382 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %383 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %382, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @STATE_DEV_SETUP, align 8
  %386 = icmp ne i64 %384, %385
  br i1 %386, label %387, label %430

387:                                              ; preds = %381
  %388 = load i32, i32* %8, align 4
  %389 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %390 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %389, i32 0, i32 0
  store i32 %388, i32* %390, align 8
  %391 = load i32, i32* %8, align 4
  %392 = load i32, i32* %11, align 4
  %393 = icmp slt i32 %391, %392
  %394 = zext i1 %393 to i32
  %395 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %396 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %395, i32 0, i32 1
  store i32 %394, i32* %396, align 4
  %397 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %398 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %397, i32 0, i32 7
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %398, align 4
  %401 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %402 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %401, i32 0, i32 6
  %403 = call i32 @spin_unlock(i32* %402)
  %404 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %405 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %408 = load i32, i32* @GFP_KERNEL, align 4
  %409 = call i32 @usb_ep_queue(i32 %406, %struct.usb_request* %407, i32 %408)
  store i32 %409, i32* %8, align 4
  %410 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %411 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %410, i32 0, i32 6
  %412 = call i32 @spin_lock(i32* %411)
  %413 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %414 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %413, i32 0, i32 7
  %415 = load i32, i32* %414, align 4
  %416 = add nsw i32 %415, -1
  store i32 %416, i32* %414, align 4
  %417 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %418 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %417, i32 0, i32 6
  %419 = call i32 @spin_unlock(i32* %418)
  %420 = load i32, i32* %8, align 4
  %421 = icmp slt i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %387
  %423 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %424 = load i32, i32* %8, align 4
  %425 = call i32 @DBG(%struct.dev_data* %423, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %424)
  %426 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %427 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %426, i32 0, i32 2
  store i64 0, i64* %427, align 8
  br label %428

428:                                              ; preds = %422, %387
  %429 = load i32, i32* %8, align 4
  store i32 %429, i32* %3, align 4
  br label %435

430:                                              ; preds = %381, %378
  %431 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %432 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %431, i32 0, i32 6
  %433 = call i32 @spin_unlock(i32* %432)
  %434 = load i32, i32* %8, align 4
  store i32 %434, i32* %3, align 4
  br label %435

435:                                              ; preds = %430, %428, %362, %54
  %436 = load i32, i32* %3, align 4
  ret i32 %436
}

declare dso_local %struct.dev_data* @get_gadget_data(%struct.usb_gadget*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @gadget_is_dualspeed(%struct.usb_gadget*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ERROR(%struct.dev_data*, i8*) #1

declare dso_local i32 @INFO(%struct.dev_data*, i8*, ...) #1

declare dso_local %struct.usb_gadgetfs_event* @next_event(%struct.dev_data*, i32) #1

declare dso_local i32 @ep0_readable(%struct.dev_data*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @make_qualifier(%struct.dev_data*) #1

declare dso_local i32 @config_buf(%struct.dev_data*, i32, i32) #1

declare dso_local i32 @usb_gadget_vbus_draw(%struct.usb_gadget*, i32) #1

declare dso_local i32 @usb_gadget_set_state(%struct.usb_gadget*, i32) #1

declare dso_local i32 @VDEBUG(%struct.dev_data*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @setup_req(i32, %struct.usb_request*, i32) #1

declare dso_local i32 @usb_ep_queue(i32, %struct.usb_request*, i32) #1

declare dso_local i32 @clean_req(i32, %struct.usb_request*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DBG(%struct.dev_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
