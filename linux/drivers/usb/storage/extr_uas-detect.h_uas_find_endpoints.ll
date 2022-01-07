; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas-detect.h_uas_find_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas-detect.h_uas_find_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_interface = type { %struct.TYPE_2__, %struct.usb_host_endpoint* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_host_endpoint = type { i8*, i32 }

@USB_DT_PIPE_USAGE = common dso_local global i8 0, align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_host_interface*, %struct.usb_host_endpoint**)* @uas_find_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uas_find_endpoints(%struct.usb_host_interface* %0, %struct.usb_host_endpoint** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca %struct.usb_host_endpoint**, align 8
  %6 = alloca %struct.usb_host_endpoint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_host_interface* %0, %struct.usb_host_interface** %4, align 8
  store %struct.usb_host_endpoint** %1, %struct.usb_host_endpoint*** %5, align 8
  %12 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %13 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %12, i32 0, i32 1
  %14 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %13, align 8
  store %struct.usb_host_endpoint* %14, %struct.usb_host_endpoint** %6, align 8
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %83, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %86

23:                                               ; preds = %19
  %24 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %24, i64 %26
  %28 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %9, align 8
  %30 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %30, i64 %32
  %34 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %68, %23
  %37 = load i32, i32* %10, align 4
  %38 = icmp sge i32 %37, 3
  br i1 %38, label %39, label %82

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @USB_DT_PIPE_USAGE, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %39
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ugt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  %56 = icmp ult i32 %55, 5
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %58, i64 %60
  %62 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %5, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sub i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %62, i64 %65
  store %struct.usb_host_endpoint* %61, %struct.usb_host_endpoint** %66, align 8
  br label %67

67:                                               ; preds = %57, %54, %47
  br label %82

68:                                               ; preds = %39
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8*, i8** %9, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %9, align 8
  br label %36

82:                                               ; preds = %67, %36
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %19

86:                                               ; preds = %19
  %87 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %5, align 8
  %88 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %87, i64 0
  %89 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %88, align 8
  %90 = icmp ne %struct.usb_host_endpoint* %89, null
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %5, align 8
  %93 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %92, i64 1
  %94 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %93, align 8
  %95 = icmp ne %struct.usb_host_endpoint* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %5, align 8
  %98 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %97, i64 2
  %99 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %98, align 8
  %100 = icmp ne %struct.usb_host_endpoint* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %5, align 8
  %103 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %102, i64 3
  %104 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %103, align 8
  %105 = icmp ne %struct.usb_host_endpoint* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %101, %96, %91, %86
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %110

109:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
