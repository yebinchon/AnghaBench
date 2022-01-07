; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xilinxfb.c_xilinxfb_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xilinxfb.c_xilinxfb_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinxfb_platform_data = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xilinxfb_drvdata = type { i32, i32, i32 }

@xilinx_fb_default_pdata = common dso_local global %struct.xilinxfb_platform_data zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"xlnx,dcr-splb-slave-if\00", align 1
@BUS_ACCESS_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"phys-size\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"virtual-resolution\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"rotate-display\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xilinxfb_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinxfb_of_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xilinxfb_platform_data, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xilinxfb_drvdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i64 0, i64* %5, align 8
  %9 = bitcast %struct.xilinxfb_platform_data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.xilinxfb_platform_data* @xilinx_fb_default_pdata to i8*), i64 56, i1 false)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.xilinxfb_drvdata* @devm_kzalloc(%struct.TYPE_4__* %11, i32 12, i32 %12)
  store %struct.xilinxfb_drvdata* %13, %struct.xilinxfb_drvdata** %8, align 8
  %14 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %8, align 8
  %15 = icmp ne %struct.xilinxfb_drvdata* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %113

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @of_property_read_u32(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64* %5)
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i32, i32* @BUS_ACCESS_FLAG, align 4
  %29 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %8, align 8
  %30 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %19
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64* @of_get_property(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  store i64* %38, i64** %4, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp uge i64 %43, 16
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i64*, i64** %4, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.xilinxfb_platform_data, %struct.xilinxfb_platform_data* %6, i32 0, i32 6
  store i64 %48, i64* %49, align 8
  %50 = load i64*, i64** %4, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.xilinxfb_platform_data, %struct.xilinxfb_platform_data* %6, i32 0, i32 5
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %45, %41, %33
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64* @of_get_property(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  store i64* %59, i64** %4, align 8
  %60 = load i64*, i64** %4, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp uge i64 %64, 16
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i64*, i64** %4, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.xilinxfb_platform_data, %struct.xilinxfb_platform_data* %6, i32 0, i32 4
  store i64 %69, i64* %70, align 8
  %71 = load i64*, i64** %4, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.xilinxfb_platform_data, %struct.xilinxfb_platform_data* %6, i32 0, i32 3
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %66, %62, %54
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64* @of_get_property(i32 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  store i64* %80, i64** %4, align 8
  %81 = load i64*, i64** %4, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %75
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp uge i64 %85, 16
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i64*, i64** %4, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.xilinxfb_platform_data, %struct.xilinxfb_platform_data* %6, i32 0, i32 2
  store i64 %90, i64* %91, align 8
  %92 = load i64*, i64** %4, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.xilinxfb_platform_data, %struct.xilinxfb_platform_data* %6, i32 0, i32 1
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %87, %83, %75
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @of_find_property(i32 %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.xilinxfb_platform_data, %struct.xilinxfb_platform_data* %6, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %103, %96
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %8, align 8
  %109 = call i32 @dev_set_drvdata(%struct.TYPE_4__* %107, %struct.xilinxfb_drvdata* %108)
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %8, align 8
  %112 = call i32 @xilinxfb_assign(%struct.platform_device* %110, %struct.xilinxfb_drvdata* %111, %struct.xilinxfb_platform_data* %6)
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %105, %16
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.xilinxfb_drvdata* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @of_property_read_u32(i32, i8*, i64*) #2

declare dso_local i64* @of_get_property(i32, i8*, i32*) #2

declare dso_local i64 @of_find_property(i32, i8*, i32*) #2

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_4__*, %struct.xilinxfb_drvdata*) #2

declare dso_local i32 @xilinxfb_assign(%struct.platform_device*, %struct.xilinxfb_drvdata*, %struct.xilinxfb_platform_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
