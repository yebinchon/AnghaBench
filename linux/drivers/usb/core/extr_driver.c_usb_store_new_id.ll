; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_store_new_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_store_new_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dynids = type { i32, i32 }
%struct.usb_device_id = type { i64, i64, i32, i64 }
%struct.device_driver = type { i32 }
%struct.usb_dynid = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"%x %x %x %x %x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEVICE = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_INT_CLASS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_store_new_id(%struct.usb_dynids* %0, %struct.usb_device_id* %1, %struct.device_driver* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_dynids*, align 8
  %8 = alloca %struct.usb_device_id*, align 8
  %9 = alloca %struct.device_driver*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.usb_dynid*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.usb_device_id*, align 8
  store %struct.usb_dynids* %0, %struct.usb_dynids** %7, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %8, align 8
  store %struct.device_driver* %2, %struct.device_driver** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64* %13, i64* %14, i32* %15, i64* %16, i64* %17)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %149

28:                                               ; preds = %5
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.usb_dynid* @kzalloc(i32 40, i32 %29)
  store %struct.usb_dynid* %30, %struct.usb_dynid** %12, align 8
  %31 = load %struct.usb_dynid*, %struct.usb_dynid** %12, align 8
  %32 = icmp ne %struct.usb_dynid* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %149

36:                                               ; preds = %28
  %37 = load %struct.usb_dynid*, %struct.usb_dynid** %12, align 8
  %38 = getelementptr inbounds %struct.usb_dynid, %struct.usb_dynid* %37, i32 0, i32 0
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load i64, i64* %13, align 8
  %41 = load %struct.usb_dynid*, %struct.usb_dynid** %12, align 8
  %42 = getelementptr inbounds %struct.usb_dynid, %struct.usb_dynid* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store i64 %40, i64* %43, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.usb_dynid*, %struct.usb_dynid** %12, align 8
  %46 = getelementptr inbounds %struct.usb_dynid, %struct.usb_dynid* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* @USB_DEVICE_ID_MATCH_DEVICE, align 4
  %49 = load %struct.usb_dynid*, %struct.usb_dynid** %12, align 8
  %50 = getelementptr inbounds %struct.usb_dynid, %struct.usb_dynid* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %75

54:                                               ; preds = %36
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i32, i32* %15, align 4
  %59 = icmp ugt i32 %58, 255
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %19, align 4
  br label %145

63:                                               ; preds = %57
  %64 = load i32, i32* %15, align 4
  %65 = zext i32 %64 to i64
  %66 = load %struct.usb_dynid*, %struct.usb_dynid** %12, align 8
  %67 = getelementptr inbounds %struct.usb_dynid, %struct.usb_dynid* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i64 %65, i64* %68, align 8
  %69 = load i32, i32* @USB_DEVICE_ID_MATCH_INT_CLASS, align 4
  %70 = load %struct.usb_dynid*, %struct.usb_dynid** %12, align 8
  %71 = getelementptr inbounds %struct.usb_dynid, %struct.usb_dynid* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %63, %54, %36
  %76 = load i32, i32* %18, align 4
  %77 = icmp sgt i32 %76, 4
  br i1 %77, label %78, label %124

78:                                               ; preds = %75
  %79 = load %struct.usb_device_id*, %struct.usb_device_id** %8, align 8
  store %struct.usb_device_id* %79, %struct.usb_device_id** %20, align 8
  %80 = load %struct.usb_device_id*, %struct.usb_device_id** %20, align 8
  %81 = icmp ne %struct.usb_device_id* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %19, align 4
  br label %145

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %105, %85
  %87 = load %struct.usb_device_id*, %struct.usb_device_id** %20, align 8
  %88 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  %92 = load %struct.usb_device_id*, %struct.usb_device_id** %20, align 8
  %93 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %16, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.usb_device_id*, %struct.usb_device_id** %20, align 8
  %99 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %17, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %108

104:                                              ; preds = %97, %91
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.usb_device_id*, %struct.usb_device_id** %20, align 8
  %107 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %106, i32 1
  store %struct.usb_device_id* %107, %struct.usb_device_id** %20, align 8
  br label %86

108:                                              ; preds = %103, %86
  %109 = load %struct.usb_device_id*, %struct.usb_device_id** %20, align 8
  %110 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.usb_device_id*, %struct.usb_device_id** %20, align 8
  %115 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.usb_dynid*, %struct.usb_dynid** %12, align 8
  %118 = getelementptr inbounds %struct.usb_dynid, %struct.usb_dynid* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  br label %123

120:                                              ; preds = %108
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %19, align 4
  br label %145

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %75
  %125 = load %struct.usb_dynids*, %struct.usb_dynids** %7, align 8
  %126 = getelementptr inbounds %struct.usb_dynids, %struct.usb_dynids* %125, i32 0, i32 0
  %127 = call i32 @spin_lock(i32* %126)
  %128 = load %struct.usb_dynid*, %struct.usb_dynid** %12, align 8
  %129 = getelementptr inbounds %struct.usb_dynid, %struct.usb_dynid* %128, i32 0, i32 0
  %130 = load %struct.usb_dynids*, %struct.usb_dynids** %7, align 8
  %131 = getelementptr inbounds %struct.usb_dynids, %struct.usb_dynids* %130, i32 0, i32 1
  %132 = call i32 @list_add_tail(i32* %129, i32* %131)
  %133 = load %struct.usb_dynids*, %struct.usb_dynids** %7, align 8
  %134 = getelementptr inbounds %struct.usb_dynids, %struct.usb_dynids* %133, i32 0, i32 0
  %135 = call i32 @spin_unlock(i32* %134)
  %136 = load %struct.device_driver*, %struct.device_driver** %9, align 8
  %137 = call i32 @driver_attach(%struct.device_driver* %136)
  store i32 %137, i32* %19, align 4
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %124
  %141 = load i32, i32* %19, align 4
  store i32 %141, i32* %6, align 4
  br label %149

142:                                              ; preds = %124
  %143 = load i64, i64* %11, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %6, align 4
  br label %149

145:                                              ; preds = %120, %82, %60
  %146 = load %struct.usb_dynid*, %struct.usb_dynid** %12, align 8
  %147 = call i32 @kfree(%struct.usb_dynid* %146)
  %148 = load i32, i32* %19, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %145, %142, %140, %33, %25
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*, i32*, i64*, i64*) #1

declare dso_local %struct.usb_dynid* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @driver_attach(%struct.device_driver*) #1

declare dso_local i32 @kfree(%struct.usb_dynid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
