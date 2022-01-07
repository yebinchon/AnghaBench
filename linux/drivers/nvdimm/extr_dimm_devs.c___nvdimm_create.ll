; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c___nvdimm_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c___nvdimm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { i64, i8*, i64, i64, i32, %struct.TYPE_2__, i32, %struct.device, i32, %struct.resource*, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i64, %struct.nvdimm_security_ops* }
%struct.device = type { %struct.attribute_group**, i32, i32*, i32* }
%struct.nvdimm_bus = type { i32 }
%struct.attribute_group = type { i32 }
%struct.resource = type { i32 }
%struct.nvdimm_security_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dimm_ida = common dso_local global i32 0, align 4
@noblk = common dso_local global i64 0, align 8
@NDD_NOBLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"nmem%d\00", align 1
@nvdimm_device_type = common dso_local global i32 0, align 4
@nvdimm_major = common dso_local global i32 0, align 4
@nvdimm_security_overwrite_query = common dso_local global i32 0, align 4
@NVDIMM_USER = common dso_local global i32 0, align 4
@NVDIMM_MASTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvdimm* @__nvdimm_create(%struct.nvdimm_bus* %0, i8* %1, %struct.attribute_group** %2, i64 %3, i64 %4, i32 %5, %struct.resource* %6, i8* %7, %struct.nvdimm_security_ops* %8) #0 {
  %10 = alloca %struct.nvdimm*, align 8
  %11 = alloca %struct.nvdimm_bus*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.attribute_group**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.resource*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.nvdimm_security_ops*, align 8
  %20 = alloca %struct.nvdimm*, align 8
  %21 = alloca %struct.device*, align 8
  store %struct.nvdimm_bus* %0, %struct.nvdimm_bus** %11, align 8
  store i8* %1, i8** %12, align 8
  store %struct.attribute_group** %2, %struct.attribute_group*** %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.resource* %6, %struct.resource** %17, align 8
  store i8* %7, i8** %18, align 8
  store %struct.nvdimm_security_ops* %8, %struct.nvdimm_security_ops** %19, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.nvdimm* @kzalloc(i32 136, i32 %22)
  store %struct.nvdimm* %23, %struct.nvdimm** %20, align 8
  %24 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %25 = icmp ne %struct.nvdimm* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %9
  store %struct.nvdimm* null, %struct.nvdimm** %10, align 8
  br label %119

27:                                               ; preds = %9
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i64 @ida_simple_get(i32* @dimm_ida, i32 0, i32 0, i32 %28)
  %30 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %31 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %33 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %38 = call i32 @kfree(%struct.nvdimm* %37)
  store %struct.nvdimm* null, %struct.nvdimm** %10, align 8
  br label %119

39:                                               ; preds = %27
  %40 = load i8*, i8** %18, align 8
  %41 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %42 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %45 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %44, i32 0, i32 10
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* @noblk, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i32, i32* @NDD_NOBLK, align 4
  %50 = shl i32 1, %49
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %14, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %48, %39
  %55 = load i64, i64* %14, align 8
  %56 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %57 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %60 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %63 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.resource*, %struct.resource** %17, align 8
  %65 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %66 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %65, i32 0, i32 9
  store %struct.resource* %64, %struct.resource** %66, align 8
  %67 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %68 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %67, i32 0, i32 8
  %69 = call i32 @atomic_set(i32* %68, i32 0)
  %70 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %71 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %70, i32 0, i32 7
  store %struct.device* %71, %struct.device** %21, align 8
  %72 = load %struct.device*, %struct.device** %21, align 8
  %73 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %74 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @dev_set_name(%struct.device* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %11, align 8
  %78 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %77, i32 0, i32 0
  %79 = load %struct.device*, %struct.device** %21, align 8
  %80 = getelementptr inbounds %struct.device, %struct.device* %79, i32 0, i32 3
  store i32* %78, i32** %80, align 8
  %81 = load %struct.device*, %struct.device** %21, align 8
  %82 = getelementptr inbounds %struct.device, %struct.device* %81, i32 0, i32 2
  store i32* @nvdimm_device_type, i32** %82, align 8
  %83 = load i32, i32* @nvdimm_major, align 4
  %84 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %85 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @MKDEV(i32 %83, i64 %86)
  %88 = load %struct.device*, %struct.device** %21, align 8
  %89 = getelementptr inbounds %struct.device, %struct.device* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.attribute_group**, %struct.attribute_group*** %13, align 8
  %91 = load %struct.device*, %struct.device** %21, align 8
  %92 = getelementptr inbounds %struct.device, %struct.device* %91, i32 0, i32 0
  store %struct.attribute_group** %90, %struct.attribute_group*** %92, align 8
  %93 = load %struct.nvdimm_security_ops*, %struct.nvdimm_security_ops** %19, align 8
  %94 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %95 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store %struct.nvdimm_security_ops* %93, %struct.nvdimm_security_ops** %96, align 8
  %97 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %98 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %101 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %100, i32 0, i32 6
  %102 = load i32, i32* @nvdimm_security_overwrite_query, align 4
  %103 = call i32 @INIT_DELAYED_WORK(i32* %101, i32 %102)
  %104 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %105 = load i32, i32* @NVDIMM_USER, align 4
  %106 = call i8* @nvdimm_security_flags(%struct.nvdimm* %104, i32 %105)
  %107 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %108 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  %110 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %111 = load i32, i32* @NVDIMM_MASTER, align 4
  %112 = call i8* @nvdimm_security_flags(%struct.nvdimm* %110, i32 %111)
  %113 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  %114 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i8* %112, i8** %115, align 8
  %116 = load %struct.device*, %struct.device** %21, align 8
  %117 = call i32 @nd_device_register(%struct.device* %116)
  %118 = load %struct.nvdimm*, %struct.nvdimm** %20, align 8
  store %struct.nvdimm* %118, %struct.nvdimm** %10, align 8
  br label %119

119:                                              ; preds = %54, %36, %26
  %120 = load %struct.nvdimm*, %struct.nvdimm** %10, align 8
  ret %struct.nvdimm* %120
}

declare dso_local %struct.nvdimm* @kzalloc(i32, i32) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nvdimm*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i64) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i8* @nvdimm_security_flags(%struct.nvdimm*, i32) #1

declare dso_local i32 @nd_device_register(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
