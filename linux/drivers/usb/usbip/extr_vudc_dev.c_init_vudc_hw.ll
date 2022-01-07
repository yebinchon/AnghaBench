; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_init_vudc_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_init_vudc_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vudc = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.vep*, %struct.usbip_device }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_5__, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.vep = type { %struct.TYPE_8__, i32, %struct.TYPE_6__*, i32 }
%struct.usbip_device = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@VIRTUAL_ENDPOINTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ep%d%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@vep_ops = common dso_local global i32 0, align 4
@SDEV_ST_AVAILABLE = common dso_local global i32 0, align 4
@USBIP_VUDC = common dso_local global i32 0, align 4
@vudc_shutdown = common dso_local global i32 0, align 4
@vudc_device_reset = common dso_local global i32 0, align 4
@vudc_device_unusable = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vudc*)* @init_vudc_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_vudc_hw(%struct.vudc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vudc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbip_device*, align 8
  %6 = alloca %struct.vep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vudc* %0, %struct.vudc** %3, align 8
  %9 = load %struct.vudc*, %struct.vudc** %3, align 8
  %10 = getelementptr inbounds %struct.vudc, %struct.vudc* %9, i32 0, i32 7
  store %struct.usbip_device* %10, %struct.usbip_device** %5, align 8
  %11 = load i32, i32* @VIRTUAL_ENDPOINTS, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.vep* @kcalloc(i32 %11, i32 72, i32 %12)
  %14 = load %struct.vudc*, %struct.vudc** %3, align 8
  %15 = getelementptr inbounds %struct.vudc, %struct.vudc* %14, i32 0, i32 6
  store %struct.vep* %13, %struct.vep** %15, align 8
  %16 = load %struct.vudc*, %struct.vudc** %3, align 8
  %17 = getelementptr inbounds %struct.vudc, %struct.vudc* %16, i32 0, i32 6
  %18 = load %struct.vep*, %struct.vep** %17, align 8
  %19 = icmp ne %struct.vep* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %175

21:                                               ; preds = %1
  %22 = load %struct.vudc*, %struct.vudc** %3, align 8
  %23 = getelementptr inbounds %struct.vudc, %struct.vudc* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %133, %21
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @VIRTUAL_ENDPOINTS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %136

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = srem i32 %31, 2
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %8, align 4
  %36 = load %struct.vudc*, %struct.vudc** %3, align 8
  %37 = getelementptr inbounds %struct.vudc, %struct.vudc* %36, i32 0, i32 6
  %38 = load %struct.vep*, %struct.vep** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.vep, %struct.vep* %38, i64 %40
  store %struct.vep* %41, %struct.vep** %6, align 8
  %42 = load %struct.vep*, %struct.vep** %6, align 8
  %43 = getelementptr inbounds %struct.vep, %struct.vep* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %30
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  br label %54

53:                                               ; preds = %30
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi i8* [ %52, %48 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %53 ]
  %56 = call i32 @sprintf(i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %45, i8* %55)
  %57 = load %struct.vep*, %struct.vep** %6, align 8
  %58 = getelementptr inbounds %struct.vep, %struct.vep* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.vep*, %struct.vep** %6, align 8
  %61 = getelementptr inbounds %struct.vep, %struct.vep* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  store i32 %59, i32* %62, align 8
  %63 = load %struct.vep*, %struct.vep** %6, align 8
  %64 = getelementptr inbounds %struct.vep, %struct.vep* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  store i32* @vep_ops, i32** %65, align 8
  %66 = load %struct.vep*, %struct.vep** %6, align 8
  %67 = getelementptr inbounds %struct.vep, %struct.vep* %66, i32 0, i32 0
  %68 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__* %67, i32 -1)
  %69 = load %struct.vep*, %struct.vep** %6, align 8
  %70 = getelementptr inbounds %struct.vep, %struct.vep* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 16, i32* %71, align 8
  %72 = load %struct.vudc*, %struct.vudc** %3, align 8
  %73 = getelementptr inbounds %struct.vudc, %struct.vudc* %72, i32 0, i32 5
  %74 = load %struct.vep*, %struct.vep** %6, align 8
  %75 = getelementptr inbounds %struct.vep, %struct.vep* %74, i32 0, i32 2
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %75, align 8
  %76 = load %struct.vep*, %struct.vep** %6, align 8
  %77 = getelementptr inbounds %struct.vep, %struct.vep* %76, i32 0, i32 1
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %54
  %82 = load %struct.vep*, %struct.vep** %6, align 8
  %83 = getelementptr inbounds %struct.vep, %struct.vep* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.vep*, %struct.vep** %6, align 8
  %87 = getelementptr inbounds %struct.vep, %struct.vep* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.vep*, %struct.vep** %6, align 8
  %91 = getelementptr inbounds %struct.vep, %struct.vep* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  %94 = load %struct.vep*, %struct.vep** %6, align 8
  %95 = getelementptr inbounds %struct.vep, %struct.vep* %94, i32 0, i32 0
  %96 = load %struct.vudc*, %struct.vudc** %3, align 8
  %97 = getelementptr inbounds %struct.vudc, %struct.vudc* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %98, align 8
  br label %132

99:                                               ; preds = %54
  %100 = load %struct.vep*, %struct.vep** %6, align 8
  %101 = getelementptr inbounds %struct.vep, %struct.vep* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  store i32 1, i32* %103, align 4
  %104 = load %struct.vep*, %struct.vep** %6, align 8
  %105 = getelementptr inbounds %struct.vep, %struct.vep* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  store i32 1, i32* %107, align 8
  %108 = load %struct.vep*, %struct.vep** %6, align 8
  %109 = getelementptr inbounds %struct.vep, %struct.vep* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 5
  store i32 1, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %99
  %115 = load %struct.vep*, %struct.vep** %6, align 8
  %116 = getelementptr inbounds %struct.vep, %struct.vep* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  br label %124

119:                                              ; preds = %99
  %120 = load %struct.vep*, %struct.vep** %6, align 8
  %121 = getelementptr inbounds %struct.vep, %struct.vep* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  store i32 1, i32* %123, align 8
  br label %124

124:                                              ; preds = %119, %114
  %125 = load %struct.vep*, %struct.vep** %6, align 8
  %126 = getelementptr inbounds %struct.vep, %struct.vep* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load %struct.vudc*, %struct.vudc** %3, align 8
  %129 = getelementptr inbounds %struct.vudc, %struct.vudc* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = call i32 @list_add_tail(i32* %127, i32* %130)
  br label %132

132:                                              ; preds = %124, %81
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %26

136:                                              ; preds = %26
  %137 = load %struct.vudc*, %struct.vudc** %3, align 8
  %138 = getelementptr inbounds %struct.vudc, %struct.vudc* %137, i32 0, i32 4
  %139 = call i32 @spin_lock_init(i32* %138)
  %140 = load %struct.vudc*, %struct.vudc** %3, align 8
  %141 = getelementptr inbounds %struct.vudc, %struct.vudc* %140, i32 0, i32 3
  %142 = call i32 @spin_lock_init(i32* %141)
  %143 = load %struct.vudc*, %struct.vudc** %3, align 8
  %144 = getelementptr inbounds %struct.vudc, %struct.vudc* %143, i32 0, i32 2
  %145 = call i32 @INIT_LIST_HEAD(i32* %144)
  %146 = load %struct.vudc*, %struct.vudc** %3, align 8
  %147 = getelementptr inbounds %struct.vudc, %struct.vudc* %146, i32 0, i32 1
  %148 = call i32 @INIT_LIST_HEAD(i32* %147)
  %149 = load %struct.vudc*, %struct.vudc** %3, align 8
  %150 = getelementptr inbounds %struct.vudc, %struct.vudc* %149, i32 0, i32 0
  %151 = call i32 @init_waitqueue_head(i32* %150)
  %152 = load %struct.usbip_device*, %struct.usbip_device** %5, align 8
  %153 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %152, i32 0, i32 3
  %154 = call i32 @spin_lock_init(i32* %153)
  %155 = load i32, i32* @SDEV_ST_AVAILABLE, align 4
  %156 = load %struct.usbip_device*, %struct.usbip_device** %5, align 8
  %157 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @USBIP_VUDC, align 4
  %159 = load %struct.usbip_device*, %struct.usbip_device** %5, align 8
  %160 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @vudc_shutdown, align 4
  %162 = load %struct.usbip_device*, %struct.usbip_device** %5, align 8
  %163 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 4
  %165 = load i32, i32* @vudc_device_reset, align 4
  %166 = load %struct.usbip_device*, %struct.usbip_device** %5, align 8
  %167 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* @vudc_device_unusable, align 4
  %170 = load %struct.usbip_device*, %struct.usbip_device** %5, align 8
  %171 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 4
  %173 = load %struct.vudc*, %struct.vudc** %3, align 8
  %174 = call i32 @v_init_timer(%struct.vudc* %173)
  store i32 0, i32* %2, align 4
  br label %178

175:                                              ; preds = %20
  %176 = load i32, i32* @ENOMEM, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %175, %136
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.vep* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @v_init_timer(%struct.vudc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
