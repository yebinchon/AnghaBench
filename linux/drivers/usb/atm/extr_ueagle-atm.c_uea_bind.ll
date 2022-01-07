; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { i32, %struct.uea_softc* }
%struct.uea_softc = type { i64, i32, %struct.usb_device*, i8*, %struct.usbatm_data* }
%struct.usb_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.usb_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }

@UEA_INTR_IFACE_NO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@sync_wait = common dso_local global i64* null, align 8
@modem_index = common dso_local global i64 0, align 8
@UDSL_SKIP_HEAVY_INIT = common dso_local global i32 0, align 4
@UEA_US_IFACE_NO = common dso_local global i32 0, align 4
@ADI930 = common dso_local global i64 0, align 8
@UEA_DS_IFACE_NO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NB_MODEM = common dso_local global i64 0, align 8
@annex = common dso_local global i32* null, align 8
@ANNEXA = common dso_local global i8* null, align 8
@ANNEXB = common dso_local global i8* null, align 8
@AUTO_ANNEX_A = common dso_local global i32 0, align 4
@AUTO_ANNEX_B = common dso_local global i32 0, align 4
@altsetting = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"set alternate %u for 2 interface\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"using iso mode\0A\00", align 1
@UDSL_USE_ISOC = common dso_local global i32 0, align 4
@UDSL_IGNORE_EILSEQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"setting alternate %u failed for 2 interface, using bulk mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbatm_data*, %struct.usb_interface*, %struct.usb_device_id*)* @uea_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_bind(%struct.usbatm_data* %0, %struct.usb_interface* %1, %struct.usb_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbatm_data*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_device_id*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.uea_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usbatm_data* %0, %struct.usbatm_data** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store %struct.usb_device_id* %2, %struct.usb_device_id** %7, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %8, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %22 = call i32 @uea_enters(%struct.usb_device* %21)
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @UEA_INTR_IFACE_NO, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %217

29:                                               ; preds = %3
  %30 = load i64*, i64** @sync_wait, align 8
  %31 = load i64, i64* @modem_index, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @UDSL_SKIP_HEAVY_INIT, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi i32 [ 0, %35 ], [ %37, %36 ]
  %40 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %41 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %43 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %44 = load i32, i32* @UEA_US_IFACE_NO, align 4
  %45 = call i32 @claim_interface(%struct.usb_device* %42, %struct.usbatm_data* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %217

50:                                               ; preds = %38
  %51 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %52 = call i64 @UEA_CHIP_VERSION(%struct.usb_device_id* %51)
  %53 = load i64, i64* @ADI930, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %57 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %58 = load i32, i32* @UEA_DS_IFACE_NO, align 4
  %59 = call i32 @claim_interface(%struct.usb_device* %56, %struct.usbatm_data* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %217

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %50
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.uea_softc* @kzalloc(i32 40, i32 %66)
  store %struct.uea_softc* %67, %struct.uea_softc** %9, align 8
  %68 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %69 = icmp ne %struct.uea_softc* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %217

73:                                               ; preds = %65
  %74 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %75 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %76 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %75, i32 0, i32 2
  store %struct.usb_device* %74, %struct.usb_device** %76, align 8
  %77 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %78 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %79 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %78, i32 0, i32 1
  store %struct.uea_softc* %77, %struct.uea_softc** %79, align 8
  %80 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %81 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %82 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %81, i32 0, i32 4
  store %struct.usbatm_data* %80, %struct.usbatm_data** %82, align 8
  %83 = load i64, i64* @modem_index, align 8
  %84 = load i64, i64* @NB_MODEM, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load i64, i64* @modem_index, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* @modem_index, align 8
  br label %90

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i64 [ %87, %86 ], [ 0, %89 ]
  %92 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %93 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %95 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %98 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load i32*, i32** @annex, align 8
  %100 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %101 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %110

106:                                              ; preds = %90
  %107 = load i8*, i8** @ANNEXA, align 8
  %108 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %109 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  br label %165

110:                                              ; preds = %90
  %111 = load i32*, i32** @annex, align 8
  %112 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %113 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i8*, i8** @ANNEXB, align 8
  %120 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %121 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  br label %164

122:                                              ; preds = %110
  %123 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %124 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @AUTO_ANNEX_A, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i8*, i8** @ANNEXA, align 8
  %131 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %132 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  br label %163

133:                                              ; preds = %122
  %134 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %135 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @AUTO_ANNEX_B, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load i8*, i8** @ANNEXB, align 8
  %142 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %143 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  br label %162

144:                                              ; preds = %133
  %145 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %146 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %145, i32 0, i32 2
  %147 = load %struct.usb_device*, %struct.usb_device** %146, align 8
  %148 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @le16_to_cpu(i32 %150)
  %152 = and i32 %151, 128
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = load i8*, i8** @ANNEXB, align 8
  br label %158

156:                                              ; preds = %144
  %157 = load i8*, i8** @ANNEXA, align 8
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i8* [ %155, %154 ], [ %157, %156 ]
  %160 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %161 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %158, %140
  br label %163

163:                                              ; preds = %162, %129
  br label %164

164:                                              ; preds = %163, %118
  br label %165

165:                                              ; preds = %164, %106
  %166 = load i32*, i32** @altsetting, align 8
  %167 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %168 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %12, align 4
  %172 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %173 = call i64 @UEA_CHIP_VERSION(%struct.usb_device_id* %172)
  %174 = load i64, i64* @ADI930, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %206

176:                                              ; preds = %165
  %177 = load i32, i32* %12, align 4
  %178 = icmp ugt i32 %177, 0
  br i1 %178, label %179, label %206

179:                                              ; preds = %176
  %180 = load i32, i32* %12, align 4
  %181 = icmp ule i32 %180, 8
  br i1 %181, label %182, label %201

182:                                              ; preds = %179
  %183 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %184 = load i32, i32* @UEA_DS_IFACE_NO, align 4
  %185 = load i32, i32* %12, align 4
  %186 = call i64 @usb_set_interface(%struct.usb_device* %183, i32 %184, i32 %185)
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %182
  %189 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @uea_dbg(%struct.usb_device* %189, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %190)
  %192 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %193 = call i32 @uea_info(%struct.usb_device* %192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %194 = load i32, i32* @UDSL_USE_ISOC, align 4
  %195 = load i32, i32* @UDSL_IGNORE_EILSEQ, align 4
  %196 = or i32 %194, %195
  %197 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %198 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %205

201:                                              ; preds = %182, %179
  %202 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %203 = load i32, i32* %12, align 4
  %204 = call i32 @uea_err(%struct.usb_device* %202, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %201, %188
  br label %206

206:                                              ; preds = %205, %176, %165
  %207 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %208 = call i32 @uea_boot(%struct.uea_softc* %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %213

212:                                              ; preds = %206
  store i32 0, i32* %4, align 4
  br label %217

213:                                              ; preds = %211
  %214 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %215 = call i32 @kfree(%struct.uea_softc* %214)
  %216 = load i32, i32* %10, align 4
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %213, %212, %70, %62, %48, %26
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @uea_enters(%struct.usb_device*) #1

declare dso_local i32 @claim_interface(%struct.usb_device*, %struct.usbatm_data*, i32) #1

declare dso_local i64 @UEA_CHIP_VERSION(%struct.usb_device_id*) #1

declare dso_local %struct.uea_softc* @kzalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @uea_dbg(%struct.usb_device*, i8*, i32) #1

declare dso_local i32 @uea_info(%struct.usb_device*, i8*) #1

declare dso_local i32 @uea_err(%struct.usb_device*, i8*, i32) #1

declare dso_local i32 @uea_boot(%struct.uea_softc*) #1

declare dso_local i32 @kfree(%struct.uea_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
