; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_build_st_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_build_st_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.list_head = type { i32 }
%struct.qla_ddb_index = type { i32, i32, i32 }
%struct.dev_db_entry = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@MAX_DEV_DB_ENTRIES_40XX = common dso_local global i32 0, align 4
@MAX_DEV_DB_ENTRIES = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@DDB_DS_UNASSIGNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"No flash entry for ST at idx [%d]\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"ST at idx [%d] is stored at flash [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.list_head*)* @qla4xxx_build_st_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_build_st_list(%struct.scsi_qla_host* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.qla_ddb_index*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dev_db_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.dev_db_entry* @dma_pool_alloc(i32 %19, i32 %20, i32* %9)
  store %struct.dev_db_entry* %21, %struct.dev_db_entry** %8, align 8
  %22 = load %struct.dev_db_entry*, %struct.dev_db_entry** %8, align 8
  %23 = icmp eq %struct.dev_db_entry* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* @KERN_ERR, align 4
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %27 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %25, %struct.scsi_qla_host* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @DEBUG2(i32 %27)
  br label %113

29:                                               ; preds = %2
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %31 = call i64 @is_qla40XX(%struct.scsi_qla_host* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @MAX_DEV_DB_ENTRIES_40XX, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @MAX_DEV_DB_ENTRIES, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %6, align 4
  store i32 12, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %110, %37
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %112

43:                                               ; preds = %39
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.dev_db_entry*, %struct.dev_db_entry** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @qla4xxx_get_fwddb_entry(%struct.scsi_qla_host* %44, i32 %45, %struct.dev_db_entry* %46, i32 %47, i32* null, i32* %12, i32* %13, i32* %14, i32* null, i32* %16)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @QLA_ERROR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %112

53:                                               ; preds = %43
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @DDB_DS_UNASSIGNED, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %105

58:                                               ; preds = %53
  %59 = load %struct.dev_db_entry*, %struct.dev_db_entry** %8, align 8
  %60 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i64 @strlen(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %105

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = call %struct.qla_ddb_index* @vzalloc(i32 %67)
  store %struct.qla_ddb_index* %68, %struct.qla_ddb_index** %5, align 8
  %69 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %5, align 8
  %70 = icmp ne %struct.qla_ddb_index* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %112

72:                                               ; preds = %66
  %73 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %74 = load %struct.dev_db_entry*, %struct.dev_db_entry** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @qla4xxx_find_flash_st_idx(%struct.scsi_qla_host* %73, %struct.dev_db_entry* %74, i32 %75, i32* %15)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @QLA_ERROR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load i32, i32* @KERN_ERR, align 4
  %82 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %81, %struct.scsi_qla_host* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %5, align 8
  %87 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %97

88:                                               ; preds = %72
  %89 = load i32, i32* @KERN_INFO, align 4
  %90 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %89, %struct.scsi_qla_host* %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %5, align 8
  %96 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %88, %80
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %5, align 8
  %100 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %5, align 8
  %102 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %101, i32 0, i32 2
  %103 = load %struct.list_head*, %struct.list_head** %4, align 8
  %104 = call i32 @list_add_tail(i32* %102, %struct.list_head* %103)
  br label %105

105:                                              ; preds = %97, %65, %57
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %112

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %11, align 4
  br label %39

112:                                              ; preds = %108, %71, %52, %39
  br label %113

113:                                              ; preds = %112, %24
  %114 = load %struct.dev_db_entry*, %struct.dev_db_entry** %8, align 8
  %115 = icmp ne %struct.dev_db_entry* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %118 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dev_db_entry*, %struct.dev_db_entry** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @dma_pool_free(i32 %119, %struct.dev_db_entry* %120, i32 %121)
  br label %123

123:                                              ; preds = %116, %113
  ret void
}

declare dso_local %struct.dev_db_entry* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_get_fwddb_entry(%struct.scsi_qla_host*, i32, %struct.dev_db_entry*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.qla_ddb_index* @vzalloc(i32) #1

declare dso_local i32 @qla4xxx_find_flash_st_idx(%struct.scsi_qla_host*, %struct.dev_db_entry*, i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.dev_db_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
