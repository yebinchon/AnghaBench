; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_text = type { i64, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.urb = type { i32, i32, %struct.usb_iso_packet_descriptor*, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.mon_event_text = type { i8, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mon_iso_desc*, i32, i32, i32, i32, i32, i32, i32 }
%struct.mon_iso_desc = type { i32, i32, i32 }

@EVENT_MAX = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i64 0, align 8
@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@ISODESC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_reader_text*, %struct.urb*, i8, i32)* @mon_text_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_text_event(%struct.mon_reader_text* %0, %struct.urb* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca %struct.mon_reader_text*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.mon_event_text*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %12 = alloca %struct.mon_iso_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mon_reader_text* %0, %struct.mon_reader_text** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  %15 = call i32 (...) @mon_get_timestamp()
  store i32 %15, i32* %10, align 4
  %16 = load %struct.mon_reader_text*, %struct.mon_reader_text** %5, align 8
  %17 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EVENT_MAX, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load %struct.mon_reader_text*, %struct.mon_reader_text** %5, align 8
  %23 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.mon_event_text* @kmem_cache_alloc(i32 %24, i32 %25)
  store %struct.mon_event_text* %26, %struct.mon_event_text** %9, align 8
  %27 = icmp eq %struct.mon_event_text* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %21, %4
  %29 = load %struct.mon_reader_text*, %struct.mon_reader_text** %5, align 8
  %30 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %248

36:                                               ; preds = %21
  %37 = load i8, i8* %7, align 1
  %38 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %39 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %38, i32 0, i32 0
  store i8 %37, i8* %39, align 8
  %40 = load %struct.urb*, %struct.urb** %6, align 8
  %41 = ptrtoint %struct.urb* %40 to i64
  %42 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %43 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.urb*, %struct.urb** %6, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %52 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %51, i32 0, i32 17
  store i32 %50, i32* %52, align 8
  %53 = load %struct.urb*, %struct.urb** %6, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %59 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %58, i32 0, i32 16
  store i32 %57, i32* %59, align 4
  %60 = load %struct.urb*, %struct.urb** %6, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 7
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = call i32 @usb_endpoint_num(i32* %63)
  %65 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %66 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %65, i32 0, i32 15
  store i32 %64, i32* %66, align 8
  %67 = load %struct.urb*, %struct.urb** %6, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 7
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = call i64 @usb_endpoint_type(i32* %70)
  %72 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %73 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %struct.urb*, %struct.urb** %6, align 8
  %75 = call i32 @usb_urb_dir_in(%struct.urb* %74)
  %76 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %77 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %76, i32 0, i32 14
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %80 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load i8, i8* %7, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 83
  br i1 %83, label %84, label %88

84:                                               ; preds = %36
  %85 = load %struct.urb*, %struct.urb** %6, align 8
  %86 = getelementptr inbounds %struct.urb, %struct.urb* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  br label %92

88:                                               ; preds = %36
  %89 = load %struct.urb*, %struct.urb** %6, align 8
  %90 = getelementptr inbounds %struct.urb, %struct.urb* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi i32 [ %87, %84 ], [ %91, %88 ]
  %94 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %95 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %98 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %100 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @USB_ENDPOINT_XFER_INT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %92
  %105 = load %struct.urb*, %struct.urb** %6, align 8
  %106 = getelementptr inbounds %struct.urb, %struct.urb* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %109 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %108, i32 0, i32 13
  store i32 %107, i32* %109, align 8
  br label %133

110:                                              ; preds = %92
  %111 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %112 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %110
  %117 = load %struct.urb*, %struct.urb** %6, align 8
  %118 = getelementptr inbounds %struct.urb, %struct.urb* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %121 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %120, i32 0, i32 13
  store i32 %119, i32* %121, align 8
  %122 = load %struct.urb*, %struct.urb** %6, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %126 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %125, i32 0, i32 12
  store i32 %124, i32* %126, align 4
  %127 = load %struct.urb*, %struct.urb** %6, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %131 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %130, i32 0, i32 11
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %116, %110
  br label %133

133:                                              ; preds = %132, %104
  %134 = load %struct.urb*, %struct.urb** %6, align 8
  %135 = getelementptr inbounds %struct.urb, %struct.urb* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %138 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 8
  %139 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %140 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %212

144:                                              ; preds = %133
  %145 = load %struct.urb*, %struct.urb** %6, align 8
  %146 = getelementptr inbounds %struct.urb, %struct.urb* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %212

149:                                              ; preds = %144
  %150 = load %struct.urb*, %struct.urb** %6, align 8
  %151 = getelementptr inbounds %struct.urb, %struct.urb* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* @ISODESC_MAX, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* @ISODESC_MAX, align 4
  store i32 %156, i32* %14, align 4
  br label %157

157:                                              ; preds = %155, %149
  %158 = load %struct.urb*, %struct.urb** %6, align 8
  %159 = getelementptr inbounds %struct.urb, %struct.urb* %158, i32 0, i32 2
  %160 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %159, align 8
  store %struct.usb_iso_packet_descriptor* %160, %struct.usb_iso_packet_descriptor** %11, align 8
  %161 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %162 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %161, i32 0, i32 10
  %163 = load %struct.mon_iso_desc*, %struct.mon_iso_desc** %162, align 8
  store %struct.mon_iso_desc* %163, %struct.mon_iso_desc** %12, align 8
  store i32 0, i32* %13, align 4
  br label %164

164:                                              ; preds = %198, %157
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %201

168:                                              ; preds = %164
  %169 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %11, align 8
  %170 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.mon_iso_desc*, %struct.mon_iso_desc** %12, align 8
  %173 = getelementptr inbounds %struct.mon_iso_desc, %struct.mon_iso_desc* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  %174 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %11, align 8
  %175 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.mon_iso_desc*, %struct.mon_iso_desc** %12, align 8
  %178 = getelementptr inbounds %struct.mon_iso_desc, %struct.mon_iso_desc* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load i8, i8* %7, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 83
  br i1 %181, label %182, label %186

182:                                              ; preds = %168
  %183 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %11, align 8
  %184 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  br label %190

186:                                              ; preds = %168
  %187 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %11, align 8
  %188 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  br label %190

190:                                              ; preds = %186, %182
  %191 = phi i32 [ %185, %182 ], [ %189, %186 ]
  %192 = load %struct.mon_iso_desc*, %struct.mon_iso_desc** %12, align 8
  %193 = getelementptr inbounds %struct.mon_iso_desc, %struct.mon_iso_desc* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 4
  %194 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %11, align 8
  %195 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %194, i32 1
  store %struct.usb_iso_packet_descriptor* %195, %struct.usb_iso_packet_descriptor** %11, align 8
  %196 = load %struct.mon_iso_desc*, %struct.mon_iso_desc** %12, align 8
  %197 = getelementptr inbounds %struct.mon_iso_desc, %struct.mon_iso_desc* %196, i32 1
  store %struct.mon_iso_desc* %197, %struct.mon_iso_desc** %12, align 8
  br label %198

198:                                              ; preds = %190
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %164

201:                                              ; preds = %164
  %202 = load i8, i8* %7, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 67
  br i1 %204, label %205, label %211

205:                                              ; preds = %201
  %206 = load %struct.urb*, %struct.urb** %6, align 8
  %207 = getelementptr inbounds %struct.urb, %struct.urb* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %210 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %209, i32 0, i32 7
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %205, %201
  br label %212

212:                                              ; preds = %211, %144, %133
  %213 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %214 = load %struct.urb*, %struct.urb** %6, align 8
  %215 = load i8, i8* %7, align 1
  %216 = load %struct.mon_reader_text*, %struct.mon_reader_text** %5, align 8
  %217 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = call i32 @mon_text_get_setup(%struct.mon_event_text* %213, %struct.urb* %214, i8 signext %215, %struct.TYPE_11__* %219)
  %221 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %222 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %221, i32 0, i32 9
  store i32 %220, i32* %222, align 8
  %223 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %224 = load %struct.urb*, %struct.urb** %6, align 8
  %225 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %226 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 8
  %228 = load i8, i8* %7, align 1
  %229 = load %struct.mon_reader_text*, %struct.mon_reader_text** %5, align 8
  %230 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  %233 = call i32 @mon_text_get_data(%struct.mon_event_text* %223, %struct.urb* %224, i32 %227, i8 signext %228, %struct.TYPE_11__* %232)
  %234 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %235 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %234, i32 0, i32 8
  store i32 %233, i32* %235, align 4
  %236 = load %struct.mon_reader_text*, %struct.mon_reader_text** %5, align 8
  %237 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %238, 1
  store i64 %239, i64* %237, align 8
  %240 = load %struct.mon_event_text*, %struct.mon_event_text** %9, align 8
  %241 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %240, i32 0, i32 6
  %242 = load %struct.mon_reader_text*, %struct.mon_reader_text** %5, align 8
  %243 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %242, i32 0, i32 2
  %244 = call i32 @list_add_tail(i32* %241, i32* %243)
  %245 = load %struct.mon_reader_text*, %struct.mon_reader_text** %5, align 8
  %246 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %245, i32 0, i32 1
  %247 = call i32 @wake_up(i32* %246)
  br label %248

248:                                              ; preds = %212, %28
  ret void
}

declare dso_local i32 @mon_get_timestamp(...) #1

declare dso_local %struct.mon_event_text* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @usb_endpoint_num(i32*) #1

declare dso_local i64 @usb_endpoint_type(i32*) #1

declare dso_local i32 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i32 @mon_text_get_setup(%struct.mon_event_text*, %struct.urb*, i8 signext, %struct.TYPE_11__*) #1

declare dso_local i32 @mon_text_get_data(%struct.mon_event_text*, %struct.urb*, i32, i8 signext, %struct.TYPE_11__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
