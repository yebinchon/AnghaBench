; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_build_nt_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_build_nt_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.list_head = type { i32 }
%struct.dev_db_entry = type { %struct.dev_db_entry*, i32, i64 }
%struct.ddb_entry = type { i32 }
%struct.qla_ddb_index = type { i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@MAX_DEV_DB_ENTRIES_40XX = common dso_local global i32 0, align 4
@MAX_DEV_DB_ENTRIES = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@DDB_DS_NO_CONNECTION_ACTIVE = common dso_local global i32 0, align 4
@DDB_DS_SESSION_FAILED = common dso_local global i32 0, align 4
@INIT_ADAPTER = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Adding  DDB to session = 0x%x\0A\00", align 1
@RESET_ADAPTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.list_head*, %struct.list_head*, i32)* @qla4xxx_build_nt_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_build_nt_list(%struct.scsi_qla_host* %0, %struct.list_head* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dev_db_entry*, align 8
  %10 = alloca %struct.ddb_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.qla_ddb_index*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.ddb_entry* null, %struct.ddb_entry** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.dev_db_entry* @dma_pool_alloc(i32 %25, i32 %26, i32* %11)
  store %struct.dev_db_entry* %27, %struct.dev_db_entry** %9, align 8
  %28 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %29 = icmp eq %struct.dev_db_entry* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %33 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %31, %struct.scsi_qla_host* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @DEBUG2(i32 %33)
  br label %191

35:                                               ; preds = %4
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %37 = call i64 @is_qla40XX(%struct.scsi_qla_host* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @MAX_DEV_DB_ENTRIES_40XX, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @MAX_DEV_DB_ENTRIES, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %12, align 4
  store i32 24, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %188, %43
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %190

49:                                               ; preds = %45
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @qla4xxx_get_fwddb_entry(%struct.scsi_qla_host* %50, i32 %51, %struct.dev_db_entry* %52, i32 %53, i32* null, i32* %16, i32* %17, i32* %18, i32* null, i32* %20)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @QLA_ERROR, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %190

59:                                               ; preds = %49
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @qla4xxx_verify_boot_idx(%struct.scsi_qla_host* %60, i32 %61)
  %63 = load i32, i32* @QLA_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %183

66:                                               ; preds = %59
  %67 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %68 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i64 @strlen(i8* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %183

74:                                               ; preds = %66
  %75 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %76 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @le16_to_cpu(i32 %77)
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %84 = load %struct.list_head*, %struct.list_head** %7, align 8
  %85 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %86 = call i32 @qla4xxx_update_fw_ddb_link(%struct.scsi_qla_host* %83, %struct.list_head* %84, %struct.dev_db_entry* %85)
  br label %87

87:                                               ; preds = %82, %74
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* @DDB_DS_NO_CONNECTION_ACTIVE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %100, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* @DDB_DS_SESSION_FAILED, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @INIT_ADAPTER, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %183

100:                                              ; preds = %95, %91, %87
  %101 = load i32, i32* @KERN_INFO, align 4
  %102 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %101, %struct.scsi_qla_host* %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = call i32 @DEBUG2(i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @INIT_ADAPTER, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %100
  %110 = load i32, i32* %13, align 4
  %111 = call %struct.qla_ddb_index* @vmalloc(i32 %110)
  store %struct.qla_ddb_index* %111, %struct.qla_ddb_index** %22, align 8
  %112 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %22, align 8
  %113 = icmp ne %struct.qla_ddb_index* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  br label %190

115:                                              ; preds = %109
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %22, align 8
  %118 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %22, align 8
  %120 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %124 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %123, i32 0, i32 0
  %125 = load %struct.dev_db_entry*, %struct.dev_db_entry** %124, align 8
  %126 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %125, i64 0
  %127 = call i32 @memcpy(i32* %122, %struct.dev_db_entry* %126, i32 8)
  %128 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %129 = load %struct.list_head*, %struct.list_head** %6, align 8
  %130 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %131 = call i32 @qla4xxx_is_flash_ddb_exists(%struct.scsi_qla_host* %128, %struct.list_head* %129, %struct.dev_db_entry* %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @QLA_SUCCESS, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %115
  %136 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %22, align 8
  %137 = call i32 @vfree(%struct.qla_ddb_index* %136)
  br label %183

138:                                              ; preds = %115
  %139 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %22, align 8
  %140 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %139, i32 0, i32 2
  %141 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %142 = call i32 @memcpy(i32* %140, %struct.dev_db_entry* %141, i32 24)
  %143 = load %struct.qla_ddb_index*, %struct.qla_ddb_index** %22, align 8
  %144 = getelementptr inbounds %struct.qla_ddb_index, %struct.qla_ddb_index* %143, i32 0, i32 1
  %145 = load %struct.list_head*, %struct.list_head** %6, align 8
  %146 = call i32 @list_add_tail(i32* %144, %struct.list_head* %145)
  br label %172

147:                                              ; preds = %100
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @RESET_ADAPTER, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %147
  %152 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %153 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %154 = call i32 @qla4xxx_is_session_exists(%struct.scsi_qla_host* %152, %struct.dev_db_entry* %153, i32* %19)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @QLA_SUCCESS, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %151
  %159 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %160 = load i32, i32* %19, align 4
  %161 = call %struct.ddb_entry* @qla4xxx_lookup_ddb_by_fw_index(%struct.scsi_qla_host* %159, i32 %160)
  store %struct.ddb_entry* %161, %struct.ddb_entry** %10, align 8
  %162 = load %struct.ddb_entry*, %struct.ddb_entry** %10, align 8
  %163 = icmp ne %struct.ddb_entry* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %158
  %165 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %166 = load %struct.ddb_entry*, %struct.ddb_entry** %10, align 8
  %167 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %168 = call i32 @qla4xxx_update_sess_disc_idx(%struct.scsi_qla_host* %165, %struct.ddb_entry* %166, %struct.dev_db_entry* %167)
  br label %169

169:                                              ; preds = %164, %158
  br label %183

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170, %147
  br label %172

172:                                              ; preds = %171, %138
  %173 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %174 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %15, align 4
  %177 = call i32 @qla4xxx_sess_conn_setup(%struct.scsi_qla_host* %173, %struct.dev_db_entry* %174, i32 %175, i32 %176)
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* @QLA_ERROR, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %172
  br label %191

182:                                              ; preds = %172
  br label %183

183:                                              ; preds = %182, %169, %135, %99, %73, %65
  %184 = load i32, i32* %16, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  br label %190

187:                                              ; preds = %183
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %16, align 4
  store i32 %189, i32* %15, align 4
  br label %45

190:                                              ; preds = %186, %114, %58, %45
  br label %191

191:                                              ; preds = %190, %181, %30
  %192 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %193 = icmp ne %struct.dev_db_entry* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %196 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @dma_pool_free(i32 %197, %struct.dev_db_entry* %198, i32 %199)
  br label %201

201:                                              ; preds = %194, %191
  ret void
}

declare dso_local %struct.dev_db_entry* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_get_fwddb_entry(%struct.scsi_qla_host*, i32, %struct.dev_db_entry*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @qla4xxx_verify_boot_idx(%struct.scsi_qla_host*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @qla4xxx_update_fw_ddb_link(%struct.scsi_qla_host*, %struct.list_head*, %struct.dev_db_entry*) #1

declare dso_local %struct.qla_ddb_index* @vmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.dev_db_entry*, i32) #1

declare dso_local i32 @qla4xxx_is_flash_ddb_exists(%struct.scsi_qla_host*, %struct.list_head*, %struct.dev_db_entry*) #1

declare dso_local i32 @vfree(%struct.qla_ddb_index*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @qla4xxx_is_session_exists(%struct.scsi_qla_host*, %struct.dev_db_entry*, i32*) #1

declare dso_local %struct.ddb_entry* @qla4xxx_lookup_ddb_by_fw_index(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla4xxx_update_sess_disc_idx(%struct.scsi_qla_host*, %struct.ddb_entry*, %struct.dev_db_entry*) #1

declare dso_local i32 @qla4xxx_sess_conn_setup(%struct.scsi_qla_host*, %struct.dev_db_entry*, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.dev_db_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
