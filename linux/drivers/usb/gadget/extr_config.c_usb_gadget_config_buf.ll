; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_config.c_usb_gadget_config_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_config.c_usb_gadget_config_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config_descriptor = type { i32, i32, i32, i32 }
%struct.usb_descriptor_header = type { i32 }

@USB_DT_CONFIG_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_DT_CONFIG = common dso_local global i32 0, align 4
@USB_CONFIG_ATT_ONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_config_buf(%struct.usb_config_descriptor* %0, i8* %1, i32 %2, %struct.usb_descriptor_header** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_config_descriptor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_descriptor_header**, align 8
  %10 = alloca %struct.usb_config_descriptor*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_config_descriptor* %0, %struct.usb_config_descriptor** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.usb_descriptor_header** %3, %struct.usb_descriptor_header*** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.usb_config_descriptor*
  store %struct.usb_config_descriptor* %13, %struct.usb_config_descriptor** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @USB_DT_CONFIG_SIZE, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %9, align 8
  %19 = icmp ne %struct.usb_descriptor_header** %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %68

23:                                               ; preds = %17
  %24 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %10, align 8
  %25 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %26 = bitcast %struct.usb_config_descriptor* %24 to i8*
  %27 = bitcast %struct.usb_config_descriptor* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 16, i1 false)
  %28 = load i32, i32* @USB_DT_CONFIG_SIZE, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = zext i32 %28 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @USB_DT_CONFIG_SIZE, align 4
  %35 = sub i32 %33, %34
  %36 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %9, align 8
  %37 = call i32 @usb_descriptor_fillbuf(i32* %32, i32 %35, %struct.usb_descriptor_header** %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %68

42:                                               ; preds = %23
  %43 = load i32, i32* @USB_DT_CONFIG_SIZE, align 4
  %44 = load i32, i32* %11, align 4
  %45 = add i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %46, 65535
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %68

51:                                               ; preds = %42
  %52 = load i32, i32* @USB_DT_CONFIG_SIZE, align 4
  %53 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %10, align 8
  %54 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @USB_DT_CONFIG, align 4
  %56 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %10, align 8
  %57 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %10, align 8
  %61 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @USB_CONFIG_ATT_ONE, align 4
  %63 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %10, align 8
  %64 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %51, %48, %40, %20
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usb_descriptor_fillbuf(i32*, i32, %struct.usb_descriptor_header**) #2

declare dso_local i32 @cpu_to_le16(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
