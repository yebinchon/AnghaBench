; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_dump_pending_frames.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_dump_pending_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.megasas_cmd**, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.megasas_cmd = type { i32, i64, i32, i64, i32 }
%union.megasas_sgl = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.megasas_io_frame = type { i32, i32, i32, i32, i32, i32, %union.megasas_sgl }
%struct.megasas_pthru_frame = type { i32, i32, i32, i32, i32, i32, i32, %union.megasas_sgl }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"[%d]: Dumping Frame Phys Address of all pending cmds in FW\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"[%d]: Total OS Pending cmds : %d\0A\00", align 1
@IS_DMA64 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"[%d]: 64 bit SGLs were sent to FW\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"[%d]: 32 bit SGLs were sent to FW\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"[%d]: Pending OS cmds in FW : \0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"[%d]: Frame addr :0x%08lx : \00", align 1
@READ_WRITE_LDIO = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [123 x i8] c"[%d]: frame count : 0x%x, Cmd : 0x%x, Tgt id : 0x%x, lba lo : 0x%x, lba_hi : 0x%x, sense_buf addr : 0x%x,sge count : 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [143 x i8] c"[%d]: frame count : 0x%x, Cmd : 0x%x, Tgt id : 0x%x, lun : 0x%x, cdb_len : 0x%x, data xfer len : 0x%x, sense_buf addr : 0x%x,sge count : 0x%x\0A\00", align 1
@megasas_dbg_lvl = common dso_local global i32 0, align 4
@MEGASAS_DBG_LVL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"sgl len : 0x%x, sgl addr : 0x%llx\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"sgl len : 0x%x, sgl addr : 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"[%d]: Pending Internal cmds in FW : \0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"0x%08lx : \00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"[%d]: Dumping Done\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_dump_pending_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_dump_pending_frames(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca %struct.megasas_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.megasas_sgl*, align 8
  %7 = alloca %struct.megasas_io_frame*, align 8
  %8 = alloca %struct.megasas_pthru_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %12 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %15 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %19 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %25 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %29 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %34 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %33, i32 0, i32 4
  %35 = call i32 @atomic_read(i32* %34)
  %36 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %32, i32 %35)
  %37 = load i64, i64* @IS_DMA64, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %1
  %40 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %41 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %45 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  br label %61

50:                                               ; preds = %1
  %51 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %52 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %56 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %50, %39
  %62 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %63 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %62, i32 0, i32 2
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %67 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %264, %61
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %267

76:                                               ; preds = %72
  %77 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %78 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %77, i32 0, i32 3
  %79 = load %struct.megasas_cmd**, %struct.megasas_cmd*** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.megasas_cmd*, %struct.megasas_cmd** %79, i64 %81
  %83 = load %struct.megasas_cmd*, %struct.megasas_cmd** %82, align 8
  store %struct.megasas_cmd* %83, %struct.megasas_cmd** %3, align 8
  %84 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %85 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %76
  br label %264

89:                                               ; preds = %76
  %90 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %91 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %90, i32 0, i32 2
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %95 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %100 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %98, i64 %101)
  %103 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %104 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @megasas_cmd_type(i32 %105)
  %107 = load i64, i64* @READ_WRITE_LDIO, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %151

109:                                              ; preds = %89
  %110 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %111 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.megasas_io_frame*
  store %struct.megasas_io_frame* %113, %struct.megasas_io_frame** %7, align 8
  %114 = load %struct.megasas_io_frame*, %struct.megasas_io_frame** %7, align 8
  %115 = getelementptr inbounds %struct.megasas_io_frame, %struct.megasas_io_frame* %114, i32 0, i32 6
  store %union.megasas_sgl* %115, %union.megasas_sgl** %6, align 8
  %116 = load %struct.megasas_io_frame*, %struct.megasas_io_frame** %7, align 8
  %117 = getelementptr inbounds %struct.megasas_io_frame, %struct.megasas_io_frame* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %9, align 4
  %119 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %120 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %119, i32 0, i32 2
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %124 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %129 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.megasas_io_frame*, %struct.megasas_io_frame** %7, align 8
  %132 = getelementptr inbounds %struct.megasas_io_frame, %struct.megasas_io_frame* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.megasas_io_frame*, %struct.megasas_io_frame** %7, align 8
  %135 = getelementptr inbounds %struct.megasas_io_frame, %struct.megasas_io_frame* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.megasas_io_frame*, %struct.megasas_io_frame** %7, align 8
  %138 = getelementptr inbounds %struct.megasas_io_frame, %struct.megasas_io_frame* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @le32_to_cpu(i32 %139)
  %141 = load %struct.megasas_io_frame*, %struct.megasas_io_frame** %7, align 8
  %142 = getelementptr inbounds %struct.megasas_io_frame, %struct.megasas_io_frame* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @le32_to_cpu(i32 %143)
  %145 = load %struct.megasas_io_frame*, %struct.megasas_io_frame** %7, align 8
  %146 = getelementptr inbounds %struct.megasas_io_frame, %struct.megasas_io_frame* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le32_to_cpu(i32 %147)
  %149 = load i32, i32* %9, align 4
  %150 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.6, i64 0, i64 0), i64 %127, i32 %130, i32 %133, i32 %136, i32 %140, i32 %144, i32 %148, i32 %149)
  br label %195

151:                                              ; preds = %89
  %152 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %153 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to %struct.megasas_pthru_frame*
  store %struct.megasas_pthru_frame* %155, %struct.megasas_pthru_frame** %8, align 8
  %156 = load %struct.megasas_pthru_frame*, %struct.megasas_pthru_frame** %8, align 8
  %157 = getelementptr inbounds %struct.megasas_pthru_frame, %struct.megasas_pthru_frame* %156, i32 0, i32 7
  store %union.megasas_sgl* %157, %union.megasas_sgl** %6, align 8
  %158 = load %struct.megasas_pthru_frame*, %struct.megasas_pthru_frame** %8, align 8
  %159 = getelementptr inbounds %struct.megasas_pthru_frame, %struct.megasas_pthru_frame* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %9, align 4
  %161 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %162 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %161, i32 0, i32 2
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %166 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %165, i32 0, i32 1
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %171 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.megasas_pthru_frame*, %struct.megasas_pthru_frame** %8, align 8
  %174 = getelementptr inbounds %struct.megasas_pthru_frame, %struct.megasas_pthru_frame* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.megasas_pthru_frame*, %struct.megasas_pthru_frame** %8, align 8
  %177 = getelementptr inbounds %struct.megasas_pthru_frame, %struct.megasas_pthru_frame* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.megasas_pthru_frame*, %struct.megasas_pthru_frame** %8, align 8
  %180 = getelementptr inbounds %struct.megasas_pthru_frame, %struct.megasas_pthru_frame* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.megasas_pthru_frame*, %struct.megasas_pthru_frame** %8, align 8
  %183 = getelementptr inbounds %struct.megasas_pthru_frame, %struct.megasas_pthru_frame* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.megasas_pthru_frame*, %struct.megasas_pthru_frame** %8, align 8
  %186 = getelementptr inbounds %struct.megasas_pthru_frame, %struct.megasas_pthru_frame* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @le32_to_cpu(i32 %187)
  %189 = load %struct.megasas_pthru_frame*, %struct.megasas_pthru_frame** %8, align 8
  %190 = getelementptr inbounds %struct.megasas_pthru_frame, %struct.megasas_pthru_frame* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le32_to_cpu(i32 %191)
  %193 = load i32, i32* %9, align 4
  %194 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %164, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.7, i64 0, i64 0), i64 %169, i32 %172, i32 %175, i32 %178, i32 %181, i32 %184, i32 %188, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %151, %109
  %196 = load i32, i32* @megasas_dbg_lvl, align 4
  %197 = load i32, i32* @MEGASAS_DBG_LVL, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %263

200:                                              ; preds = %195
  store i32 0, i32* %5, align 4
  br label %201

201:                                              ; preds = %259, %200
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %262

205:                                              ; preds = %201
  %206 = load i64, i64* @IS_DMA64, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %233

208:                                              ; preds = %205
  %209 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %210 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %209, i32 0, i32 2
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load %union.megasas_sgl*, %union.megasas_sgl** %6, align 8
  %214 = bitcast %union.megasas_sgl* %213 to %struct.TYPE_5__**
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @le32_to_cpu(i32 %220)
  %222 = sext i32 %221 to i64
  %223 = load %union.megasas_sgl*, %union.megasas_sgl** %6, align 8
  %224 = bitcast %union.megasas_sgl* %223 to %struct.TYPE_5__**
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @le64_to_cpu(i32 %230)
  %232 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %212, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %222, i32 %231)
  br label %258

233:                                              ; preds = %205
  %234 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %235 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %234, i32 0, i32 2
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load %union.megasas_sgl*, %union.megasas_sgl** %6, align 8
  %239 = bitcast %union.megasas_sgl* %238 to %struct.TYPE_6__**
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = load i32, i32* %5, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @le32_to_cpu(i32 %245)
  %247 = sext i32 %246 to i64
  %248 = load %union.megasas_sgl*, %union.megasas_sgl** %6, align 8
  %249 = bitcast %union.megasas_sgl* %248 to %struct.TYPE_6__**
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @le32_to_cpu(i32 %255)
  %257 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %237, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i64 %247, i32 %256)
  br label %258

258:                                              ; preds = %233, %208
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %5, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %5, align 4
  br label %201

262:                                              ; preds = %201
  br label %263

263:                                              ; preds = %262, %195
  br label %264

264:                                              ; preds = %263, %88
  %265 = load i32, i32* %4, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %4, align 4
  br label %72

267:                                              ; preds = %72
  %268 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %269 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %268, i32 0, i32 2
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 0
  %272 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %273 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %272, i32 0, i32 1
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %271, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i64 %276)
  store i32 0, i32* %4, align 4
  br label %278

278:                                              ; preds = %304, %267
  %279 = load i32, i32* %4, align 4
  %280 = load i32, i32* %10, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %307

282:                                              ; preds = %278
  %283 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %284 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %283, i32 0, i32 3
  %285 = load %struct.megasas_cmd**, %struct.megasas_cmd*** %284, align 8
  %286 = load i32, i32* %4, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.megasas_cmd*, %struct.megasas_cmd** %285, i64 %287
  %289 = load %struct.megasas_cmd*, %struct.megasas_cmd** %288, align 8
  store %struct.megasas_cmd* %289, %struct.megasas_cmd** %3, align 8
  %290 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %291 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp eq i32 %292, 1
  br i1 %293, label %294, label %303

294:                                              ; preds = %282
  %295 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %296 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %295, i32 0, i32 2
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 0
  %299 = load %struct.megasas_cmd*, %struct.megasas_cmd** %3, align 8
  %300 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %298, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i64 %301)
  br label %303

303:                                              ; preds = %294, %282
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %4, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %4, align 4
  br label %278

307:                                              ; preds = %278
  %308 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %309 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %308, i32 0, i32 2
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 0
  %312 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %313 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %312, i32 0, i32 1
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %311, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i64 %316)
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @megasas_cmd_type(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
