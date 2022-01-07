; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_handle_devmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_handle_devmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.fw_rsc_devmem = type { i32, i32, i32, i32, i64 }
%struct.rproc_mem_entry = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"devmem rsc is truncated\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"devmem rsc has non zero reserved bytes\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to map devmem: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"mapped devmem pa 0x%x, da 0x%x, len 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.fw_rsc_devmem*, i32, i32)* @rproc_handle_devmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_handle_devmem(%struct.rproc* %0, %struct.fw_rsc_devmem* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rproc*, align 8
  %7 = alloca %struct.fw_rsc_devmem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rproc_mem_entry*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %6, align 8
  store %struct.fw_rsc_devmem* %1, %struct.fw_rsc_devmem** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.rproc*, %struct.rproc** %6, align 8
  %14 = getelementptr inbounds %struct.rproc, %struct.rproc* %13, i32 0, i32 2
  store %struct.device* %14, %struct.device** %11, align 8
  %15 = load %struct.rproc*, %struct.rproc** %6, align 8
  %16 = getelementptr inbounds %struct.rproc, %struct.rproc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %103

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 24, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.device*, %struct.device** %11, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %103

31:                                               ; preds = %22
  %32 = load %struct.fw_rsc_devmem*, %struct.fw_rsc_devmem** %7, align 8
  %33 = getelementptr inbounds %struct.fw_rsc_devmem, %struct.fw_rsc_devmem* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %11, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %103

41:                                               ; preds = %31
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.rproc_mem_entry* @kzalloc(i32 12, i32 %42)
  store %struct.rproc_mem_entry* %43, %struct.rproc_mem_entry** %10, align 8
  %44 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %45 = icmp ne %struct.rproc_mem_entry* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %103

49:                                               ; preds = %41
  %50 = load %struct.rproc*, %struct.rproc** %6, align 8
  %51 = getelementptr inbounds %struct.rproc, %struct.rproc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fw_rsc_devmem*, %struct.fw_rsc_devmem** %7, align 8
  %54 = getelementptr inbounds %struct.fw_rsc_devmem, %struct.fw_rsc_devmem* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.fw_rsc_devmem*, %struct.fw_rsc_devmem** %7, align 8
  %57 = getelementptr inbounds %struct.fw_rsc_devmem, %struct.fw_rsc_devmem* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.fw_rsc_devmem*, %struct.fw_rsc_devmem** %7, align 8
  %60 = getelementptr inbounds %struct.fw_rsc_devmem, %struct.fw_rsc_devmem* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.fw_rsc_devmem*, %struct.fw_rsc_devmem** %7, align 8
  %63 = getelementptr inbounds %struct.fw_rsc_devmem, %struct.fw_rsc_devmem* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @iommu_map(i32 %52, i32 %55, i32 %58, i32 %61, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %49
  %69 = load %struct.device*, %struct.device** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %99

72:                                               ; preds = %49
  %73 = load %struct.fw_rsc_devmem*, %struct.fw_rsc_devmem** %7, align 8
  %74 = getelementptr inbounds %struct.fw_rsc_devmem, %struct.fw_rsc_devmem* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %77 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.fw_rsc_devmem*, %struct.fw_rsc_devmem** %7, align 8
  %79 = getelementptr inbounds %struct.fw_rsc_devmem, %struct.fw_rsc_devmem* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %82 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %84 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %83, i32 0, i32 0
  %85 = load %struct.rproc*, %struct.rproc** %6, align 8
  %86 = getelementptr inbounds %struct.rproc, %struct.rproc* %85, i32 0, i32 0
  %87 = call i32 @list_add_tail(i32* %84, i32* %86)
  %88 = load %struct.device*, %struct.device** %11, align 8
  %89 = load %struct.fw_rsc_devmem*, %struct.fw_rsc_devmem** %7, align 8
  %90 = getelementptr inbounds %struct.fw_rsc_devmem, %struct.fw_rsc_devmem* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.fw_rsc_devmem*, %struct.fw_rsc_devmem** %7, align 8
  %93 = getelementptr inbounds %struct.fw_rsc_devmem, %struct.fw_rsc_devmem* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.fw_rsc_devmem*, %struct.fw_rsc_devmem** %7, align 8
  %96 = getelementptr inbounds %struct.fw_rsc_devmem, %struct.fw_rsc_devmem* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_dbg(%struct.device* %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %94, i32 %97)
  store i32 0, i32* %5, align 4
  br label %103

99:                                               ; preds = %68
  %100 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %10, align 8
  %101 = call i32 @kfree(%struct.rproc_mem_entry* %100)
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %72, %46, %36, %26, %19
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.rproc_mem_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @iommu_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.rproc_mem_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
