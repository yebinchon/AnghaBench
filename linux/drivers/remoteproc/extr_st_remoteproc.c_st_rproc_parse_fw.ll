; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_parse_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_parse_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.firmware = type { i32 }
%struct.rproc_mem_entry = type { i32 }
%struct.reserved_mem = type { i64, i32 }
%struct.of_phandle_iterator = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to acquire memory-region\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"vdev0buffer\00", align 1
@st_rproc_mem_alloc = common dso_local global i32 0, align 4
@st_rproc_mem_release = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.firmware*)* @st_rproc_parse_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rproc_parse_fw(%struct.rproc* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.rproc_mem_entry*, align 8
  %9 = alloca %struct.reserved_mem*, align 8
  %10 = alloca %struct.of_phandle_iterator, align 8
  %11 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %12 = load %struct.rproc*, %struct.rproc** %4, align 8
  %13 = getelementptr inbounds %struct.rproc, %struct.rproc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %7, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = call i32 @of_phandle_iterator_init(%struct.of_phandle_iterator* %10, %struct.device_node* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  br label %21

21:                                               ; preds = %81, %2
  %22 = call i64 @of_phandle_iterator_next(%struct.of_phandle_iterator* %10)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %10, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call %struct.reserved_mem* @of_reserved_mem_lookup(%struct.TYPE_4__* %26)
  store %struct.reserved_mem* %27, %struct.reserved_mem** %9, align 8
  %28 = load %struct.reserved_mem*, %struct.reserved_mem** %9, align 8
  %29 = icmp ne %struct.reserved_mem* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %91

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %10, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strcmp(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.reserved_mem*, %struct.reserved_mem** %9, align 8
  %45 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.reserved_mem*, %struct.reserved_mem** %9, align 8
  %49 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.reserved_mem*, %struct.reserved_mem** %9, align 8
  %52 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @st_rproc_mem_alloc, align 4
  %55 = load i32, i32* @st_rproc_mem_release, align 4
  %56 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %10, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.rproc_mem_entry* @rproc_mem_entry_init(%struct.device* %43, i32* null, i32 %47, i32 %50, i64 %53, i32 %54, i32 %55, i32 %59)
  store %struct.rproc_mem_entry* %60, %struct.rproc_mem_entry** %8, align 8
  br label %75

61:                                               ; preds = %35
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.reserved_mem*, %struct.reserved_mem** %9, align 8
  %65 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.reserved_mem*, %struct.reserved_mem** %9, align 8
  %68 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %10, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.rproc_mem_entry* @rproc_of_resm_mem_entry_init(%struct.device* %62, i32 %63, i32 %66, i64 %69, i32 %73)
  store %struct.rproc_mem_entry* %74, %struct.rproc_mem_entry** %8, align 8
  br label %75

75:                                               ; preds = %61, %42
  %76 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %8, align 8
  %77 = icmp ne %struct.rproc_mem_entry* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %91

81:                                               ; preds = %75
  %82 = load %struct.rproc*, %struct.rproc** %4, align 8
  %83 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %8, align 8
  %84 = call i32 @rproc_add_carveout(%struct.rproc* %82, %struct.rproc_mem_entry* %83)
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %21

87:                                               ; preds = %21
  %88 = load %struct.rproc*, %struct.rproc** %4, align 8
  %89 = load %struct.firmware*, %struct.firmware** %5, align 8
  %90 = call i32 @rproc_elf_load_rsc_table(%struct.rproc* %88, %struct.firmware* %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %78, %30
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @of_phandle_iterator_init(%struct.of_phandle_iterator*, %struct.device_node*, i8*, i32*, i32) #1

declare dso_local i64 @of_phandle_iterator_next(%struct.of_phandle_iterator*) #1

declare dso_local %struct.reserved_mem* @of_reserved_mem_lookup(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.rproc_mem_entry* @rproc_mem_entry_init(%struct.device*, i32*, i32, i32, i64, i32, i32, i32) #1

declare dso_local %struct.rproc_mem_entry* @rproc_of_resm_mem_entry_init(%struct.device*, i32, i32, i64, i32) #1

declare dso_local i32 @rproc_add_carveout(%struct.rproc*, %struct.rproc_mem_entry*) #1

declare dso_local i32 @rproc_elf_load_rsc_table(%struct.rproc*, %struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
