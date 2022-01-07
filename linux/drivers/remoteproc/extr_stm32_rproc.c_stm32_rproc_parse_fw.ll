; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_parse_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_parse_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.firmware = type { i32 }
%struct.of_phandle_iterator = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rproc_mem_entry = type { i32 }
%struct.reserved_mem = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to acquire memory-region\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"memory region not valid %pa\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"vdev0buffer\00", align 1
@stm32_rproc_mem_alloc = common dso_local global i32 0, align 4
@stm32_rproc_mem_release = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.firmware*)* @stm32_rproc_parse_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rproc_parse_fw(%struct.rproc* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.of_phandle_iterator, align 8
  %9 = alloca %struct.rproc_mem_entry*, align 8
  %10 = alloca %struct.reserved_mem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %13 = load %struct.rproc*, %struct.rproc** %4, align 8
  %14 = getelementptr inbounds %struct.rproc, %struct.rproc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %7, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = call i32 @of_phandle_iterator_init(%struct.of_phandle_iterator* %8, %struct.device_node* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  br label %22

22:                                               ; preds = %104, %2
  %23 = call i64 @of_phandle_iterator_next(%struct.of_phandle_iterator* %8)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %110

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %8, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call %struct.reserved_mem* @of_reserved_mem_lookup(%struct.TYPE_4__* %27)
  store %struct.reserved_mem* %28, %struct.reserved_mem** %10, align 8
  %29 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %30 = icmp ne %struct.reserved_mem* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %114

36:                                               ; preds = %25
  %37 = load %struct.rproc*, %struct.rproc** %4, align 8
  %38 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %39 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @stm32_rproc_pa_to_da(%struct.rproc* %37, i64 %40, i32* %11)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %46 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %45, i32 0, i32 0
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %114

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %8, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @strcmp(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %60 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %64 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @stm32_rproc_mem_alloc, align 4
  %68 = load i32, i32* @stm32_rproc_mem_release, align 4
  %69 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %8, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.rproc_mem_entry* @rproc_mem_entry_init(%struct.device* %58, i32* null, i32 %62, i32 %65, i32 %66, i32 %67, i32 %68, i32 %72)
  store %struct.rproc_mem_entry* %73, %struct.rproc_mem_entry** %9, align 8
  %74 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %9, align 8
  %75 = icmp ne %struct.rproc_mem_entry* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %57
  %77 = load %struct.rproc*, %struct.rproc** %4, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %80 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @rproc_coredump_add_segment(%struct.rproc* %77, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %76, %57
  br label %98

84:                                               ; preds = %50
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %88 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %91 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %8, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.rproc_mem_entry* @rproc_of_resm_mem_entry_init(%struct.device* %85, i32 %86, i32 %89, i64 %92, i32 %96)
  store %struct.rproc_mem_entry* %97, %struct.rproc_mem_entry** %9, align 8
  br label %98

98:                                               ; preds = %84, %83
  %99 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %9, align 8
  %100 = icmp ne %struct.rproc_mem_entry* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %114

104:                                              ; preds = %98
  %105 = load %struct.rproc*, %struct.rproc** %4, align 8
  %106 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %9, align 8
  %107 = call i32 @rproc_add_carveout(%struct.rproc* %105, %struct.rproc_mem_entry* %106)
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %22

110:                                              ; preds = %22
  %111 = load %struct.rproc*, %struct.rproc** %4, align 8
  %112 = load %struct.firmware*, %struct.firmware** %5, align 8
  %113 = call i32 @stm32_rproc_elf_load_rsc_table(%struct.rproc* %111, %struct.firmware* %112)
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %110, %101, %43, %31
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @of_phandle_iterator_init(%struct.of_phandle_iterator*, %struct.device_node*, i8*, i32*, i32) #1

declare dso_local i64 @of_phandle_iterator_next(%struct.of_phandle_iterator*) #1

declare dso_local %struct.reserved_mem* @of_reserved_mem_lookup(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @stm32_rproc_pa_to_da(%struct.rproc*, i64, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.rproc_mem_entry* @rproc_mem_entry_init(%struct.device*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rproc_coredump_add_segment(%struct.rproc*, i32, i32) #1

declare dso_local %struct.rproc_mem_entry* @rproc_of_resm_mem_entry_init(%struct.device*, i32, i32, i64, i32) #1

declare dso_local i32 @rproc_add_carveout(%struct.rproc*, %struct.rproc_mem_entry*) #1

declare dso_local i32 @stm32_rproc_elf_load_rsc_table(%struct.rproc*, %struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
