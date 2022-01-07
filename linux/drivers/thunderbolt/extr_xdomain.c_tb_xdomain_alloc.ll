; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdomain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdomain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_xdomain = type { i32, %struct.tb_xdomain*, %struct.TYPE_6__, i8*, i32, i32, i32, i32, i32, i32, %struct.tb* }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32 }
%struct.tb = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@tb_xdomain_get_uuid = common dso_local global i32 0, align 4
@tb_xdomain_get_properties = common dso_local global i32 0, align 4
@tb_xdomain_properties_changed = common dso_local global i32 0, align 4
@tb_bus_type = common dso_local global i32 0, align 4
@tb_xdomain_type = common dso_local global i32 0, align 4
@xdomain_attr_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%u-%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_xdomain* @tb_xdomain_alloc(%struct.tb* %0, %struct.device* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.tb_xdomain*, align 8
  %7 = alloca %struct.tb*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.tb_xdomain*, align 8
  store %struct.tb* %0, %struct.tb** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.tb_xdomain* @kzalloc(i32 88, i32 %13)
  store %struct.tb_xdomain* %14, %struct.tb_xdomain** %12, align 8
  %15 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %16 = icmp ne %struct.tb_xdomain* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.tb_xdomain* null, %struct.tb_xdomain** %6, align 8
  br label %116

18:                                               ; preds = %5
  %19 = load %struct.tb*, %struct.tb** %7, align 8
  %20 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %21 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %20, i32 0, i32 10
  store %struct.tb* %19, %struct.tb** %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %24 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %26 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %25, i32 0, i32 8
  %27 = call i32 @ida_init(i32* %26)
  %28 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %29 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %28, i32 0, i32 7
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %32 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %31, i32 0, i32 6
  %33 = load i32, i32* @tb_xdomain_get_uuid, align 4
  %34 = call i32 @INIT_DELAYED_WORK(i32* %32, i32 %33)
  %35 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %36 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %35, i32 0, i32 5
  %37 = load i32, i32* @tb_xdomain_get_properties, align 4
  %38 = call i32 @INIT_DELAYED_WORK(i32* %36, i32 %37)
  %39 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %40 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %39, i32 0, i32 4
  %41 = load i32, i32* @tb_xdomain_properties_changed, align 4
  %42 = call i32 @INIT_DELAYED_WORK(i32* %40, i32 %41)
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kmemdup(i32* %43, i32 4, i32 %44)
  %46 = bitcast i8* %45 to %struct.tb_xdomain*
  %47 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %48 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %47, i32 0, i32 1
  store %struct.tb_xdomain* %46, %struct.tb_xdomain** %48, align 8
  %49 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %50 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %49, i32 0, i32 1
  %51 = load %struct.tb_xdomain*, %struct.tb_xdomain** %50, align 8
  %52 = icmp ne %struct.tb_xdomain* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %18
  br label %113

54:                                               ; preds = %18
  %55 = load i32*, i32** %11, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kmemdup(i32* %58, i32 4, i32 %59)
  %61 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %62 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %64 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %57
  br label %108

68:                                               ; preds = %57
  br label %72

69:                                               ; preds = %54
  %70 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %71 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %68
  %73 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %74 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %73, i32 0, i32 2
  %75 = call i32 @device_initialize(%struct.TYPE_6__* %74)
  %76 = load %struct.device*, %struct.device** %8, align 8
  %77 = call i32 @get_device(%struct.device* %76)
  %78 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %79 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 8
  %81 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %82 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store i32* @tb_bus_type, i32** %83, align 8
  %84 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %85 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32* @tb_xdomain_type, i32** %86, align 8
  %87 = load i32, i32* @xdomain_attr_groups, align 4
  %88 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %89 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %92 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %91, i32 0, i32 2
  %93 = load %struct.tb*, %struct.tb** %7, align 8
  %94 = getelementptr inbounds %struct.tb, %struct.tb* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @dev_set_name(%struct.TYPE_6__* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %99 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %98, i32 0, i32 2
  %100 = call i32 @pm_runtime_set_active(%struct.TYPE_6__* %99)
  %101 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %102 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %101, i32 0, i32 2
  %103 = call i32 @pm_runtime_get_noresume(%struct.TYPE_6__* %102)
  %104 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %105 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %104, i32 0, i32 2
  %106 = call i32 @pm_runtime_enable(%struct.TYPE_6__* %105)
  %107 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  store %struct.tb_xdomain* %107, %struct.tb_xdomain** %6, align 8
  br label %116

108:                                              ; preds = %67
  %109 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %110 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %109, i32 0, i32 1
  %111 = load %struct.tb_xdomain*, %struct.tb_xdomain** %110, align 8
  %112 = call i32 @kfree(%struct.tb_xdomain* %111)
  br label %113

113:                                              ; preds = %108, %53
  %114 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  %115 = call i32 @kfree(%struct.tb_xdomain* %114)
  store %struct.tb_xdomain* null, %struct.tb_xdomain** %6, align 8
  br label %116

116:                                              ; preds = %113, %72, %17
  %117 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  ret %struct.tb_xdomain* %117
}

declare dso_local %struct.tb_xdomain* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i8* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.tb_xdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
