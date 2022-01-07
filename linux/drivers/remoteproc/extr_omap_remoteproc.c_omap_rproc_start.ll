; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_omap_remoteproc.c_omap_rproc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_omap_remoteproc.c_omap_rproc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, %struct.TYPE_3__, %struct.omap_rproc* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.omap_rproc = type { i32, %struct.mbox_client }
%struct.mbox_client = type { i32, i32, i32, i32*, %struct.device* }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.omap_rproc_pdata* }
%struct.omap_rproc_pdata = type { i32 (%struct.platform_device*)*, i32, i32 (i32)* }

@omap_rproc_mbox_callback = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"mbox_request_channel failed: %ld\0A\00", align 1
@RP_MBOX_ECHO_REQUEST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"mbox_send_message failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"omap_device_enable failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @omap_rproc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rproc_start(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.omap_rproc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.omap_rproc_pdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbox_client*, align 8
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %10 = load %struct.rproc*, %struct.rproc** %3, align 8
  %11 = getelementptr inbounds %struct.rproc, %struct.rproc* %10, i32 0, i32 2
  %12 = load %struct.omap_rproc*, %struct.omap_rproc** %11, align 8
  store %struct.omap_rproc* %12, %struct.omap_rproc** %4, align 8
  %13 = load %struct.rproc*, %struct.rproc** %3, align 8
  %14 = getelementptr inbounds %struct.rproc, %struct.rproc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.platform_device* @to_platform_device(%struct.device* %17)
  store %struct.platform_device* %18, %struct.platform_device** %6, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.omap_rproc_pdata*, %struct.omap_rproc_pdata** %21, align 8
  store %struct.omap_rproc_pdata* %22, %struct.omap_rproc_pdata** %7, align 8
  %23 = load %struct.omap_rproc*, %struct.omap_rproc** %4, align 8
  %24 = getelementptr inbounds %struct.omap_rproc, %struct.omap_rproc* %23, i32 0, i32 1
  store %struct.mbox_client* %24, %struct.mbox_client** %9, align 8
  %25 = load %struct.omap_rproc_pdata*, %struct.omap_rproc_pdata** %7, align 8
  %26 = getelementptr inbounds %struct.omap_rproc_pdata, %struct.omap_rproc_pdata* %25, i32 0, i32 2
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = icmp ne i32 (i32)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.omap_rproc_pdata*, %struct.omap_rproc_pdata** %7, align 8
  %31 = getelementptr inbounds %struct.omap_rproc_pdata, %struct.omap_rproc_pdata* %30, i32 0, i32 2
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.rproc*, %struct.rproc** %3, align 8
  %34 = getelementptr inbounds %struct.rproc, %struct.rproc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %32(i32 %35)
  br label %37

37:                                               ; preds = %29, %1
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load %struct.mbox_client*, %struct.mbox_client** %9, align 8
  %40 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %39, i32 0, i32 4
  store %struct.device* %38, %struct.device** %40, align 8
  %41 = load %struct.mbox_client*, %struct.mbox_client** %9, align 8
  %42 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %41, i32 0, i32 3
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* @omap_rproc_mbox_callback, align 4
  %44 = load %struct.mbox_client*, %struct.mbox_client** %9, align 8
  %45 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mbox_client*, %struct.mbox_client** %9, align 8
  %47 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.mbox_client*, %struct.mbox_client** %9, align 8
  %49 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.mbox_client*, %struct.mbox_client** %9, align 8
  %51 = load %struct.omap_rproc_pdata*, %struct.omap_rproc_pdata** %7, align 8
  %52 = getelementptr inbounds %struct.omap_rproc_pdata, %struct.omap_rproc_pdata* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @omap_mbox_request_channel(%struct.mbox_client* %50, i32 %53)
  %55 = load %struct.omap_rproc*, %struct.omap_rproc** %4, align 8
  %56 = getelementptr inbounds %struct.omap_rproc, %struct.omap_rproc* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.omap_rproc*, %struct.omap_rproc** %4, align 8
  %58 = getelementptr inbounds %struct.omap_rproc, %struct.omap_rproc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @IS_ERR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %37
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = load %struct.omap_rproc*, %struct.omap_rproc** %4, align 8
  %67 = getelementptr inbounds %struct.omap_rproc, %struct.omap_rproc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @PTR_ERR(i32 %68)
  %70 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %104

72:                                               ; preds = %37
  %73 = load %struct.omap_rproc*, %struct.omap_rproc** %4, align 8
  %74 = getelementptr inbounds %struct.omap_rproc, %struct.omap_rproc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* @RP_MBOX_ECHO_REQUEST, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @mbox_send_message(i32 %75, i8* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %98

85:                                               ; preds = %72
  %86 = load %struct.omap_rproc_pdata*, %struct.omap_rproc_pdata** %7, align 8
  %87 = getelementptr inbounds %struct.omap_rproc_pdata, %struct.omap_rproc_pdata* %86, i32 0, i32 0
  %88 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %87, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %90 = call i32 %88(%struct.platform_device* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %98

97:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %104

98:                                               ; preds = %93, %81
  %99 = load %struct.omap_rproc*, %struct.omap_rproc** %4, align 8
  %100 = getelementptr inbounds %struct.omap_rproc, %struct.omap_rproc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @mbox_free_channel(i32 %101)
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %98, %97, %62
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @omap_mbox_request_channel(%struct.mbox_client*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mbox_send_message(i32, i8*) #1

declare dso_local i32 @mbox_free_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
