; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_itd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_itd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32, i32 }
%struct.fotg210_itd = type { i32*, i32, %struct.urb*, i64*, %struct.fotg210_iso_stream* }
%struct.urb = type { i32, %struct.usb_device*, i32, i32, i32, %struct.usb_iso_packet_descriptor* }
%struct.usb_device = type { i32 }
%struct.usb_iso_packet_descriptor = type { i32, i8* }
%struct.fotg210_iso_stream = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ISO_ERRS = common dso_local global i32 0, align 4
@FOTG210_ISOC_BUF_ERR = common dso_local global i32 0, align 4
@ENOSR = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@FOTG210_ISOC_BABBLE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@FOTG210_ISOC_ACTIVE = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"deschedule devp %s ep%d%s-iso\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fotg210_hcd*, %struct.fotg210_itd*)* @itd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itd_complete(%struct.fotg210_hcd* %0, %struct.fotg210_itd* %1) #0 {
  %3 = alloca %struct.fotg210_hcd*, align 8
  %4 = alloca %struct.fotg210_itd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fotg210_iso_stream*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %3, align 8
  store %struct.fotg210_itd* %1, %struct.fotg210_itd** %4, align 8
  %13 = load %struct.fotg210_itd*, %struct.fotg210_itd** %4, align 8
  %14 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %13, i32 0, i32 2
  %15 = load %struct.urb*, %struct.urb** %14, align 8
  store %struct.urb* %15, %struct.urb** %5, align 8
  store i32 -1, i32* %9, align 4
  %16 = load %struct.fotg210_itd*, %struct.fotg210_itd** %4, align 8
  %17 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %16, i32 0, i32 4
  %18 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %17, align 8
  store %struct.fotg210_iso_stream* %18, %struct.fotg210_iso_stream** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %164, %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp ult i32 %20, 8
  br i1 %21, label %22, label %167

22:                                               ; preds = %19
  %23 = load %struct.fotg210_itd*, %struct.fotg210_itd** %4, align 8
  %24 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %164

35:                                               ; preds = %22
  %36 = load %struct.fotg210_itd*, %struct.fotg210_itd** %4, align 8
  %37 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.urb*, %struct.urb** %5, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 5
  %45 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %45, i64 %47
  store %struct.usb_iso_packet_descriptor* %48, %struct.usb_iso_packet_descriptor** %6, align 8
  %49 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %50 = load %struct.fotg210_itd*, %struct.fotg210_itd** %4, align 8
  %51 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %50, i32 0, i32 3
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = call i32 @hc32_to_cpup(%struct.fotg210_hcd* %49, i64* %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.fotg210_itd*, %struct.fotg210_itd** %4, align 8
  %58 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @ISO_ERRS, align 4
  %65 = and i32 %63, %64
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %131

68:                                               ; preds = %35
  %69 = load %struct.urb*, %struct.urb** %5, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @FOTG210_ISOC_BUF_ERR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %68
  %78 = load %struct.urb*, %struct.urb** %5, align 8
  %79 = getelementptr inbounds %struct.urb, %struct.urb* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @usb_pipein(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @ENOSR, align 4
  %85 = sub nsw i32 0, %84
  br label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @ECOMM, align 4
  %88 = sub nsw i32 0, %87
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i32 [ %85, %83 ], [ %88, %86 ]
  %91 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %92 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %109

93:                                               ; preds = %68
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @FOTG210_ISOC_BABBLE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* @EOVERFLOW, align 4
  %100 = sub nsw i32 0, %99
  %101 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %102 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %108

103:                                              ; preds = %93
  %104 = load i32, i32* @EPROTO, align 4
  %105 = sub nsw i32 0, %104
  %106 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %107 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %103, %98
  br label %109

109:                                              ; preds = %108, %89
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @FOTG210_ISOC_BABBLE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %130, label %114

114:                                              ; preds = %109
  %115 = load %struct.urb*, %struct.urb** %5, align 8
  %116 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i8* @fotg210_itdlen(%struct.urb* %115, %struct.usb_iso_packet_descriptor* %116, i32 %117)
  %119 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %120 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %122 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.urb*, %struct.urb** %5, align 8
  %125 = getelementptr inbounds %struct.urb, %struct.urb* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr i8, i8* %123, i64 %127
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %125, align 8
  br label %130

130:                                              ; preds = %114, %109
  br label %163

131:                                              ; preds = %35
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @FOTG210_ISOC_ACTIVE, align 4
  %134 = and i32 %132, %133
  %135 = icmp eq i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i64 @likely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %131
  %140 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %141 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  %142 = load %struct.urb*, %struct.urb** %5, align 8
  %143 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i8* @fotg210_itdlen(%struct.urb* %142, %struct.usb_iso_packet_descriptor* %143, i32 %144)
  %146 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %147 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  %148 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %149 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.urb*, %struct.urb** %5, align 8
  %152 = getelementptr inbounds %struct.urb, %struct.urb* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr i8, i8* %150, i64 %154
  %156 = ptrtoint i8* %155 to i32
  store i32 %156, i32* %152, align 8
  br label %162

157:                                              ; preds = %131
  %158 = load i32, i32* @EXDEV, align 4
  %159 = sub nsw i32 0, %158
  %160 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %161 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %157, %139
  br label %163

163:                                              ; preds = %162, %130
  br label %164

164:                                              ; preds = %163, %34
  %165 = load i32, i32* %8, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %19

167:                                              ; preds = %19
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  %170 = load %struct.urb*, %struct.urb** %5, align 8
  %171 = getelementptr inbounds %struct.urb, %struct.urb* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %169, %172
  %174 = zext i1 %173 to i32
  %175 = call i64 @likely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  br label %226

178:                                              ; preds = %167
  %179 = load %struct.urb*, %struct.urb** %5, align 8
  %180 = getelementptr inbounds %struct.urb, %struct.urb* %179, i32 0, i32 1
  %181 = load %struct.usb_device*, %struct.usb_device** %180, align 8
  store %struct.usb_device* %181, %struct.usb_device** %11, align 8
  %182 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %183 = load %struct.urb*, %struct.urb** %5, align 8
  %184 = call i32 @fotg210_urb_done(%struct.fotg210_hcd* %182, %struct.urb* %183, i32 0)
  store i32 1, i32* %12, align 4
  store %struct.urb* null, %struct.urb** %5, align 8
  %185 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %186 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %190 = call i32 @disable_periodic(%struct.fotg210_hcd* %189)
  %191 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %10, align 8
  %192 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %191, i32 0, i32 2
  %193 = call i32 @list_is_singular(i32* %192)
  %194 = call i64 @unlikely(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %225

196:                                              ; preds = %178
  %197 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %10, align 8
  %198 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %201 = call %struct.TYPE_4__* @fotg210_to_hcd(%struct.fotg210_hcd* %200)
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = sub nsw i64 %205, %199
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %203, align 4
  %208 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %209 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %210 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %10, align 8
  %213 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, 15
  %216 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %10, align 8
  %217 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @USB_DIR_IN, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %224 = call i32 @fotg210_dbg(%struct.fotg210_hcd* %208, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %211, i32 %215, i8* %223)
  br label %225

225:                                              ; preds = %196, %178
  br label %226

226:                                              ; preds = %225, %177
  %227 = load %struct.fotg210_itd*, %struct.fotg210_itd** %4, align 8
  %228 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %227, i32 0, i32 2
  store %struct.urb* null, %struct.urb** %228, align 8
  %229 = load %struct.fotg210_itd*, %struct.fotg210_itd** %4, align 8
  %230 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %229, i32 0, i32 1
  %231 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %10, align 8
  %232 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %231, i32 0, i32 1
  %233 = call i32 @list_move_tail(i32* %230, i32* %232)
  %234 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %10, align 8
  %235 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %234, i32 0, i32 2
  %236 = call i64 @list_empty(i32* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %226
  %239 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %10, align 8
  %240 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %239, i32 0, i32 1
  %241 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %242 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %241, i32 0, i32 0
  %243 = call i32 @list_splice_tail_init(i32* %240, i32* %242)
  %244 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %245 = call i32 @start_free_itds(%struct.fotg210_hcd* %244)
  br label %246

246:                                              ; preds = %238, %226
  %247 = load i32, i32* %12, align 4
  ret i32 %247
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @hc32_to_cpup(%struct.fotg210_hcd*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i8* @fotg210_itdlen(%struct.urb*, %struct.usb_iso_packet_descriptor*, i32) #1

declare dso_local i32 @fotg210_urb_done(%struct.fotg210_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @disable_periodic(%struct.fotg210_hcd*) #1

declare dso_local i32 @list_is_singular(i32*) #1

declare dso_local %struct.TYPE_4__* @fotg210_to_hcd(%struct.fotg210_hcd*) #1

declare dso_local i32 @fotg210_dbg(%struct.fotg210_hcd*, i8*, i32, i32, i8*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @start_free_itds(%struct.fotg210_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
