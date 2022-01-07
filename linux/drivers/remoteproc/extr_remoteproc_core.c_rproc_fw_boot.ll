; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_fw_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_fw_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i8*, i32, i32*, i32*, i64, i32, %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Booting fw image %s, size %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"can't enable iommu: %d\0A\00", align 1
@rproc_loading_handlers = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to process resources: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to allocate associated carveouts: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.firmware*)* @rproc_fw_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_fw_boot(%struct.rproc* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %9 = load %struct.rproc*, %struct.rproc** %4, align 8
  %10 = getelementptr inbounds %struct.rproc, %struct.rproc* %9, i32 0, i32 6
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.rproc*, %struct.rproc** %4, align 8
  %12 = getelementptr inbounds %struct.rproc, %struct.rproc* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.rproc*, %struct.rproc** %4, align 8
  %15 = load %struct.firmware*, %struct.firmware** %5, align 8
  %16 = call i32 @rproc_fw_sanity_check(%struct.rproc* %14, %struct.firmware* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %95

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.firmware*, %struct.firmware** %5, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_info(%struct.device* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %26)
  %28 = load %struct.rproc*, %struct.rproc** %4, align 8
  %29 = call i32 @rproc_enable_iommu(%struct.rproc* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %95

37:                                               ; preds = %21
  %38 = load %struct.rproc*, %struct.rproc** %4, align 8
  %39 = load %struct.firmware*, %struct.firmware** %5, align 8
  %40 = call i32 @rproc_get_boot_addr(%struct.rproc* %38, %struct.firmware* %39)
  %41 = load %struct.rproc*, %struct.rproc** %4, align 8
  %42 = getelementptr inbounds %struct.rproc, %struct.rproc* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.rproc*, %struct.rproc** %4, align 8
  %44 = load %struct.firmware*, %struct.firmware** %5, align 8
  %45 = call i32 @rproc_parse_fw(%struct.rproc* %43, %struct.firmware* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %91

49:                                               ; preds = %37
  %50 = load %struct.rproc*, %struct.rproc** %4, align 8
  %51 = getelementptr inbounds %struct.rproc, %struct.rproc* %50, i32 0, i32 1
  store i32 -1, i32* %51, align 8
  %52 = load %struct.rproc*, %struct.rproc** %4, align 8
  %53 = getelementptr inbounds %struct.rproc, %struct.rproc* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.rproc*, %struct.rproc** %4, align 8
  %55 = load i32, i32* @rproc_loading_handlers, align 4
  %56 = call i32 @rproc_handle_resources(%struct.rproc* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %80

63:                                               ; preds = %49
  %64 = load %struct.rproc*, %struct.rproc** %4, align 8
  %65 = call i32 @rproc_alloc_registered_carveouts(%struct.rproc* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %80

72:                                               ; preds = %63
  %73 = load %struct.rproc*, %struct.rproc** %4, align 8
  %74 = load %struct.firmware*, %struct.firmware** %5, align 8
  %75 = call i32 @rproc_start(%struct.rproc* %73, %struct.firmware* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %80

79:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %95

80:                                               ; preds = %78, %68, %59
  %81 = load %struct.rproc*, %struct.rproc** %4, align 8
  %82 = call i32 @rproc_resource_cleanup(%struct.rproc* %81)
  %83 = load %struct.rproc*, %struct.rproc** %4, align 8
  %84 = getelementptr inbounds %struct.rproc, %struct.rproc* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @kfree(i32* %85)
  %87 = load %struct.rproc*, %struct.rproc** %4, align 8
  %88 = getelementptr inbounds %struct.rproc, %struct.rproc* %87, i32 0, i32 3
  store i32* null, i32** %88, align 8
  %89 = load %struct.rproc*, %struct.rproc** %4, align 8
  %90 = getelementptr inbounds %struct.rproc, %struct.rproc* %89, i32 0, i32 2
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %80, %48
  %92 = load %struct.rproc*, %struct.rproc** %4, align 8
  %93 = call i32 @rproc_disable_iommu(%struct.rproc* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %79, %32, %19
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @rproc_fw_sanity_check(%struct.rproc*, %struct.firmware*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @rproc_enable_iommu(%struct.rproc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @rproc_get_boot_addr(%struct.rproc*, %struct.firmware*) #1

declare dso_local i32 @rproc_parse_fw(%struct.rproc*, %struct.firmware*) #1

declare dso_local i32 @rproc_handle_resources(%struct.rproc*, i32) #1

declare dso_local i32 @rproc_alloc_registered_carveouts(%struct.rproc*) #1

declare dso_local i32 @rproc_start(%struct.rproc*, %struct.firmware*) #1

declare dso_local i32 @rproc_resource_cleanup(%struct.rproc*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @rproc_disable_iommu(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
