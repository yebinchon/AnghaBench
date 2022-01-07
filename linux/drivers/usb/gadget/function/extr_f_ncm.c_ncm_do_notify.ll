; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_ncm_do_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_ncm_do_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_ncm = type { i32, i32, %struct.usb_request*, i32, i32, i32, %struct.TYPE_6__ }
%struct.usb_request = type { i32, %struct.usb_cdc_notification* }
%struct.usb_cdc_notification = type { i32, i8*, i8*, i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }

@USB_CDC_NOTIFY_NETWORK_CONNECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"notify connect %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@USB_CDC_NOTIFY_SPEED_CHANGE = common dso_local global i32 0, align 4
@NCM_STATUS_BYTECOUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"notify speed %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"notify --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f_ncm*)* @ncm_do_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncm_do_notify(%struct.f_ncm* %0) #0 {
  %2 = alloca %struct.f_ncm*, align 8
  %3 = alloca %struct.usb_request*, align 8
  %4 = alloca %struct.usb_cdc_notification*, align 8
  %5 = alloca %struct.usb_composite_dev*, align 8
  %6 = alloca %struct.usb_cdc_notification*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_cdc_notification, align 8
  store %struct.f_ncm* %0, %struct.f_ncm** %2, align 8
  %9 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %10 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %9, i32 0, i32 2
  %11 = load %struct.usb_request*, %struct.usb_request** %10, align 8
  store %struct.usb_request* %11, %struct.usb_request** %3, align 8
  %12 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %13 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %17, align 8
  store %struct.usb_composite_dev* %18, %struct.usb_composite_dev** %5, align 8
  %19 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %20 = icmp ne %struct.usb_request* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %132

22:                                               ; preds = %1
  %23 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %24 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %23, i32 0, i32 1
  %25 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %24, align 8
  store %struct.usb_cdc_notification* %25, %struct.usb_cdc_notification** %4, align 8
  %26 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %27 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %100 [
    i32 129, label %29
    i32 130, label %30
    i32 128, label %61
  ]

29:                                               ; preds = %22
  br label %132

30:                                               ; preds = %22
  %31 = load i32, i32* @USB_CDC_NOTIFY_NETWORK_CONNECTION, align 4
  %32 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %4, align 8
  %33 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %35 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = call i8* @cpu_to_le16(i32 1)
  %40 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %4, align 8
  %41 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  br label %46

42:                                               ; preds = %30
  %43 = call i8* @cpu_to_le16(i32 0)
  %44 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %4, align 8
  %45 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %4, align 8
  %48 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %47, i32 0, i32 2
  store i8* null, i8** %48, align 8
  %49 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %50 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %49, i32 0, i32 0
  store i32 40, i32* %50, align 8
  %51 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %52 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %53 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %58 = call i32 (%struct.usb_composite_dev*, i8*, ...) @DBG(%struct.usb_composite_dev* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %60 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %59, i32 0, i32 0
  store i32 129, i32* %60, align 8
  br label %100

61:                                               ; preds = %22
  %62 = load i32, i32* @USB_CDC_NOTIFY_SPEED_CHANGE, align 4
  %63 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %4, align 8
  %64 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = call i8* @cpu_to_le16(i32 0)
  %66 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %4, align 8
  %67 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = call i8* @cpu_to_le16(i32 8)
  %69 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %4, align 8
  %70 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @NCM_STATUS_BYTECOUNT, align 4
  %72 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %73 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %75 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %74, i32 0, i32 1
  %76 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %75, align 8
  %77 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %76, i64 40
  store %struct.usb_cdc_notification* %77, %struct.usb_cdc_notification** %6, align 8
  %78 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %6, align 8
  %79 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %78, i64 0
  %80 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %81 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ncm_bitrate(i32 %82)
  call void @cpu_to_le32(%struct.usb_cdc_notification* sret %8, i32 %83)
  %84 = bitcast %struct.usb_cdc_notification* %79 to i8*
  %85 = bitcast %struct.usb_cdc_notification* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 40, i1 false)
  %86 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %6, align 8
  %87 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %86, i64 1
  %88 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %6, align 8
  %89 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %88, i64 0
  %90 = bitcast %struct.usb_cdc_notification* %87 to i8*
  %91 = bitcast %struct.usb_cdc_notification* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 40, i1 false)
  %92 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %93 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %94 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ncm_bitrate(i32 %95)
  %97 = call i32 (%struct.usb_composite_dev*, i8*, ...) @DBG(%struct.usb_composite_dev* %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %99 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %98, i32 0, i32 0
  store i32 130, i32* %99, align 8
  br label %100

100:                                              ; preds = %22, %61, %46
  %101 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %4, align 8
  %102 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %101, i32 0, i32 0
  store i32 161, i32* %102, align 8
  %103 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %104 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @cpu_to_le16(i32 %105)
  %107 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %4, align 8
  %108 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %110 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %109, i32 0, i32 2
  store %struct.usb_request* null, %struct.usb_request** %110, align 8
  %111 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %112 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %111, i32 0, i32 3
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %115 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %118 = load i32, i32* @GFP_ATOMIC, align 4
  %119 = call i32 @usb_ep_queue(i32 %116, %struct.usb_request* %117, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %121 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %120, i32 0, i32 3
  %122 = call i32 @spin_lock(i32* %121)
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %100
  %126 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %127 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %128 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %127, i32 0, i32 2
  store %struct.usb_request* %126, %struct.usb_request** %128, align 8
  %129 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 (%struct.usb_composite_dev*, i8*, ...) @DBG(%struct.usb_composite_dev* %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %21, %29, %125, %100
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, ...) #1

declare dso_local void @cpu_to_le32(%struct.usb_cdc_notification* sret, i32) #1

declare dso_local i32 @ncm_bitrate(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_ep_queue(i32, %struct.usb_request*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
