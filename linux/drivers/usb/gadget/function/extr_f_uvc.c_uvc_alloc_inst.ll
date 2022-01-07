; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uvc.c_uvc_alloc_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uvc.c_uvc_alloc_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function_instance = type { i32 }
%struct.f_uvc_opts = type { i32, i32, %struct.usb_function_instance, %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header**, %struct.uvc_color_matching_descriptor, %struct.uvc_output_terminal_descriptor, %struct.uvc_processing_unit_descriptor, %struct.uvc_camera_terminal_descriptor, i32 }
%struct.uvc_descriptor_header = type { i32 }
%struct.uvc_color_matching_descriptor = type { i32, i32, i32, i32, i8*, i32 }
%struct.uvc_output_terminal_descriptor = type { i32, i32, i64, i64, i8*, i32, i8*, i32 }
%struct.uvc_processing_unit_descriptor = type { i32, i32, i32, i32*, i64, i8*, i32, i8*, i32 }
%struct.uvc_camera_terminal_descriptor = type { i32, i32, i32*, i8*, i8*, i8*, i64, i64, i8*, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uvc_free_inst = common dso_local global i32 0, align 4
@USB_DT_CS_INTERFACE = common dso_local global i8* null, align 8
@UVC_VC_INPUT_TERMINAL = common dso_local global i32 0, align 4
@UVC_VC_PROCESSING_UNIT = common dso_local global i32 0, align 4
@UVC_DT_OUTPUT_TERMINAL_SIZE = common dso_local global i32 0, align 4
@UVC_VC_OUTPUT_TERMINAL = common dso_local global i32 0, align 4
@UVC_DT_COLOR_MATCHING_SIZE = common dso_local global i32 0, align 4
@UVC_VS_COLORFORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_function_instance* ()* @uvc_alloc_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_function_instance* @uvc_alloc_inst() #0 {
  %1 = alloca %struct.usb_function_instance*, align 8
  %2 = alloca %struct.f_uvc_opts*, align 8
  %3 = alloca %struct.uvc_camera_terminal_descriptor*, align 8
  %4 = alloca %struct.uvc_processing_unit_descriptor*, align 8
  %5 = alloca %struct.uvc_output_terminal_descriptor*, align 8
  %6 = alloca %struct.uvc_color_matching_descriptor*, align 8
  %7 = alloca %struct.uvc_descriptor_header**, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.f_uvc_opts* @kzalloc(i32 296, i32 %9)
  store %struct.f_uvc_opts* %10, %struct.f_uvc_opts** %2, align 8
  %11 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %12 = icmp ne %struct.f_uvc_opts* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.usb_function_instance* @ERR_PTR(i32 %15)
  store %struct.usb_function_instance* %16, %struct.usb_function_instance** %1, align 8
  br label %197

17:                                               ; preds = %0
  %18 = load i32, i32* @uvc_free_inst, align 4
  %19 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %20 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %23 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %22, i32 0, i32 11
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %26 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %25, i32 0, i32 10
  store %struct.uvc_camera_terminal_descriptor* %26, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %27 = call i32 @UVC_DT_CAMERA_TERMINAL_SIZE(i32 3)
  %28 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %29 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** @USB_DT_CS_INTERFACE, align 8
  %31 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %32 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %31, i32 0, i32 10
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @UVC_VC_INPUT_TERMINAL, align 4
  %34 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %35 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  %36 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %37 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = call i8* @cpu_to_le16(i32 513)
  %39 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %40 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %42 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %41, i32 0, i32 7
  store i64 0, i64* %42, align 8
  %43 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %44 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = call i8* @cpu_to_le16(i32 0)
  %46 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %47 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = call i8* @cpu_to_le16(i32 0)
  %49 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %50 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = call i8* @cpu_to_le16(i32 0)
  %52 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %53 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %55 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %54, i32 0, i32 1
  store i32 3, i32* %55, align 4
  %56 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %57 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 2, i32* %59, align 4
  %60 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %61 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %65 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 0, i32* %67, align 4
  %68 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %69 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %68, i32 0, i32 9
  store %struct.uvc_processing_unit_descriptor* %69, %struct.uvc_processing_unit_descriptor** %4, align 8
  %70 = call i32 @UVC_DT_PROCESSING_UNIT_SIZE(i32 2)
  %71 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %4, align 8
  %72 = getelementptr inbounds %struct.uvc_processing_unit_descriptor, %struct.uvc_processing_unit_descriptor* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** @USB_DT_CS_INTERFACE, align 8
  %74 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %4, align 8
  %75 = getelementptr inbounds %struct.uvc_processing_unit_descriptor, %struct.uvc_processing_unit_descriptor* %74, i32 0, i32 7
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @UVC_VC_PROCESSING_UNIT, align 4
  %77 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %4, align 8
  %78 = getelementptr inbounds %struct.uvc_processing_unit_descriptor, %struct.uvc_processing_unit_descriptor* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %4, align 8
  %80 = getelementptr inbounds %struct.uvc_processing_unit_descriptor, %struct.uvc_processing_unit_descriptor* %79, i32 0, i32 0
  store i32 2, i32* %80, align 8
  %81 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %4, align 8
  %82 = getelementptr inbounds %struct.uvc_processing_unit_descriptor, %struct.uvc_processing_unit_descriptor* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = call i8* @cpu_to_le16(i32 16384)
  %84 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %4, align 8
  %85 = getelementptr inbounds %struct.uvc_processing_unit_descriptor, %struct.uvc_processing_unit_descriptor* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %4, align 8
  %87 = getelementptr inbounds %struct.uvc_processing_unit_descriptor, %struct.uvc_processing_unit_descriptor* %86, i32 0, i32 2
  store i32 2, i32* %87, align 8
  %88 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %4, align 8
  %89 = getelementptr inbounds %struct.uvc_processing_unit_descriptor, %struct.uvc_processing_unit_descriptor* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 1, i32* %91, align 4
  %92 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %4, align 8
  %93 = getelementptr inbounds %struct.uvc_processing_unit_descriptor, %struct.uvc_processing_unit_descriptor* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 0, i32* %95, align 4
  %96 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %4, align 8
  %97 = getelementptr inbounds %struct.uvc_processing_unit_descriptor, %struct.uvc_processing_unit_descriptor* %96, i32 0, i32 4
  store i64 0, i64* %97, align 8
  %98 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %99 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %98, i32 0, i32 8
  store %struct.uvc_output_terminal_descriptor* %99, %struct.uvc_output_terminal_descriptor** %5, align 8
  %100 = load i32, i32* @UVC_DT_OUTPUT_TERMINAL_SIZE, align 4
  %101 = load %struct.uvc_output_terminal_descriptor*, %struct.uvc_output_terminal_descriptor** %5, align 8
  %102 = getelementptr inbounds %struct.uvc_output_terminal_descriptor, %struct.uvc_output_terminal_descriptor* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 8
  %103 = load i8*, i8** @USB_DT_CS_INTERFACE, align 8
  %104 = load %struct.uvc_output_terminal_descriptor*, %struct.uvc_output_terminal_descriptor** %5, align 8
  %105 = getelementptr inbounds %struct.uvc_output_terminal_descriptor, %struct.uvc_output_terminal_descriptor* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* @UVC_VC_OUTPUT_TERMINAL, align 4
  %107 = load %struct.uvc_output_terminal_descriptor*, %struct.uvc_output_terminal_descriptor** %5, align 8
  %108 = getelementptr inbounds %struct.uvc_output_terminal_descriptor, %struct.uvc_output_terminal_descriptor* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load %struct.uvc_output_terminal_descriptor*, %struct.uvc_output_terminal_descriptor** %5, align 8
  %110 = getelementptr inbounds %struct.uvc_output_terminal_descriptor, %struct.uvc_output_terminal_descriptor* %109, i32 0, i32 0
  store i32 3, i32* %110, align 8
  %111 = call i8* @cpu_to_le16(i32 257)
  %112 = load %struct.uvc_output_terminal_descriptor*, %struct.uvc_output_terminal_descriptor** %5, align 8
  %113 = getelementptr inbounds %struct.uvc_output_terminal_descriptor, %struct.uvc_output_terminal_descriptor* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load %struct.uvc_output_terminal_descriptor*, %struct.uvc_output_terminal_descriptor** %5, align 8
  %115 = getelementptr inbounds %struct.uvc_output_terminal_descriptor, %struct.uvc_output_terminal_descriptor* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.uvc_output_terminal_descriptor*, %struct.uvc_output_terminal_descriptor** %5, align 8
  %117 = getelementptr inbounds %struct.uvc_output_terminal_descriptor, %struct.uvc_output_terminal_descriptor* %116, i32 0, i32 1
  store i32 2, i32* %117, align 4
  %118 = load %struct.uvc_output_terminal_descriptor*, %struct.uvc_output_terminal_descriptor** %5, align 8
  %119 = getelementptr inbounds %struct.uvc_output_terminal_descriptor, %struct.uvc_output_terminal_descriptor* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %121 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %120, i32 0, i32 7
  store %struct.uvc_color_matching_descriptor* %121, %struct.uvc_color_matching_descriptor** %6, align 8
  %122 = load i32, i32* @UVC_DT_COLOR_MATCHING_SIZE, align 4
  %123 = load %struct.uvc_color_matching_descriptor*, %struct.uvc_color_matching_descriptor** %6, align 8
  %124 = getelementptr inbounds %struct.uvc_color_matching_descriptor, %struct.uvc_color_matching_descriptor* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  %125 = load i8*, i8** @USB_DT_CS_INTERFACE, align 8
  %126 = load %struct.uvc_color_matching_descriptor*, %struct.uvc_color_matching_descriptor** %6, align 8
  %127 = getelementptr inbounds %struct.uvc_color_matching_descriptor, %struct.uvc_color_matching_descriptor* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* @UVC_VS_COLORFORMAT, align 4
  %129 = load %struct.uvc_color_matching_descriptor*, %struct.uvc_color_matching_descriptor** %6, align 8
  %130 = getelementptr inbounds %struct.uvc_color_matching_descriptor, %struct.uvc_color_matching_descriptor* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load %struct.uvc_color_matching_descriptor*, %struct.uvc_color_matching_descriptor** %6, align 8
  %132 = getelementptr inbounds %struct.uvc_color_matching_descriptor, %struct.uvc_color_matching_descriptor* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = load %struct.uvc_color_matching_descriptor*, %struct.uvc_color_matching_descriptor** %6, align 8
  %134 = getelementptr inbounds %struct.uvc_color_matching_descriptor, %struct.uvc_color_matching_descriptor* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  %135 = load %struct.uvc_color_matching_descriptor*, %struct.uvc_color_matching_descriptor** %6, align 8
  %136 = getelementptr inbounds %struct.uvc_color_matching_descriptor, %struct.uvc_color_matching_descriptor* %135, i32 0, i32 2
  store i32 4, i32* %136, align 8
  %137 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %138 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %137, i32 0, i32 6
  %139 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %138, align 8
  store %struct.uvc_descriptor_header** %139, %struct.uvc_descriptor_header*** %7, align 8
  %140 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %7, align 8
  %141 = getelementptr inbounds %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %140, i64 0
  store %struct.uvc_descriptor_header* null, %struct.uvc_descriptor_header** %141, align 8
  %142 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %143 = bitcast %struct.uvc_camera_terminal_descriptor* %142 to %struct.uvc_descriptor_header*
  %144 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %7, align 8
  %145 = getelementptr inbounds %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %144, i64 1
  store %struct.uvc_descriptor_header* %143, %struct.uvc_descriptor_header** %145, align 8
  %146 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %4, align 8
  %147 = bitcast %struct.uvc_processing_unit_descriptor* %146 to %struct.uvc_descriptor_header*
  %148 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %7, align 8
  %149 = getelementptr inbounds %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %148, i64 2
  store %struct.uvc_descriptor_header* %147, %struct.uvc_descriptor_header** %149, align 8
  %150 = load %struct.uvc_output_terminal_descriptor*, %struct.uvc_output_terminal_descriptor** %5, align 8
  %151 = bitcast %struct.uvc_output_terminal_descriptor* %150 to %struct.uvc_descriptor_header*
  %152 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %7, align 8
  %153 = getelementptr inbounds %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %152, i64 3
  store %struct.uvc_descriptor_header* %151, %struct.uvc_descriptor_header** %153, align 8
  %154 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %7, align 8
  %155 = getelementptr inbounds %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %154, i64 4
  store %struct.uvc_descriptor_header* null, %struct.uvc_descriptor_header** %155, align 8
  %156 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %7, align 8
  %157 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %158 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %157, i32 0, i32 5
  store %struct.uvc_descriptor_header** %156, %struct.uvc_descriptor_header*** %158, align 8
  %159 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %160 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %159, i32 0, i32 4
  %161 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %160, align 8
  store %struct.uvc_descriptor_header** %161, %struct.uvc_descriptor_header*** %7, align 8
  %162 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %7, align 8
  %163 = getelementptr inbounds %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %162, i64 0
  store %struct.uvc_descriptor_header* null, %struct.uvc_descriptor_header** %163, align 8
  %164 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %3, align 8
  %165 = bitcast %struct.uvc_camera_terminal_descriptor* %164 to %struct.uvc_descriptor_header*
  %166 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %7, align 8
  %167 = getelementptr inbounds %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %166, i64 1
  store %struct.uvc_descriptor_header* %165, %struct.uvc_descriptor_header** %167, align 8
  %168 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %4, align 8
  %169 = bitcast %struct.uvc_processing_unit_descriptor* %168 to %struct.uvc_descriptor_header*
  %170 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %7, align 8
  %171 = getelementptr inbounds %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %170, i64 2
  store %struct.uvc_descriptor_header* %169, %struct.uvc_descriptor_header** %171, align 8
  %172 = load %struct.uvc_output_terminal_descriptor*, %struct.uvc_output_terminal_descriptor** %5, align 8
  %173 = bitcast %struct.uvc_output_terminal_descriptor* %172 to %struct.uvc_descriptor_header*
  %174 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %7, align 8
  %175 = getelementptr inbounds %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %174, i64 3
  store %struct.uvc_descriptor_header* %173, %struct.uvc_descriptor_header** %175, align 8
  %176 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %7, align 8
  %177 = getelementptr inbounds %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %176, i64 4
  store %struct.uvc_descriptor_header* null, %struct.uvc_descriptor_header** %177, align 8
  %178 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %7, align 8
  %179 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %180 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %179, i32 0, i32 3
  store %struct.uvc_descriptor_header** %178, %struct.uvc_descriptor_header*** %180, align 8
  %181 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %182 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  %183 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %184 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %183, i32 0, i32 1
  store i32 1024, i32* %184, align 4
  %185 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %186 = call i32 @uvcg_attach_configfs(%struct.f_uvc_opts* %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %17
  %190 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %191 = call i32 @kfree(%struct.f_uvc_opts* %190)
  %192 = load i32, i32* %8, align 4
  %193 = call %struct.usb_function_instance* @ERR_PTR(i32 %192)
  store %struct.usb_function_instance* %193, %struct.usb_function_instance** %1, align 8
  br label %197

194:                                              ; preds = %17
  %195 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %2, align 8
  %196 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %195, i32 0, i32 2
  store %struct.usb_function_instance* %196, %struct.usb_function_instance** %1, align 8
  br label %197

197:                                              ; preds = %194, %189, %13
  %198 = load %struct.usb_function_instance*, %struct.usb_function_instance** %1, align 8
  ret %struct.usb_function_instance* %198
}

declare dso_local %struct.f_uvc_opts* @kzalloc(i32, i32) #1

declare dso_local %struct.usb_function_instance* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @UVC_DT_CAMERA_TERMINAL_SIZE(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @UVC_DT_PROCESSING_UNIT_SIZE(i32) #1

declare dso_local i32 @uvcg_attach_configfs(%struct.f_uvc_opts*) #1

declare dso_local i32 @kfree(%struct.f_uvc_opts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
