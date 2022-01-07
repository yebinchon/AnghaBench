; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_handle_carveout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_handle_carveout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.device }
%struct.device = type { i32 }
%struct.fw_rsc_carveout = type { i32, i32, i32, i32, i32, i64 }
%struct.rproc_mem_entry = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"carveout rsc is truncated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"carveout rsc has non zero reserved bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"carveout rsc: name: %s, da 0x%x, pa 0x%x, len 0x%x, flags 0x%x\0A\00", align 1
@FW_RSC_ADDR_ANY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Carveout already associated to resource table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@rproc_alloc_carveout = common dso_local global i32 0, align 4
@rproc_release_carveout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Can't allocate memory entry structure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.fw_rsc_carveout*, i32, i32)* @rproc_handle_carveout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_handle_carveout(%struct.rproc* %0, %struct.fw_rsc_carveout* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rproc*, align 8
  %7 = alloca %struct.fw_rsc_carveout*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rproc_mem_entry*, align 8
  %11 = alloca %struct.device*, align 8
  store %struct.rproc* %0, %struct.rproc** %6, align 8
  store %struct.fw_rsc_carveout* %1, %struct.fw_rsc_carveout** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.rproc*, %struct.rproc** %6, align 8
  %13 = getelementptr inbounds %struct.rproc, %struct.rproc* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ugt i64 32, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.device*, %struct.device** %11, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %124

22:                                               ; preds = %4
  %23 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %24 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %11, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %124

32:                                               ; preds = %22
  %33 = load %struct.device*, %struct.device** %11, align 8
  %34 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %35 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %38 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %41 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %44 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %47 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.rproc*, %struct.rproc** %6, align 8
  %51 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %52 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.rproc_mem_entry* @rproc_find_carveout_by_name(%struct.rproc* %50, i32 %53)
  store %struct.rproc_mem_entry* %54, %struct.rproc_mem_entry** %10, align 8
  %55 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %56 = icmp ne %struct.rproc_mem_entry* %55, null
  br i1 %56, label %57, label %91

57:                                               ; preds = %32
  %58 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %59 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FW_RSC_ADDR_ANY, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.device*, %struct.device** %11, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %124

68:                                               ; preds = %57
  %69 = load %struct.rproc*, %struct.rproc** %6, align 8
  %70 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %71 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %72 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %75 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @rproc_check_carveout_da(%struct.rproc* %69, %struct.rproc_mem_entry* %70, i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %124

82:                                               ; preds = %68
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %85 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %87 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %90 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %5, align 4
  br label %124

91:                                               ; preds = %32
  %92 = load %struct.device*, %struct.device** %11, align 8
  %93 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %94 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %97 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @rproc_alloc_carveout, align 4
  %100 = load i32, i32* @rproc_release_carveout, align 4
  %101 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %102 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.rproc_mem_entry* @rproc_mem_entry_init(%struct.device* %92, i32 0, i32 0, i32 %95, i32 %98, i32 %99, i32 %100, i32 %103)
  store %struct.rproc_mem_entry* %104, %struct.rproc_mem_entry** %10, align 8
  %105 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %106 = icmp ne %struct.rproc_mem_entry* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %91
  %108 = load %struct.device*, %struct.device** %11, align 8
  %109 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %124

112:                                              ; preds = %91
  %113 = load %struct.fw_rsc_carveout*, %struct.fw_rsc_carveout** %7, align 8
  %114 = getelementptr inbounds %struct.fw_rsc_carveout, %struct.fw_rsc_carveout* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %117 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %120 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.rproc*, %struct.rproc** %6, align 8
  %122 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %123 = call i32 @rproc_add_carveout(%struct.rproc* %121, %struct.rproc_mem_entry* %122)
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %112, %107, %82, %79, %63, %27, %17
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.rproc_mem_entry* @rproc_find_carveout_by_name(%struct.rproc*, i32) #1

declare dso_local i64 @rproc_check_carveout_da(%struct.rproc*, %struct.rproc_mem_entry*, i32, i32) #1

declare dso_local %struct.rproc_mem_entry* @rproc_mem_entry_init(%struct.device*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rproc_add_carveout(%struct.rproc*, %struct.rproc_mem_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
