; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_probe_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_probe_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_bus_type = type { i32 (i8*, i8*)*, i32 }
%struct.xenbus_device = type { i32, i8*, i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@XEN_BUS_ID_SIZE = common dso_local global i32 0, align 4
@XenbusStateInitialising = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xenbus_dev_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_probe_node(%struct.xen_bus_type* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xen_bus_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xenbus_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xen_bus_type* %0, %struct.xen_bus_type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* @XEN_BUS_ID_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @xenbus_read_driver_state(i8* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @XenbusStateInitialising, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %110

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = add nsw i32 %28, 1
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 %29, %31
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = add i64 48, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.xenbus_device* @kzalloc(i32 %37, i32 %38)
  store %struct.xenbus_device* %39, %struct.xenbus_device** %11, align 8
  %40 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  %41 = icmp ne %struct.xenbus_device* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %26
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %110

45:                                               ; preds = %26
  %46 = load i32, i32* @XenbusStateInitialising, align 4
  %47 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  %48 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  %50 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %49, i64 1
  %51 = bitcast %struct.xenbus_device* %50 to i8*
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @strcpy(i8* %52, i8* %53)
  %55 = load i8*, i8** %13, align 8
  %56 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  %57 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = add nsw i32 %59, 1
  %61 = load i8*, i8** %13, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %13, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @strcpy(i8* %64, i8* %65)
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  %69 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  %71 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %70, i32 0, i32 4
  %72 = call i32 @init_completion(i32* %71)
  %73 = load %struct.xen_bus_type*, %struct.xen_bus_type** %5, align 8
  %74 = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %73, i32 0, i32 1
  %75 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  %76 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32* %74, i32** %77, align 8
  %78 = load i32, i32* @xenbus_dev_release, align 4
  %79 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  %80 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.xen_bus_type*, %struct.xen_bus_type** %5, align 8
  %83 = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %82, i32 0, i32 0
  %84 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %83, align 8
  %85 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  %86 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 %84(i8* %19, i8* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %45
  br label %106

92:                                               ; preds = %45
  %93 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  %94 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %93, i32 0, i32 3
  %95 = call i32 @dev_set_name(%struct.TYPE_4__* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  %96 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  %97 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %96, i32 0, i32 3
  %98 = call i32 @device_register(%struct.TYPE_4__* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  %103 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %102, i32 0, i32 3
  %104 = call i32 @put_device(%struct.TYPE_4__* %103)
  store %struct.xenbus_device* null, %struct.xenbus_device** %11, align 8
  br label %106

105:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %110

106:                                              ; preds = %101, %91
  %107 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  %108 = call i32 @kfree(%struct.xenbus_device* %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %110

110:                                              ; preds = %106, %105, %42, %25
  %111 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xenbus_read_driver_state(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.xenbus_device* @kzalloc(i32, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @init_completion(i32*) #2

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i8*) #2

declare dso_local i32 @device_register(%struct.TYPE_4__*) #2

declare dso_local i32 @put_device(%struct.TYPE_4__*) #2

declare dso_local i32 @kfree(%struct.xenbus_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
