; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64, i64, i32, %struct.TYPE_2__, i32, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.oxu_hcd = type { i32 }

@OXU_OTG_CORE_OFFSET = common dso_local global i32 0, align 4
@OXU_SPH_CORE_OFFSET = common dso_local global i32 0, align 4
@OXU_USBMODE = common dso_local global i32 0, align 4
@OXU_CM_HOST_ONLY = common dso_local global i32 0, align 4
@OXU_ES_LITTLE = common dso_local global i32 0, align 4
@OXU_VBPS = common dso_local global i32 0, align 4
@oxu_hc_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"oxu210hp_otg\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"oxu210hp_sph\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HC_STATE_HALT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_hcd* (%struct.platform_device*, i64, i64, i8*, i32, i32)* @oxu_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_hcd* @oxu_create(%struct.platform_device* %0, i64 %1, i64 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.usb_hcd*, align 8
  %16 = alloca %struct.oxu_hcd*, align 8
  %17 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %14, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @OXU_OTG_CORE_OFFSET, align 4
  br label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @OXU_SPH_CORE_OFFSET, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %20, i64 %29
  %31 = load i32, i32* @OXU_USBMODE, align 4
  %32 = load i32, i32* @OXU_CM_HOST_ONLY, align 4
  %33 = load i32, i32* @OXU_ES_LITTLE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @OXU_VBPS, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @oxu_writel(i8* %30, i32 %31, i32 %36)
  %38 = load %struct.device*, %struct.device** %14, align 8
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)
  %43 = call %struct.usb_hcd* @usb_create_hcd(i32* @oxu_hc_driver, %struct.device* %38, i8* %42)
  store %struct.usb_hcd* %43, %struct.usb_hcd** %15, align 8
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %45 = icmp ne %struct.usb_hcd* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %27
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.usb_hcd* @ERR_PTR(i32 %48)
  store %struct.usb_hcd* %49, %struct.usb_hcd** %7, align 8
  br label %87

50:                                               ; preds = %27
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %53 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %56 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %59 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %62 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @HC_STATE_HALT, align 4
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %65 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %67 = call %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd* %66)
  store %struct.oxu_hcd* %67, %struct.oxu_hcd** %16, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.oxu_hcd*, %struct.oxu_hcd** %16, align 8
  %70 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @IRQF_SHARED, align 4
  %74 = call i32 @usb_add_hcd(%struct.usb_hcd* %71, i32 %72, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %50
  %78 = load i32, i32* %17, align 4
  %79 = call %struct.usb_hcd* @ERR_PTR(i32 %78)
  store %struct.usb_hcd* %79, %struct.usb_hcd** %7, align 8
  br label %87

80:                                               ; preds = %50
  %81 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %82 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @device_wakeup_enable(i32 %84)
  %86 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  store %struct.usb_hcd* %86, %struct.usb_hcd** %7, align 8
  br label %87

87:                                               ; preds = %80, %77, %46
  %88 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  ret %struct.usb_hcd* %88
}

declare dso_local i32 @oxu_writel(i8*, i32, i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, %struct.device*, i8*) #1

declare dso_local %struct.usb_hcd* @ERR_PTR(i32) #1

declare dso_local %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
