; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_init_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_init_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32* }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@dss = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dss_init_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_init_ports(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = icmp eq %struct.device_node* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call %struct.device_node* @omapdss_of_get_next_port(%struct.device_node* %18, %struct.device_node* null)
  store %struct.device_node* %19, %struct.device_node** %5, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %79

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dss, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %79

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %69, %29
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = call i32 @of_property_read_u32(%struct.device_node* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %9)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dss, i32 0, i32 0), align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %61

43:                                               ; preds = %36
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dss, i32 0, i32 0), align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %59 [
    i32 129, label %51
    i32 128, label %55
  ]

51:                                               ; preds = %43
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = call i32 @dpi_init_port(%struct.platform_device* %52, %struct.device_node* %53)
  store i32 %54, i32* %7, align 4
  br label %60

55:                                               ; preds = %43
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = call i32 @sdi_init_port(%struct.platform_device* %56, %struct.device_node* %57)
  store i32 %58, i32* %7, align 4
  br label %60

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %55, %51
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load %struct.device_node*, %struct.device_node** %4, align 8
  %66 = load %struct.device_node*, %struct.device_node** %5, align 8
  %67 = call %struct.device_node* @omapdss_of_get_next_port(%struct.device_node* %65, %struct.device_node* %66)
  store %struct.device_node* %67, %struct.device_node** %5, align 8
  %68 = icmp ne %struct.device_node* %67, null
  br label %69

69:                                               ; preds = %64, %61
  %70 = phi i1 [ false, %61 ], [ %68, %64 ]
  br i1 %70, label %30, label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i32 @dss_uninit_ports(%struct.platform_device* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %28, %22, %16
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.device_node* @omapdss_of_get_next_port(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dpi_init_port(%struct.platform_device*, %struct.device_node*) #1

declare dso_local i32 @sdi_init_port(%struct.platform_device*, %struct.device_node*) #1

declare dso_local i32 @dss_uninit_ports(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
