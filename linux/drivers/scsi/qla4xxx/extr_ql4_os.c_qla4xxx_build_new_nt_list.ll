; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_build_new_nt_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_build_new_nt_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.list_head = type { i32 }
%struct.dev_db_entry = type { i32, i64 }
%struct.qla_ddb_index = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@MAX_DEV_DB_ENTRIES_40XX = common dso_local global i32 0, align 4
@MAX_DEV_DB_ENTRIES = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@DDB_DS_NO_CONNECTION_ACTIVE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Adding  DDB to session = 0x%x\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@RESET_ADAPTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.list_head*, i32)* @qla4xxx_build_new_nt_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_build_new_nt_list(%struct.scsi_qla_host* %0, %struct.list_head* %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dev_db_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.qla_ddb_index*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.dev_db_entry* @dma_pool_alloc(i32 %20, i32 %21, i32* %8)
  store %struct.dev_db_entry* %22, %struct.dev_db_entry** %7, align 8
  %23 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %24 = icmp eq %struct.dev_db_entry* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @KERN_ERR, align 4
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %28 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %26, %struct.scsi_qla_host* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @DEBUG2(i32 %28)
  br label %123

30:                                               ; preds = %3
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %32 = call i64 @is_qla40XX(%struct.scsi_qla_host* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @MAX_DEV_DB_ENTRIES_40XX, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @MAX_DEV_DB_ENTRIES, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %9, align 4
  store i32 8, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %120, %38
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %122

44:                                               ; preds = %40
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @qla4xxx_get_fwddb_entry(%struct.scsi_qla_host* %45, i32 %46, %struct.dev_db_entry* %47, i32 %48, i32* null, i32* %13, i32* %14, i32* %15, i32* null, i32* %16)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @QLA_ERROR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %122

54:                                               ; preds = %44
  %55 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %56 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call i64 @strlen(i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %115

62:                                               ; preds = %54
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @DDB_DS_NO_CONNECTION_ACTIVE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %115

67:                                               ; preds = %62
  %68 = load i32, i32* @KERN_INFO, align 4
  %69 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %68, %struct.scsi_qla_host* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = call i32 @DEBUG2(i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = call %struct.qla_ddb_index* @vmalloc(i32 %73)
  store %struct.qla_ddb_index* %74, %struct.qla_ddb_index** %17, align 8
  %75 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %17, align 8
  %76 = icmp ne %struct.qla_ddb_index* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %67
  br label %122

78:                                               ; preds = %67
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %17, align 8
  %81 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %83 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %84 = call i32 @qla4xxx_is_session_exists(%struct.scsi_qla_host* %82, %struct.dev_db_entry* %83, i32* null)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @QLA_SUCCESS, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %17, align 8
  %90 = call i32 @vfree(%struct.qla_ddb_index* %89)
  br label %115

91:                                               ; preds = %78
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @cpu_to_le16(i32 %96)
  %98 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %99 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %95, %91
  %101 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %17, align 8
  %102 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %101, i32 0, i32 1
  %103 = load %struct.list_head*, %struct.list_head** %5, align 8
  %104 = call i32 @list_add_tail(i32* %102, %struct.list_head* %103)
  %105 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %106 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %107 = load i32, i32* @RESET_ADAPTER, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @qla4xxx_sess_conn_setup(%struct.scsi_qla_host* %105, %struct.dev_db_entry* %106, i32 %107, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @QLA_ERROR, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %123

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114, %88, %66, %61
  %116 = load i32, i32* %13, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %122

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %12, align 4
  br label %40

122:                                              ; preds = %118, %77, %53, %40
  br label %123

123:                                              ; preds = %122, %113, %25
  %124 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %125 = icmp ne %struct.dev_db_entry* %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %128 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @dma_pool_free(i32 %129, %struct.dev_db_entry* %130, i32 %131)
  br label %133

133:                                              ; preds = %126, %123
  ret void
}

declare dso_local %struct.dev_db_entry* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_get_fwddb_entry(%struct.scsi_qla_host*, i32, %struct.dev_db_entry*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.qla_ddb_index* @vmalloc(i32) #1

declare dso_local i32 @qla4xxx_is_session_exists(%struct.scsi_qla_host*, %struct.dev_db_entry*, i32*) #1

declare dso_local i32 @vfree(%struct.qla_ddb_index*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @qla4xxx_sess_conn_setup(%struct.scsi_qla_host*, %struct.dev_db_entry*, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.dev_db_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
