; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_uncompressed_make.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_uncompressed_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.uvcg_uncompressed = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.config_group, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i64, i32, i32, i32, i32 }

@uvcg_uncompressed_make.guid = internal global [16 x i8] c"YUY2\00\00\10\00\80\00\00\AA\008\9Bq", align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_DT_FORMAT_UNCOMPRESSED_SIZE = common dso_local global i32 0, align 4
@USB_DT_CS_INTERFACE = common dso_local global i32 0, align 4
@UVC_VS_FORMAT_UNCOMPRESSED = common dso_local global i32 0, align 4
@UVCG_UNCOMPRESSED = common dso_local global i32 0, align 4
@uvcg_uncompressed_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @uvcg_uncompressed_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @uvcg_uncompressed_make(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uvcg_uncompressed*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.uvcg_uncompressed* @kzalloc(i32 64, i32 %7)
  store %struct.uvcg_uncompressed* %8, %struct.uvcg_uncompressed** %6, align 8
  %9 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %10 = icmp ne %struct.uvcg_uncompressed* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.config_group* @ERR_PTR(i32 %13)
  store %struct.config_group* %14, %struct.config_group** %3, align 8
  br label %63

15:                                               ; preds = %2
  %16 = load i32, i32* @UVC_DT_FORMAT_UNCOMPRESSED_SIZE, align 4
  %17 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %18 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 9
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @USB_DT_CS_INTERFACE, align 4
  %21 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %22 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 8
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @UVC_VS_FORMAT_UNCOMPRESSED, align 4
  %25 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %26 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 7
  store i32 %24, i32* %27, align 4
  %28 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %29 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @memcpy(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @uvcg_uncompressed_make.guid, i64 0, i64 0), i32 16)
  %33 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %34 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 16, i32* %35, align 8
  %36 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %37 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %40 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %43 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %46 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %49 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @UVCG_UNCOMPRESSED, align 4
  %52 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %53 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %56 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @config_group_init_type_name(%struct.config_group* %57, i8* %58, i32* @uvcg_uncompressed_type)
  %60 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %6, align 8
  %61 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store %struct.config_group* %62, %struct.config_group** %3, align 8
  br label %63

63:                                               ; preds = %15, %11
  %64 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %64
}

declare dso_local %struct.uvcg_uncompressed* @kzalloc(i32, i32) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
