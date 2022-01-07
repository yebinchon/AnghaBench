; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_backend_create_xenvif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_backend_create_xenvif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backend_info = type { %struct.xenvif*, %struct.xenbus_device* }
%struct.xenvif = type { %struct.backend_info* }
%struct.xenbus_device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"handle\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%li\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"reading handle\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"creating interface\00", align 1
@KOBJ_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backend_info*)* @backend_create_xenvif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @backend_create_xenvif(%struct.backend_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backend_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.xenbus_device*, align 8
  %7 = alloca %struct.xenvif*, align 8
  store %struct.backend_info* %0, %struct.backend_info** %3, align 8
  %8 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %9 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %8, i32 0, i32 1
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %9, align 8
  store %struct.xenbus_device* %10, %struct.xenbus_device** %6, align 8
  %11 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %12 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %11, i32 0, i32 0
  %13 = load %struct.xenvif*, %struct.xenvif** %12, align 8
  %14 = icmp ne %struct.xenvif* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

16:                                               ; preds = %1
  %17 = load i32, i32* @XBT_NIL, align 4
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %19 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @xenbus_scanf(i32 %17, i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %5)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %25, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ %31, %30 ], [ %34, %32 ]
  store i32 %36, i32* %2, align 4
  br label %67

37:                                               ; preds = %16
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %39 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %38, i32 0, i32 0
  %40 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %41 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %5, align 8
  %44 = call %struct.xenvif* @xenvif_alloc(%struct.TYPE_2__* %39, i32 %42, i64 %43)
  store %struct.xenvif* %44, %struct.xenvif** %7, align 8
  %45 = load %struct.xenvif*, %struct.xenvif** %7, align 8
  %46 = call i64 @IS_ERR(%struct.xenvif* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load %struct.xenvif*, %struct.xenvif** %7, align 8
  %50 = call i32 @PTR_ERR(%struct.xenvif* %49)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %51, i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %67

55:                                               ; preds = %37
  %56 = load %struct.xenvif*, %struct.xenvif** %7, align 8
  %57 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %58 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %57, i32 0, i32 0
  store %struct.xenvif* %56, %struct.xenvif** %58, align 8
  %59 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %60 = load %struct.xenvif*, %struct.xenvif** %7, align 8
  %61 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %60, i32 0, i32 0
  store %struct.backend_info* %59, %struct.backend_info** %61, align 8
  %62 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %63 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* @KOBJ_ONLINE, align 4
  %66 = call i32 @kobject_uevent(i32* %64, i32 %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %55, %48, %35, %15
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @xenbus_scanf(i32, i32, i8*, i8*, i64*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local %struct.xenvif* @xenvif_alloc(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.xenvif*) #1

declare dso_local i32 @PTR_ERR(%struct.xenvif*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
