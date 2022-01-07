; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_bin_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_bin_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_bin = type { i32, i32, i32, i32, i64 }
%struct.urb = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.timespec64 = type { i32, i32 }
%struct.mon_bin_hdr = type { i8, i8, i64, i32, i32, i32, i32, i8, i32, i8, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@ISODESC_MAX = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i8 0, align 1
@PKT_SIZE = common dso_local global i32 0, align 4
@xfer_to_pipe = common dso_local global i32* null, align 8
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@PKT_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_reader_bin*, %struct.urb*, i8, i32)* @mon_bin_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_bin_event(%struct.mon_reader_bin* %0, %struct.urb* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca %struct.mon_reader_bin*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca %struct.timespec64, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca %struct.mon_bin_hdr*, align 8
  %20 = alloca i8, align 1
  store %struct.mon_reader_bin* %0, %struct.mon_reader_bin** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  %21 = load %struct.urb*, %struct.urb** %6, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %24, %struct.usb_endpoint_descriptor** %9, align 8
  store i8 0, i8* %20, align 1
  %25 = call i32 @ktime_get_real_ts64(%struct.timespec64* %10)
  %26 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %27 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %26, i32 0, i32 2
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 83
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load %struct.urb*, %struct.urb** %6, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  br label %41

37:                                               ; preds = %4
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %36, %33 ], [ %40, %37 ]
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %14, align 4
  %44 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %45 = call i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %41
  %48 = load %struct.urb*, %struct.urb** %6, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %16, align 4
  br label %66

53:                                               ; preds = %47
  %54 = load %struct.urb*, %struct.urb** %6, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ISODESC_MAX, align 4
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @ISODESC_MAX, align 4
  store i32 %60, i32* %16, align 4
  br label %65

61:                                               ; preds = %53
  %62 = load %struct.urb*, %struct.urb** %6, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %61, %59
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i8, i8* %7, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 67
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.urb*, %struct.urb** %6, align 8
  %72 = call i64 @usb_urb_dir_in(%struct.urb* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %76 = load %struct.urb*, %struct.urb** %6, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @mon_bin_collate_isodesc(%struct.mon_reader_bin* %75, %struct.urb* %76, i32 %77)
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %74, %70, %66
  br label %81

80:                                               ; preds = %41
  store i32 0, i32* %16, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i32, i32* %16, align 4
  %83 = zext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.urb*, %struct.urb** %6, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp uge i32 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load %struct.urb*, %struct.urb** %6, align 8
  %93 = getelementptr inbounds %struct.urb, %struct.urb* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %91, %81
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %98 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sdiv i32 %99, 5
  %101 = icmp uge i32 %96, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %104 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %105, 5
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %102, %95
  %108 = load %struct.urb*, %struct.urb** %6, align 8
  %109 = call i64 @usb_urb_dir_in(%struct.urb* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load i8, i8* %7, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 83
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 0, i32* %14, align 4
  store i8 60, i8* %20, align 1
  br label %116

116:                                              ; preds = %115, %111
  %117 = load i8, i8* @USB_DIR_IN, align 1
  store i8 %117, i8* %18, align 1
  br label %124

118:                                              ; preds = %107
  %119 = load i8, i8* %7, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 67
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 0, i32* %14, align 4
  store i8 62, i8* %20, align 1
  br label %123

123:                                              ; preds = %122, %118
  store i8 0, i8* %18, align 1
  br label %124

124:                                              ; preds = %123, %116
  %125 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %126 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @PKT_SIZE, align 4
  %133 = add i32 %131, %132
  %134 = load i32, i32* %17, align 4
  %135 = add i32 %133, %134
  %136 = call i32 @mon_buff_area_alloc_contiguous(%struct.mon_reader_bin* %130, i32 %135)
  store i32 %136, i32* %13, align 4
  br label %145

137:                                              ; preds = %124
  %138 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @PKT_SIZE, align 4
  %141 = add i32 %139, %140
  %142 = load i32, i32* %17, align 4
  %143 = add i32 %141, %142
  %144 = call i32 @mon_buff_area_alloc(%struct.mon_reader_bin* %138, i32 %143)
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %137, %129
  %146 = load i32, i32* %13, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %150 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %154 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %153, i32 0, i32 2
  %155 = load i64, i64* %11, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  br label %382

157:                                              ; preds = %145
  %158 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %159 = load i32, i32* %13, align 4
  %160 = call %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin* %158, i32 %159)
  store %struct.mon_bin_hdr* %160, %struct.mon_bin_hdr** %19, align 8
  %161 = load i32, i32* @PKT_SIZE, align 4
  %162 = load i32, i32* %13, align 4
  %163 = add i32 %162, %161
  store i32 %163, i32* %13, align 4
  %164 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %165 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp uge i32 %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  store i32 0, i32* %13, align 4
  br label %169

169:                                              ; preds = %168, %157
  %170 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %171 = load i32, i32* @PKT_SIZE, align 4
  %172 = call i32 @memset(%struct.mon_bin_hdr* %170, i32 0, i32 %171)
  %173 = load i8, i8* %7, align 1
  %174 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %175 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %174, i32 0, i32 0
  store i8 %173, i8* %175, align 8
  %176 = load i32*, i32** @xfer_to_pipe, align 8
  %177 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %178 = call i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %177)
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %182 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %181, i32 0, i32 17
  store i32 %180, i32* %182, align 8
  %183 = load i8, i8* %18, align 1
  %184 = zext i8 %183 to i32
  %185 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %186 = call zeroext i8 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %185)
  %187 = zext i8 %186 to i32
  %188 = or i32 %184, %187
  %189 = trunc i32 %188 to i8
  %190 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %191 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %190, i32 0, i32 1
  store i8 %189, i8* %191, align 1
  %192 = load %struct.urb*, %struct.urb** %6, align 8
  %193 = getelementptr inbounds %struct.urb, %struct.urb* %192, i32 0, i32 7
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %198 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %197, i32 0, i32 16
  store i32 %196, i32* %198, align 4
  %199 = load %struct.urb*, %struct.urb** %6, align 8
  %200 = getelementptr inbounds %struct.urb, %struct.urb* %199, i32 0, i32 7
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %207 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %206, i32 0, i32 15
  store i32 %205, i32* %207, align 8
  %208 = load %struct.urb*, %struct.urb** %6, align 8
  %209 = ptrtoint %struct.urb* %208 to i64
  %210 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %211 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  %212 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %10, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %215 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %214, i32 0, i32 14
  store i32 %213, i32* %215, align 4
  %216 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %10, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @NSEC_PER_USEC, align 4
  %219 = sdiv i32 %217, %218
  %220 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %221 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* %8, align 4
  %223 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %224 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %223, i32 0, i32 4
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* %12, align 4
  %226 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %227 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %17, align 4
  %230 = add i32 %228, %229
  %231 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %232 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %231, i32 0, i32 6
  store i32 %230, i32* %232, align 4
  %233 = load %struct.urb*, %struct.urb** %6, align 8
  %234 = getelementptr inbounds %struct.urb, %struct.urb* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %237 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %236, i32 0, i32 13
  store i32 %235, i32* %237, align 8
  %238 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %239 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %169
  %242 = load %struct.urb*, %struct.urb** %6, align 8
  %243 = getelementptr inbounds %struct.urb, %struct.urb* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %246 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %245, i32 0, i32 12
  store i32 %244, i32* %246, align 4
  br label %277

247:                                              ; preds = %169
  %248 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %249 = call i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %276

251:                                              ; preds = %247
  %252 = load %struct.urb*, %struct.urb** %6, align 8
  %253 = getelementptr inbounds %struct.urb, %struct.urb* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %256 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %255, i32 0, i32 12
  store i32 %254, i32* %256, align 4
  %257 = load %struct.urb*, %struct.urb** %6, align 8
  %258 = getelementptr inbounds %struct.urb, %struct.urb* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %261 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %260, i32 0, i32 11
  store i32 %259, i32* %261, align 8
  %262 = load %struct.urb*, %struct.urb** %6, align 8
  %263 = getelementptr inbounds %struct.urb, %struct.urb* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %266 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %265, i32 0, i32 10
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 1
  store i32 %264, i32* %268, align 4
  %269 = load %struct.urb*, %struct.urb** %6, align 8
  %270 = getelementptr inbounds %struct.urb, %struct.urb* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %273 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %272, i32 0, i32 10
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  store i32 %271, i32* %275, align 4
  br label %276

276:                                              ; preds = %251, %247
  br label %277

277:                                              ; preds = %276, %241
  %278 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %279 = call i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %295

281:                                              ; preds = %277
  %282 = load i8, i8* %7, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 83
  br i1 %284, label %285, label %295

285:                                              ; preds = %281
  %286 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %287 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %286, i32 0, i32 10
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.urb*, %struct.urb** %6, align 8
  %291 = load i8, i8* %7, align 1
  %292 = call signext i8 @mon_bin_get_setup(i32 %289, %struct.urb* %290, i8 signext %291)
  %293 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %294 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %293, i32 0, i32 7
  store i8 %292, i8* %294, align 8
  br label %298

295:                                              ; preds = %281, %277
  %296 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %297 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %296, i32 0, i32 7
  store i8 45, i8* %297, align 8
  br label %298

298:                                              ; preds = %295, %285
  %299 = load i32, i32* %16, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %325

301:                                              ; preds = %298
  %302 = load i32, i32* %16, align 4
  %303 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %304 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %303, i32 0, i32 8
  store i32 %302, i32* %304, align 4
  %305 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %306 = load i32, i32* %13, align 4
  %307 = load %struct.urb*, %struct.urb** %6, align 8
  %308 = load i8, i8* %7, align 1
  %309 = load i32, i32* %16, align 4
  %310 = call i32 @mon_bin_get_isodesc(%struct.mon_reader_bin* %305, i32 %306, %struct.urb* %307, i8 signext %308, i32 %309)
  %311 = load i32, i32* %17, align 4
  %312 = load i32, i32* %13, align 4
  %313 = add i32 %312, %311
  store i32 %313, i32* %13, align 4
  %314 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %315 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp uge i32 %313, %316
  br i1 %317, label %318, label %324

318:                                              ; preds = %301
  %319 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %320 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* %13, align 4
  %323 = sub i32 %322, %321
  store i32 %323, i32* %13, align 4
  br label %324

324:                                              ; preds = %318, %301
  br label %325

325:                                              ; preds = %324, %298
  %326 = load i32, i32* %14, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %370

328:                                              ; preds = %325
  %329 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %330 = load i32, i32* %13, align 4
  %331 = load %struct.urb*, %struct.urb** %6, align 8
  %332 = load i32, i32* %14, align 4
  %333 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %334 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %333, i32 0, i32 9
  %335 = call i32 @mon_bin_get_data(%struct.mon_reader_bin* %329, i32 %330, %struct.urb* %331, i32 %332, i8* %334)
  store i32 %335, i32* %14, align 4
  %336 = load i32, i32* %14, align 4
  %337 = icmp ugt i32 %336, 0
  br i1 %337, label %338, label %369

338:                                              ; preds = %328
  %339 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %340 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @PKT_ALIGN, align 4
  %343 = add i32 %341, %342
  %344 = sub i32 %343, 1
  %345 = load i32, i32* @PKT_ALIGN, align 4
  %346 = sub nsw i32 %345, 1
  %347 = xor i32 %346, -1
  %348 = and i32 %344, %347
  store i32 %348, i32* %15, align 4
  %349 = load i32, i32* %14, align 4
  %350 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %351 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 4
  %353 = sub i32 %352, %349
  store i32 %353, i32* %351, align 4
  %354 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %355 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %354, i32 0, i32 6
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @PKT_ALIGN, align 4
  %358 = add i32 %356, %357
  %359 = sub i32 %358, 1
  %360 = load i32, i32* @PKT_ALIGN, align 4
  %361 = sub nsw i32 %360, 1
  %362 = xor i32 %361, -1
  %363 = and i32 %359, %362
  %364 = load i32, i32* %15, align 4
  %365 = sub i32 %364, %363
  store i32 %365, i32* %15, align 4
  %366 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %367 = load i32, i32* %15, align 4
  %368 = call i32 @mon_buff_area_shrink(%struct.mon_reader_bin* %366, i32 %367)
  br label %369

369:                                              ; preds = %338, %328
  br label %374

370:                                              ; preds = %325
  %371 = load i8, i8* %20, align 1
  %372 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %373 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %372, i32 0, i32 9
  store i8 %371, i8* %373, align 8
  br label %374

374:                                              ; preds = %370, %369
  %375 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %376 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %375, i32 0, i32 2
  %377 = load i64, i64* %11, align 8
  %378 = call i32 @spin_unlock_irqrestore(i32* %376, i64 %377)
  %379 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %380 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %379, i32 0, i32 1
  %381 = call i32 @wake_up(i32* %380)
  br label %382

382:                                              ; preds = %374, %148
  ret void
}

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i32 @mon_bin_collate_isodesc(%struct.mon_reader_bin*, %struct.urb*, i32) #1

declare dso_local i32 @mon_buff_area_alloc_contiguous(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @mon_buff_area_alloc(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @memset(%struct.mon_bin_hdr*, i32, i32) #1

declare dso_local i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local zeroext i8 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor*) #1

declare dso_local signext i8 @mon_bin_get_setup(i32, %struct.urb*, i8 signext) #1

declare dso_local i32 @mon_bin_get_isodesc(%struct.mon_reader_bin*, i32, %struct.urb*, i8 signext, i32) #1

declare dso_local i32 @mon_bin_get_data(%struct.mon_reader_bin*, i32, %struct.urb*, i32, i8*) #1

declare dso_local i32 @mon_buff_area_shrink(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
