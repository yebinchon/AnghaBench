; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ti,invert-polarity\00", align 1
@venc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ti,channels\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to read property 'ti,channels': %d\0A\00", align 1
@OMAP_DSS_VENC_TYPE_COMPOSITE = common dso_local global i32 0, align 4
@OMAP_DSS_VENC_TYPE_SVIDEO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"bad channel propert '%d'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @venc_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_probe_of(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = call %struct.device_node* @omapdss_of_get_first_endpoint(%struct.device_node* %12)
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call i32 @of_property_read_bool(%struct.device_node* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @venc, i32 0, i32 1), align 4
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_err(%struct.TYPE_4__* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  br label %45

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %35 [
    i32 1, label %31
    i32 2, label %33
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @OMAP_DSS_VENC_TYPE_COMPOSITE, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @venc, i32 0, i32 0), align 4
  br label %42

33:                                               ; preds = %29
  %34 = load i32, i32* @OMAP_DSS_VENC_TYPE_SVIDEO, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @venc, i32 0, i32 0), align 4
  br label %42

35:                                               ; preds = %29
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @dev_err(%struct.TYPE_4__* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %45

42:                                               ; preds = %33, %31
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = call i32 @of_node_put(%struct.device_node* %43)
  store i32 0, i32* %2, align 4
  br label %48

45:                                               ; preds = %35, %24
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call i32 @of_node_put(%struct.device_node* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %42, %16
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.device_node* @omapdss_of_get_first_endpoint(%struct.device_node*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
