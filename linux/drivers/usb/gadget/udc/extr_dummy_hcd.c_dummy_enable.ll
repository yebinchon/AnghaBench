; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32, i32, i32 }
%struct.usb_endpoint_descriptor = type { i64, i32 }
%struct.dummy = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dummy_hcd = type { i32 }
%struct.dummy_ep = type { i32, i64, i64, %struct.usb_endpoint_descriptor*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ep0name = common dso_local global i32 0, align 4
@USB_DT_ENDPOINT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"-iso\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-int\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-bulk\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Can't enable stream support on non-bulk ep %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"enabled %s (ep%d%s-%s) maxpacket %d stream %s\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @dummy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.dummy*, align 8
  %7 = alloca %struct.dummy_hcd*, align 8
  %8 = alloca %struct.dummy_ep*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %11 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %12 = call %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep* %11)
  store %struct.dummy_ep* %12, %struct.dummy_ep** %8, align 8
  %13 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %14 = icmp ne %struct.usb_ep* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %17 = icmp ne %struct.usb_endpoint_descriptor* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %20 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %19, i32 0, i32 3
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %20, align 8
  %22 = icmp ne %struct.usb_endpoint_descriptor* %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %25 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ep0name, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %31 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @USB_DT_ENDPOINT, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %23, %18, %15, %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %236

38:                                               ; preds = %29
  %39 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %40 = call %struct.dummy* @ep_to_dummy(%struct.dummy_ep* %39)
  store %struct.dummy* %40, %struct.dummy** %6, align 8
  %41 = load %struct.dummy*, %struct.dummy** %6, align 8
  %42 = getelementptr inbounds %struct.dummy, %struct.dummy* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ESHUTDOWN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %236

48:                                               ; preds = %38
  %49 = load %struct.dummy*, %struct.dummy** %6, align 8
  %50 = getelementptr inbounds %struct.dummy, %struct.dummy* %49, i32 0, i32 0
  %51 = call %struct.dummy_hcd* @gadget_to_dummy_hcd(%struct.TYPE_4__* %50)
  store %struct.dummy_hcd* %51, %struct.dummy_hcd** %7, align 8
  %52 = load %struct.dummy_hcd*, %struct.dummy_hcd** %7, align 8
  %53 = call i32 @is_enabled(%struct.dummy_hcd* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @ESHUTDOWN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %236

58:                                               ; preds = %48
  %59 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %60 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  %63 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %64 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %63)
  switch i32 %64, label %172 [
    i32 133, label %65
    i32 132, label %111
    i32 131, label %140
  ]

65:                                               ; preds = %58
  %66 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %67 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @strstr(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %74 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strstr(i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72, %65
  br label %234

80:                                               ; preds = %72
  %81 = load %struct.dummy*, %struct.dummy** %6, align 8
  %82 = getelementptr inbounds %struct.dummy, %struct.dummy* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %109 [
    i32 128, label %85
    i32 129, label %90
    i32 130, label %95
  ]

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 1024
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %110

89:                                               ; preds = %85
  br label %234

90:                                               ; preds = %80
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 512
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %110

94:                                               ; preds = %90
  br label %234

95:                                               ; preds = %80
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, 8
  br i1 %97, label %107, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 16
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %102, 32
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 64
  br i1 %106, label %107, label %108

107:                                              ; preds = %104, %101, %98, %95
  br label %110

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %80, %108
  br label %234

110:                                              ; preds = %107, %93, %88
  br label %173

111:                                              ; preds = %58
  %112 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %113 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @strstr(i32 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %234

119:                                              ; preds = %111
  %120 = load %struct.dummy*, %struct.dummy** %6, align 8
  %121 = getelementptr inbounds %struct.dummy, %struct.dummy* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %134 [
    i32 128, label %124
    i32 129, label %124
    i32 130, label %129
  ]

124:                                              ; preds = %119, %119
  %125 = load i32, i32* %9, align 4
  %126 = icmp ule i32 %125, 1024
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %139

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %119, %128
  %130 = load i32, i32* %9, align 4
  %131 = icmp ule i32 %130, 64
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %139

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %119, %133
  %135 = load i32, i32* %9, align 4
  %136 = icmp ule i32 %135, 8
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %139

138:                                              ; preds = %134
  br label %234

139:                                              ; preds = %137, %132, %127
  br label %173

140:                                              ; preds = %58
  %141 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %142 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @strstr(i32 %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %149 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @strstr(i32 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147, %140
  br label %234

155:                                              ; preds = %147
  %156 = load %struct.dummy*, %struct.dummy** %6, align 8
  %157 = getelementptr inbounds %struct.dummy, %struct.dummy* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  switch i32 %159, label %170 [
    i32 128, label %160
    i32 129, label %160
    i32 130, label %165
  ]

160:                                              ; preds = %155, %155
  %161 = load i32, i32* %9, align 4
  %162 = icmp ule i32 %161, 1024
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %171

164:                                              ; preds = %160
  br label %165

165:                                              ; preds = %155, %164
  %166 = load i32, i32* %9, align 4
  %167 = icmp ule i32 %166, 1023
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %171

169:                                              ; preds = %165
  br label %170

170:                                              ; preds = %155, %169
  br label %234

171:                                              ; preds = %168, %163
  br label %173

172:                                              ; preds = %58
  br label %234

173:                                              ; preds = %171, %139, %110
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %176 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  %177 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %178 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @usb_ss_max_streams(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %198

182:                                              ; preds = %173
  %183 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %184 = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %182
  %187 = load %struct.dummy*, %struct.dummy** %6, align 8
  %188 = call i32 @udc_dev(%struct.dummy* %187)
  %189 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %190 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @dev_err(i32 %188, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %236

195:                                              ; preds = %182
  %196 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %197 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %196, i32 0, i32 0
  store i32 1, i32* %197, align 8
  br label %198

198:                                              ; preds = %195, %173
  %199 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %200 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %201 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %200, i32 0, i32 3
  store %struct.usb_endpoint_descriptor* %199, %struct.usb_endpoint_descriptor** %201, align 8
  %202 = load %struct.dummy*, %struct.dummy** %6, align 8
  %203 = call i32 @udc_dev(%struct.dummy* %202)
  %204 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %205 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %208 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = and i32 %209, 15
  %211 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %212 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @USB_DIR_IN, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %219 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %220 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %219)
  %221 = call i32 @usb_ep_type_string(i32 %220)
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %224 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)
  %229 = call i32 @dev_dbg(i32 %203, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %206, i32 %210, i8* %218, i32 %221, i32 %222, i8* %228)
  %230 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %231 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %230, i32 0, i32 1
  store i64 0, i64* %231, align 8
  %232 = load %struct.dummy_ep*, %struct.dummy_ep** %8, align 8
  %233 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %232, i32 0, i32 2
  store i64 0, i64* %233, align 8
  store i32 0, i32* %10, align 4
  br label %234

234:                                              ; preds = %198, %172, %170, %154, %138, %118, %109, %94, %89, %79
  %235 = load i32, i32* %10, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %234, %186, %55, %45, %35
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep*) #1

declare dso_local %struct.dummy* @ep_to_dummy(%struct.dummy_ep*) #1

declare dso_local %struct.dummy_hcd* @gadget_to_dummy_hcd(%struct.TYPE_4__*) #1

declare dso_local i32 @is_enabled(%struct.dummy_hcd*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @strstr(i32, i8*) #1

declare dso_local i64 @usb_ss_max_streams(i32) #1

declare dso_local i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @udc_dev(%struct.dummy*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @usb_ep_type_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
