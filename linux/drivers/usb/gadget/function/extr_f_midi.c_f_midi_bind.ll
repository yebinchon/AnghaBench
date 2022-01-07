; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i32, i8*, i32* }
%struct.TYPE_14__ = type { i32, i8*, i32* }
%struct.usb_configuration = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.usb_function = type { i32, i8*, i8*, i8* }
%struct.usb_descriptor_header = type { i32 }
%struct.f_midi = type { i32, i32, i32, i8*, i8*, i32, i32 }
%struct.usb_string = type { i32 }
%struct.usb_midi_in_jack_descriptor = type { i32, i32, i64, i8*, i8*, i8* }
%struct.usb_midi_out_jack_descriptor_1 = type { i32, i32, %struct.TYPE_12__*, i64, i32, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i32, i32 }

@MAX_PORTS = common dso_local global i32 0, align 4
@f_midi_in_tasklet = common dso_local global i32 0, align 4
@midi_strings = common dso_local global i32 0, align 4
@midi_string_defs = common dso_local global i32 0, align 4
@STRING_FUNC_IDX = common dso_local global i64 0, align 8
@ac_interface_desc = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@ms_interface_desc = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@ac_header_desc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@bulk_in_desc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@bulk_out_desc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DT_MS_HEADER_SIZE = common dso_local global i32 0, align 4
@USB_DT_MIDI_IN_SIZE = common dso_local global i32 0, align 4
@ms_header_desc = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@USB_DT_CS_INTERFACE = common dso_local global i8* null, align 8
@USB_MS_MIDI_IN_JACK = common dso_local global i8* null, align 8
@USB_MS_EXTERNAL = common dso_local global i8* null, align 8
@USB_MS_MIDI_OUT_JACK = common dso_local global i8* null, align 8
@USB_MS_EMBEDDED = common dso_local global i8* null, align 8
@ms_in_desc = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@ms_out_desc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@bulk_out_ss_comp_desc = common dso_local global i32 0, align 4
@bulk_in_ss_comp_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: can't bind, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*, %struct.usb_function*)* @f_midi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_midi_bind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_configuration*, align 8
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca %struct.usb_descriptor_header**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.usb_composite_dev*, align 8
  %13 = alloca %struct.f_midi*, align 8
  %14 = alloca %struct.usb_string*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.usb_midi_in_jack_descriptor*, align 8
  %21 = alloca %struct.usb_midi_out_jack_descriptor_1*, align 8
  %22 = alloca %struct.usb_midi_in_jack_descriptor*, align 8
  %23 = alloca %struct.usb_midi_out_jack_descriptor_1*, align 8
  %24 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %4, align 8
  store %struct.usb_function* %1, %struct.usb_function** %5, align 8
  %25 = load i32, i32* @MAX_PORTS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %7, align 8
  %28 = alloca %struct.usb_midi_in_jack_descriptor, i64 %26, align 16
  store i64 %26, i64* %8, align 8
  %29 = load i32, i32* @MAX_PORTS, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca %struct.usb_midi_in_jack_descriptor, i64 %30, align 16
  store i64 %30, i64* %9, align 8
  %32 = load i32, i32* @MAX_PORTS, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca %struct.usb_midi_out_jack_descriptor_1, i64 %33, align 16
  store i64 %33, i64* %10, align 8
  %35 = load i32, i32* @MAX_PORTS, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca %struct.usb_midi_out_jack_descriptor_1, i64 %36, align 16
  store i64 %36, i64* %11, align 8
  %38 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %39 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %38, i32 0, i32 0
  %40 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %39, align 8
  store %struct.usb_composite_dev* %40, %struct.usb_composite_dev** %12, align 8
  %41 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %42 = call %struct.f_midi* @func_to_midi(%struct.usb_function* %41)
  store %struct.f_midi* %42, %struct.f_midi** %13, align 8
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %43 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %12, align 8
  %44 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %47 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %49 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %48, i32 0, i32 5
  %50 = load i32, i32* @f_midi_in_tasklet, align 4
  %51 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %52 = ptrtoint %struct.f_midi* %51 to i64
  %53 = call i32 @tasklet_init(i32* %49, i32 %50, i64 %52)
  %54 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %55 = call i32 @f_midi_register_card(%struct.f_midi* %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %2
  br label %484

59:                                               ; preds = %2
  %60 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %61 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %60, i32 0, i32 0
  %62 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %61, align 8
  %63 = load i32, i32* @midi_strings, align 4
  %64 = load i32, i32* @midi_string_defs, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = call %struct.usb_string* @usb_gstrings_attach(%struct.usb_composite_dev* %62, i32 %63, i32 %65)
  store %struct.usb_string* %66, %struct.usb_string** %14, align 8
  %67 = load %struct.usb_string*, %struct.usb_string** %14, align 8
  %68 = call i64 @IS_ERR(%struct.usb_string* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load %struct.usb_string*, %struct.usb_string** %14, align 8
  %72 = call i32 @PTR_ERR(%struct.usb_string* %71)
  store i32 %72, i32* %15, align 4
  br label %481

73:                                               ; preds = %59
  %74 = load %struct.usb_string*, %struct.usb_string** %14, align 8
  %75 = load i64, i64* @STRING_FUNC_IDX, align 8
  %76 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %74, i64 %75
  %77 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ac_interface_desc, i32 0, i32 1), align 4
  %79 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %80 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %81 = call i32 @usb_interface_id(%struct.usb_configuration* %79, %struct.usb_function* %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %481

85:                                               ; preds = %73
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ac_interface_desc, i32 0, i32 0), align 4
  %87 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %88 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %89 = call i32 @usb_interface_id(%struct.usb_configuration* %87, %struct.usb_function* %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %481

93:                                               ; preds = %85
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ms_interface_desc, i32 0, i32 0), align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ac_header_desc, i32 0, i32 0), align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %100 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %15, align 4
  %103 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %12, align 8
  %104 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @usb_ep_autoconfig(i32 %105, %struct.TYPE_13__* @bulk_in_desc)
  %107 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %108 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %110 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %93
  br label %481

114:                                              ; preds = %93
  %115 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %12, align 8
  %116 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @usb_ep_autoconfig(i32 %117, %struct.TYPE_13__* @bulk_out_desc)
  %119 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %120 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %122 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %114
  br label %481

126:                                              ; preds = %114
  %127 = load i32, i32* @MAX_PORTS, align 4
  %128 = mul nsw i32 %127, 4
  %129 = add nsw i32 %128, 11
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call %struct.usb_descriptor_header** @kcalloc(i32 %129, i32 8, i32 %130)
  store %struct.usb_descriptor_header** %131, %struct.usb_descriptor_header*** %6, align 8
  %132 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %133 = icmp ne %struct.usb_descriptor_header** %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %126
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %15, align 4
  br label %481

137:                                              ; preds = %126
  %138 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %139 = load i32, i32* %18, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %18, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %138, i64 %141
  store %struct.usb_descriptor_header* bitcast (%struct.TYPE_18__* @ac_interface_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %142, align 8
  %143 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %144 = load i32, i32* %18, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %18, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %143, i64 %146
  store %struct.usb_descriptor_header* bitcast (%struct.TYPE_11__* @ac_header_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %147, align 8
  %148 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %18, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %148, i64 %151
  store %struct.usb_descriptor_header* bitcast (%struct.TYPE_15__* @ms_interface_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %152, align 8
  %153 = load i32, i32* @USB_DT_MS_HEADER_SIZE, align 4
  %154 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %155 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %158 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %156, %159
  %161 = load i32, i32* @USB_DT_MIDI_IN_SIZE, align 4
  %162 = call i32 @USB_DT_MIDI_OUT_SIZE(i32 1)
  %163 = add nsw i32 %161, %162
  %164 = mul nsw i32 %160, %163
  %165 = add nsw i32 %153, %164
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = call i8* @cpu_to_le16(i32 %166)
  store i8* %167, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ms_header_desc, i32 0, i32 0), align 8
  %168 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %169 = load i32, i32* %18, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %18, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %168, i64 %171
  store %struct.usb_descriptor_header* bitcast (%struct.TYPE_17__* @ms_header_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %172, align 8
  store i32 0, i32* %16, align 4
  br label %173

173:                                              ; preds = %258, %137
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %176 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %261

179:                                              ; preds = %173
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %28, i64 %181
  store %struct.usb_midi_in_jack_descriptor* %182, %struct.usb_midi_in_jack_descriptor** %20, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %37, i64 %184
  store %struct.usb_midi_out_jack_descriptor_1* %185, %struct.usb_midi_out_jack_descriptor_1** %21, align 8
  %186 = load i32, i32* @USB_DT_MIDI_IN_SIZE, align 4
  %187 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %20, align 8
  %188 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load i8*, i8** @USB_DT_CS_INTERFACE, align 8
  %190 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %20, align 8
  %191 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %190, i32 0, i32 5
  store i8* %189, i8** %191, align 8
  %192 = load i8*, i8** @USB_MS_MIDI_IN_JACK, align 8
  %193 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %20, align 8
  %194 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %193, i32 0, i32 4
  store i8* %192, i8** %194, align 8
  %195 = load i8*, i8** @USB_MS_EXTERNAL, align 8
  %196 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %20, align 8
  %197 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %196, i32 0, i32 3
  store i8* %195, i8** %197, align 8
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %17, align 4
  %200 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %20, align 8
  %201 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %200, i32 0, i32 1
  store i32 %198, i32* %201, align 4
  %202 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %20, align 8
  %203 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %202, i32 0, i32 2
  store i64 0, i64* %203, align 8
  %204 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %20, align 8
  %205 = bitcast %struct.usb_midi_in_jack_descriptor* %204 to %struct.usb_descriptor_header*
  %206 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %207 = load i32, i32* %18, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %18, align 4
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %206, i64 %209
  store %struct.usb_descriptor_header* %205, %struct.usb_descriptor_header** %210, align 8
  %211 = call i32 @USB_DT_MIDI_OUT_SIZE(i32 1)
  %212 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %21, align 8
  %213 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  %214 = load i8*, i8** @USB_DT_CS_INTERFACE, align 8
  %215 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %21, align 8
  %216 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %215, i32 0, i32 7
  store i8* %214, i8** %216, align 8
  %217 = load i8*, i8** @USB_MS_MIDI_OUT_JACK, align 8
  %218 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %21, align 8
  %219 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %218, i32 0, i32 6
  store i8* %217, i8** %219, align 8
  %220 = load i8*, i8** @USB_MS_EMBEDDED, align 8
  %221 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %21, align 8
  %222 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %221, i32 0, i32 5
  store i8* %220, i8** %222, align 8
  %223 = load i32, i32* %17, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %17, align 4
  %225 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %21, align 8
  %226 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %225, i32 0, i32 4
  store i32 %223, i32* %226, align 8
  %227 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %21, align 8
  %228 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %227, i32 0, i32 1
  store i32 1, i32* %228, align 4
  %229 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %21, align 8
  %230 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %229, i32 0, i32 2
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  store i32 1, i32* %233, align 4
  %234 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %20, align 8
  %235 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %21, align 8
  %238 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %237, i32 0, i32 2
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i64 0
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 1
  store i32 %236, i32* %241, align 4
  %242 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %21, align 8
  %243 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %242, i32 0, i32 3
  store i64 0, i64* %243, align 8
  %244 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %21, align 8
  %245 = bitcast %struct.usb_midi_out_jack_descriptor_1* %244 to %struct.usb_descriptor_header*
  %246 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %247 = load i32, i32* %18, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %18, align 4
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %246, i64 %249
  store %struct.usb_descriptor_header* %245, %struct.usb_descriptor_header** %250, align 8
  %251 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %21, align 8
  %252 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ms_in_desc, i32 0, i32 2), align 8
  %255 = load i32, i32* %16, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32 %253, i32* %257, align 4
  br label %258

258:                                              ; preds = %179
  %259 = load i32, i32* %16, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %16, align 4
  br label %173

261:                                              ; preds = %173
  store i32 0, i32* %16, align 4
  br label %262

262:                                              ; preds = %347, %261
  %263 = load i32, i32* %16, align 4
  %264 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %265 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = icmp slt i32 %263, %266
  br i1 %267, label %268, label %350

268:                                              ; preds = %262
  %269 = load i32, i32* %16, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %31, i64 %270
  store %struct.usb_midi_in_jack_descriptor* %271, %struct.usb_midi_in_jack_descriptor** %22, align 8
  %272 = load i32, i32* %16, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %34, i64 %273
  store %struct.usb_midi_out_jack_descriptor_1* %274, %struct.usb_midi_out_jack_descriptor_1** %23, align 8
  %275 = load i32, i32* @USB_DT_MIDI_IN_SIZE, align 4
  %276 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %22, align 8
  %277 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  %278 = load i8*, i8** @USB_DT_CS_INTERFACE, align 8
  %279 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %22, align 8
  %280 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %279, i32 0, i32 5
  store i8* %278, i8** %280, align 8
  %281 = load i8*, i8** @USB_MS_MIDI_IN_JACK, align 8
  %282 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %22, align 8
  %283 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %282, i32 0, i32 4
  store i8* %281, i8** %283, align 8
  %284 = load i8*, i8** @USB_MS_EMBEDDED, align 8
  %285 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %22, align 8
  %286 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %285, i32 0, i32 3
  store i8* %284, i8** %286, align 8
  %287 = load i32, i32* %17, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %17, align 4
  %289 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %22, align 8
  %290 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %289, i32 0, i32 1
  store i32 %287, i32* %290, align 4
  %291 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %22, align 8
  %292 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %291, i32 0, i32 2
  store i64 0, i64* %292, align 8
  %293 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %22, align 8
  %294 = bitcast %struct.usb_midi_in_jack_descriptor* %293 to %struct.usb_descriptor_header*
  %295 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %296 = load i32, i32* %18, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %18, align 4
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %295, i64 %298
  store %struct.usb_descriptor_header* %294, %struct.usb_descriptor_header** %299, align 8
  %300 = call i32 @USB_DT_MIDI_OUT_SIZE(i32 1)
  %301 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %23, align 8
  %302 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 8
  %303 = load i8*, i8** @USB_DT_CS_INTERFACE, align 8
  %304 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %23, align 8
  %305 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %304, i32 0, i32 7
  store i8* %303, i8** %305, align 8
  %306 = load i8*, i8** @USB_MS_MIDI_OUT_JACK, align 8
  %307 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %23, align 8
  %308 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %307, i32 0, i32 6
  store i8* %306, i8** %308, align 8
  %309 = load i8*, i8** @USB_MS_EXTERNAL, align 8
  %310 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %23, align 8
  %311 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %310, i32 0, i32 5
  store i8* %309, i8** %311, align 8
  %312 = load i32, i32* %17, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %17, align 4
  %314 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %23, align 8
  %315 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %314, i32 0, i32 4
  store i32 %312, i32* %315, align 8
  %316 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %23, align 8
  %317 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %316, i32 0, i32 1
  store i32 1, i32* %317, align 4
  %318 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %23, align 8
  %319 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %318, i32 0, i32 3
  store i64 0, i64* %319, align 8
  %320 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %22, align 8
  %321 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %23, align 8
  %324 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %323, i32 0, i32 2
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i64 0
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 1
  store i32 %322, i32* %327, align 4
  %328 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %23, align 8
  %329 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor_1, %struct.usb_midi_out_jack_descriptor_1* %328, i32 0, i32 2
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i64 0
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 0
  store i32 1, i32* %332, align 4
  %333 = load %struct.usb_midi_out_jack_descriptor_1*, %struct.usb_midi_out_jack_descriptor_1** %23, align 8
  %334 = bitcast %struct.usb_midi_out_jack_descriptor_1* %333 to %struct.usb_descriptor_header*
  %335 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %336 = load i32, i32* %18, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %18, align 4
  %338 = sext i32 %336 to i64
  %339 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %335, i64 %338
  store %struct.usb_descriptor_header* %334, %struct.usb_descriptor_header** %339, align 8
  %340 = load %struct.usb_midi_in_jack_descriptor*, %struct.usb_midi_in_jack_descriptor** %22, align 8
  %341 = getelementptr inbounds %struct.usb_midi_in_jack_descriptor, %struct.usb_midi_in_jack_descriptor* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ms_out_desc, i32 0, i32 2), align 8
  %344 = load i32, i32* %16, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store i32 %342, i32* %346, align 4
  br label %347

347:                                              ; preds = %268
  %348 = load i32, i32* %16, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %16, align 4
  br label %262

350:                                              ; preds = %262
  %351 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %352 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = call i8* @USB_DT_MS_ENDPOINT_SIZE(i32 %353)
  store i8* %354, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ms_out_desc, i32 0, i32 1), align 8
  %355 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %356 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  store i32 %357, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ms_out_desc, i32 0, i32 0), align 8
  %358 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %359 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = call i8* @USB_DT_MS_ENDPOINT_SIZE(i32 %360)
  store i8* %361, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ms_in_desc, i32 0, i32 1), align 8
  %362 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %363 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  store i32 %364, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ms_in_desc, i32 0, i32 0), align 8
  %365 = load i32, i32* %18, align 4
  store i32 %365, i32* %19, align 4
  %366 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %367 = load i32, i32* %18, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %18, align 4
  %369 = sext i32 %367 to i64
  %370 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %366, i64 %369
  store %struct.usb_descriptor_header* bitcast (%struct.TYPE_13__* @bulk_out_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %370, align 8
  %371 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %372 = load i32, i32* %18, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %18, align 4
  %374 = sext i32 %372 to i64
  %375 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %371, i64 %374
  store %struct.usb_descriptor_header* bitcast (%struct.TYPE_14__* @ms_out_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %375, align 8
  %376 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %377 = load i32, i32* %18, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %18, align 4
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %376, i64 %379
  store %struct.usb_descriptor_header* bitcast (%struct.TYPE_13__* @bulk_in_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %380, align 8
  %381 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %382 = load i32, i32* %18, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %18, align 4
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %381, i64 %384
  store %struct.usb_descriptor_header* bitcast (%struct.TYPE_16__* @ms_in_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %385, align 8
  %386 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %387 = load i32, i32* %18, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %18, align 4
  %389 = sext i32 %387 to i64
  %390 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %386, i64 %389
  store %struct.usb_descriptor_header* null, %struct.usb_descriptor_header** %390, align 8
  %391 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %392 = call i8* @usb_copy_descriptors(%struct.usb_descriptor_header** %391)
  %393 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %394 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %393, i32 0, i32 3
  store i8* %392, i8** %394, align 8
  %395 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %396 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %395, i32 0, i32 3
  %397 = load i8*, i8** %396, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %400, label %399

399:                                              ; preds = %350
  br label %476

400:                                              ; preds = %350
  %401 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %402 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %401, i32 0, i32 0
  %403 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %402, align 8
  %404 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = call i64 @gadget_is_dualspeed(i32 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %421

408:                                              ; preds = %400
  %409 = call i8* @cpu_to_le16(i32 512)
  store i8* %409, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bulk_in_desc, i32 0, i32 0), align 8
  %410 = call i8* @cpu_to_le16(i32 512)
  store i8* %410, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bulk_out_desc, i32 0, i32 0), align 8
  %411 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %412 = call i8* @usb_copy_descriptors(%struct.usb_descriptor_header** %411)
  %413 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %414 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %413, i32 0, i32 2
  store i8* %412, i8** %414, align 8
  %415 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %416 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %415, i32 0, i32 2
  %417 = load i8*, i8** %416, align 8
  %418 = icmp ne i8* %417, null
  br i1 %418, label %420, label %419

419:                                              ; preds = %408
  br label %476

420:                                              ; preds = %408
  br label %421

421:                                              ; preds = %420, %400
  %422 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %423 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %422, i32 0, i32 0
  %424 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %423, align 8
  %425 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = call i64 @gadget_is_superspeed(i32 %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %473

429:                                              ; preds = %421
  %430 = call i8* @cpu_to_le16(i32 1024)
  store i8* %430, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bulk_in_desc, i32 0, i32 0), align 8
  %431 = call i8* @cpu_to_le16(i32 1024)
  store i8* %431, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bulk_out_desc, i32 0, i32 0), align 8
  %432 = load i32, i32* %19, align 4
  store i32 %432, i32* %18, align 4
  %433 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %434 = load i32, i32* %18, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %18, align 4
  %436 = sext i32 %434 to i64
  %437 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %433, i64 %436
  store %struct.usb_descriptor_header* bitcast (%struct.TYPE_13__* @bulk_out_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %437, align 8
  %438 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %439 = load i32, i32* %18, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %18, align 4
  %441 = sext i32 %439 to i64
  %442 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %438, i64 %441
  store %struct.usb_descriptor_header* bitcast (i32* @bulk_out_ss_comp_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %442, align 8
  %443 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %444 = load i32, i32* %18, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %18, align 4
  %446 = sext i32 %444 to i64
  %447 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %443, i64 %446
  store %struct.usb_descriptor_header* bitcast (%struct.TYPE_14__* @ms_out_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %447, align 8
  %448 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %449 = load i32, i32* %18, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %18, align 4
  %451 = sext i32 %449 to i64
  %452 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %448, i64 %451
  store %struct.usb_descriptor_header* bitcast (%struct.TYPE_13__* @bulk_in_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %452, align 8
  %453 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %454 = load i32, i32* %18, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %18, align 4
  %456 = sext i32 %454 to i64
  %457 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %453, i64 %456
  store %struct.usb_descriptor_header* bitcast (i32* @bulk_in_ss_comp_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %457, align 8
  %458 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %459 = load i32, i32* %18, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %18, align 4
  %461 = sext i32 %459 to i64
  %462 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %458, i64 %461
  store %struct.usb_descriptor_header* bitcast (%struct.TYPE_16__* @ms_in_desc to %struct.usb_descriptor_header*), %struct.usb_descriptor_header** %462, align 8
  %463 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %464 = call i8* @usb_copy_descriptors(%struct.usb_descriptor_header** %463)
  %465 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %466 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %465, i32 0, i32 1
  store i8* %464, i8** %466, align 8
  %467 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %468 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %467, i32 0, i32 1
  %469 = load i8*, i8** %468, align 8
  %470 = icmp ne i8* %469, null
  br i1 %470, label %472, label %471

471:                                              ; preds = %429
  br label %476

472:                                              ; preds = %429
  br label %473

473:                                              ; preds = %472, %421
  %474 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %475 = call i32 @kfree(%struct.usb_descriptor_header** %474)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %492

476:                                              ; preds = %471, %419, %399
  %477 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %6, align 8
  %478 = call i32 @kfree(%struct.usb_descriptor_header** %477)
  %479 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %480 = call i32 @usb_free_all_descriptors(%struct.usb_function* %479)
  br label %481

481:                                              ; preds = %476, %134, %125, %113, %92, %84, %70
  %482 = load %struct.f_midi*, %struct.f_midi** %13, align 8
  %483 = call i32 @f_midi_unregister_card(%struct.f_midi* %482)
  br label %484

484:                                              ; preds = %481, %58
  %485 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %12, align 8
  %486 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %487 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = load i32, i32* %15, align 4
  %490 = call i32 @ERROR(%struct.usb_composite_dev* %485, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %488, i32 %489)
  %491 = load i32, i32* %15, align 4
  store i32 %491, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %492

492:                                              ; preds = %484, %473
  %493 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %493)
  %494 = load i32, i32* %3, align 4
  ret i32 %494
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.f_midi* @func_to_midi(%struct.usb_function*) #2

declare dso_local i32 @tasklet_init(i32*, i32, i64) #2

declare dso_local i32 @f_midi_register_card(%struct.f_midi*) #2

declare dso_local %struct.usb_string* @usb_gstrings_attach(%struct.usb_composite_dev*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i64 @IS_ERR(%struct.usb_string*) #2

declare dso_local i32 @PTR_ERR(%struct.usb_string*) #2

declare dso_local i32 @usb_interface_id(%struct.usb_configuration*, %struct.usb_function*) #2

declare dso_local i8* @usb_ep_autoconfig(i32, %struct.TYPE_13__*) #2

declare dso_local %struct.usb_descriptor_header** @kcalloc(i32, i32, i32) #2

declare dso_local i32 @USB_DT_MIDI_OUT_SIZE(i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i8* @USB_DT_MS_ENDPOINT_SIZE(i32) #2

declare dso_local i8* @usb_copy_descriptors(%struct.usb_descriptor_header**) #2

declare dso_local i64 @gadget_is_dualspeed(i32) #2

declare dso_local i64 @gadget_is_superspeed(i32) #2

declare dso_local i32 @kfree(%struct.usb_descriptor_header**) #2

declare dso_local i32 @usb_free_all_descriptors(%struct.usb_function*) #2

declare dso_local i32 @f_midi_unregister_card(%struct.f_midi*) #2

declare dso_local i32 @ERROR(%struct.usb_composite_dev*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
