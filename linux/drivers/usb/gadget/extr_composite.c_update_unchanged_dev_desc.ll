; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_update_unchanged_dev_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_update_unchanged_dev_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_descriptor = type { i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device_descriptor*, %struct.usb_device_descriptor*)* @update_unchanged_dev_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_unchanged_dev_desc(%struct.usb_device_descriptor* %0, %struct.usb_device_descriptor* %1) #0 {
  %3 = alloca %struct.usb_device_descriptor*, align 8
  %4 = alloca %struct.usb_device_descriptor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.usb_device_descriptor* %0, %struct.usb_device_descriptor** %3, align 8
  store %struct.usb_device_descriptor* %1, %struct.usb_device_descriptor** %4, align 8
  %11 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %12 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %11, i32 0, i32 5
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %15 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %14, i32 0, i32 4
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %18 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %21 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %24 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %9, align 8
  %26 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %27 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %30 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %4, align 8
  %31 = bitcast %struct.usb_device_descriptor* %29 to i8*
  %32 = bitcast %struct.usb_device_descriptor* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 48, i1 false)
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %38 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %35, %2
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %45 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %52 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %58

53:                                               ; preds = %46
  %54 = call i32 (...) @get_default_bcdDevice()
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %57 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %53, %49
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %64 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %71 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i8*, i8** %10, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %3, align 8
  %78 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %72
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @get_default_bcdDevice(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
