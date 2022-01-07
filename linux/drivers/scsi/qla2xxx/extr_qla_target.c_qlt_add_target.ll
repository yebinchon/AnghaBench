; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_add_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_add_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, %struct.TYPE_12__, %struct.qla_qpair**, %struct.qla_qpair* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.scsi_qla_host*)* }
%struct.qla_qpair = type { i32, i32, i32 }
%struct.scsi_qla_host = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.qla_tgt* }
%struct.qla_tgt = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.scsi_qla_host*, %struct.qla_hw_data*, i32, i32, %struct.qla_qpair*, %struct.qla_tgt*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.qla_qpair_hint = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.scsi_qla_host*, %struct.qla_hw_data*, i32, i32, %struct.qla_qpair*, %struct.qla_qpair_hint*, i32 }

@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"This adapter does not support target mode.\0A\00", align 1
@ql_dbg_tgt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Registering target for host %ld(%p).\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to allocate struct qla_tgt\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to allocate qpair hints.\0A\00", align 1
@MODE_TARGET = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Unable to initialize lun_qpair_map btree\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@qlt_sess_work_fn = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"qla_target(%d): using 64 Bit PCI addressing\00", align 1
@qla_tgt_mutex = common dso_local global i32 0, align 4
@qla_tgt_glist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlt_add_target(%struct.qla_hw_data* %0, %struct.scsi_qla_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.qla_tgt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qla_qpair_hint*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.qla_qpair*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store %struct.scsi_qla_host* %1, %struct.scsi_qla_host** %5, align 8
  %12 = call i32 (...) @QLA_TGT_MODE_ENABLED()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %264

15:                                               ; preds = %2
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %17 = call i32 @IS_TGT_MODE_CAPABLE(%struct.qla_hw_data* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ql_log_warn, align 4
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %22 = call i32 @ql_log(i32 %20, %struct.scsi_qla_host* %21, i32 57456, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %264

23:                                               ; preds = %15
  %24 = load i32, i32* @ql_dbg_tgt, align 4
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %30 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %24, %struct.scsi_qla_host* %25, i32 57403, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %28, %struct.qla_hw_data* %29)
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %32 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.qla_tgt*, %struct.qla_tgt** %33, align 8
  %35 = icmp ne %struct.qla_tgt* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.qla_tgt* @kzalloc(i32 80, i32 %38)
  store %struct.qla_tgt* %39, %struct.qla_tgt** %6, align 8
  %40 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %41 = icmp ne %struct.qla_tgt* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %23
  %43 = load i32, i32* @ql_dbg_tgt, align 4
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %45 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %43, %struct.scsi_qla_host* %44, i32 57446, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %264

48:                                               ; preds = %23
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.qla_tgt* @kcalloc(i32 %52, i32 80, i32 %53)
  %55 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %56 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %55, i32 0, i32 13
  store %struct.qla_tgt* %54, %struct.qla_tgt** %56, align 8
  %57 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %58 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %57, i32 0, i32 13
  %59 = load %struct.qla_tgt*, %struct.qla_tgt** %58, align 8
  %60 = icmp ne %struct.qla_tgt* %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %48
  %62 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %63 = call i32 @kfree(%struct.qla_tgt* %62)
  %64 = load i32, i32* @ql_log_warn, align 4
  %65 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %66 = call i32 @ql_log(i32 %64, %struct.scsi_qla_host* %65, i32 407, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %264

69:                                               ; preds = %48
  %70 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %71 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %70, i32 0, i32 3
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MODE_TARGET, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %69
  %81 = load i32, i32* @MODE_TARGET, align 4
  %82 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %83 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %82, i32 0, i32 3
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %81
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %80, %69
  %91 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %92 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %91, i32 0, i32 14
  %93 = call i32 @btree_init64(i32* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %98 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %97, i32 0, i32 13
  %99 = load %struct.qla_tgt*, %struct.qla_tgt** %98, align 8
  %100 = call i32 @kfree(%struct.qla_tgt* %99)
  %101 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %102 = call i32 @kfree(%struct.qla_tgt* %101)
  %103 = load i32, i32* @ql_log_info, align 4
  %104 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %105 = call i32 @ql_log(i32 %103, %struct.scsi_qla_host* %104, i32 408, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %264

108:                                              ; preds = %90
  %109 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %110 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %109, i32 0, i32 13
  %111 = load %struct.qla_tgt*, %struct.qla_tgt** %110, align 8
  %112 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %111, i64 0
  %113 = bitcast %struct.qla_tgt* %112 to %struct.qla_qpair_hint*
  store %struct.qla_qpair_hint* %113, %struct.qla_qpair_hint** %9, align 8
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 3
  %116 = load %struct.qla_qpair*, %struct.qla_qpair** %115, align 8
  %117 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %9, align 8
  %118 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %117, i32 0, i32 12
  store %struct.qla_qpair* %116, %struct.qla_qpair** %118, align 8
  %119 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %9, align 8
  %120 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %119, i32 0, i32 11
  %121 = call i32 @INIT_LIST_HEAD(i32* %120)
  %122 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %123 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %122, i32 0, i32 3
  %124 = load %struct.qla_qpair*, %struct.qla_qpair** %123, align 8
  %125 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %9, align 8
  %128 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %127, i32 0, i32 10
  store i32 %126, i32* %128, align 8
  %129 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %9, align 8
  %130 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %129, i32 0, i32 11
  %131 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %132 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %131, i32 0, i32 3
  %133 = load %struct.qla_qpair*, %struct.qla_qpair** %132, align 8
  %134 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %133, i32 0, i32 2
  %135 = call i32 @list_add_tail(i32* %130, i32* %134)
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %188, %108
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %139 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %191

142:                                              ; preds = %136
  %143 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %144 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %143, i32 0, i32 2
  %145 = load %struct.qla_qpair**, %struct.qla_qpair*** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.qla_qpair*, %struct.qla_qpair** %145, i64 %147
  %149 = load %struct.qla_qpair*, %struct.qla_qpair** %148, align 8
  store %struct.qla_qpair* %149, %struct.qla_qpair** %11, align 8
  %150 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %151 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %150, i32 0, i32 13
  %152 = load %struct.qla_tgt*, %struct.qla_tgt** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %152, i64 %155
  %157 = bitcast %struct.qla_tgt* %156 to %struct.qla_qpair_hint*
  store %struct.qla_qpair_hint* %157, %struct.qla_qpair_hint** %9, align 8
  %158 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %9, align 8
  %159 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %158, i32 0, i32 11
  %160 = call i32 @INIT_LIST_HEAD(i32* %159)
  %161 = load %struct.qla_qpair*, %struct.qla_qpair** %11, align 8
  %162 = icmp ne %struct.qla_qpair* %161, null
  br i1 %162, label %163, label %187

163:                                              ; preds = %142
  %164 = load %struct.qla_qpair*, %struct.qla_qpair** %11, align 8
  %165 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %9, align 8
  %166 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %165, i32 0, i32 12
  store %struct.qla_qpair* %164, %struct.qla_qpair** %166, align 8
  %167 = load %struct.qla_qpair*, %struct.qla_qpair** %11, align 8
  %168 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i64, i64* %10, align 8
  %171 = call i32 @spin_lock_irqsave(i32 %169, i64 %170)
  %172 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %9, align 8
  %173 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %172, i32 0, i32 11
  %174 = load %struct.qla_qpair*, %struct.qla_qpair** %11, align 8
  %175 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %174, i32 0, i32 2
  %176 = call i32 @list_add_tail(i32* %173, i32* %175)
  %177 = load %struct.qla_qpair*, %struct.qla_qpair** %11, align 8
  %178 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i64, i64* %10, align 8
  %181 = call i32 @spin_unlock_irqrestore(i32 %179, i64 %180)
  %182 = load %struct.qla_qpair*, %struct.qla_qpair** %11, align 8
  %183 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %9, align 8
  %186 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %185, i32 0, i32 10
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %163, %142
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %136

191:                                              ; preds = %136
  %192 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %193 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %194 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %193, i32 0, i32 9
  store %struct.qla_hw_data* %192, %struct.qla_hw_data** %194, align 8
  %195 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %196 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %197 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %196, i32 0, i32 8
  store %struct.scsi_qla_host* %195, %struct.scsi_qla_host** %197, align 8
  %198 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %199 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %198, i32 0, i32 7
  %200 = call i32 @init_waitqueue_head(i32* %199)
  %201 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %202 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %201, i32 0, i32 6
  %203 = call i32 @INIT_LIST_HEAD(i32* %202)
  %204 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %205 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %204, i32 0, i32 5
  %206 = call i32 @spin_lock_init(i32* %205)
  %207 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %208 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %207, i32 0, i32 4
  %209 = load i32, i32* @qlt_sess_work_fn, align 4
  %210 = call i32 @INIT_WORK(i32* %208, i32 %209)
  %211 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %212 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %211, i32 0, i32 3
  %213 = call i32 @INIT_LIST_HEAD(i32* %212)
  %214 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %215 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %214, i32 0, i32 2
  %216 = call i32 @atomic_set(i32* %215, i32 0)
  %217 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %218 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %219 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  store %struct.qla_tgt* %217, %struct.qla_tgt** %220, align 8
  %221 = load i32, i32* @ql_dbg_tgt, align 4
  %222 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %223 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %224 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %221, %struct.scsi_qla_host* %222, i32 57447, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %225)
  %227 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %228 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %227, i32 0, i32 0
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = sub nsw i64 %231, 3
  %233 = call i32 @QLA_TGT_MAX_SG_24XX(i64 %232)
  %234 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %235 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  %236 = call i32 @mutex_lock(i32* @qla_tgt_mutex)
  %237 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %238 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %237, i32 0, i32 0
  %239 = call i32 @list_add_tail(i32* %238, i32* @qla_tgt_glist)
  %240 = call i32 @mutex_unlock(i32* @qla_tgt_mutex)
  %241 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %242 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %243, align 8
  %245 = icmp ne %struct.TYPE_11__* %244, null
  br i1 %245, label %246, label %263

246:                                              ; preds = %191
  %247 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %248 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 0
  %252 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %251, align 8
  %253 = icmp ne i32 (%struct.scsi_qla_host*)* %252, null
  br i1 %253, label %254, label %263

254:                                              ; preds = %246
  %255 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %256 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %259, align 8
  %261 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %262 = call i32 %260(%struct.scsi_qla_host* %261)
  br label %263

263:                                              ; preds = %254, %246, %191
  store i32 0, i32* %3, align 4
  br label %264

264:                                              ; preds = %263, %96, %61, %42, %19, %14
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @QLA_TGT_MODE_ENABLED(...) #1

declare dso_local i32 @IS_TGT_MODE_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.qla_tgt* @kzalloc(i32, i32) #1

declare dso_local %struct.qla_tgt* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.qla_tgt*) #1

declare dso_local i32 @btree_init64(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @QLA_TGT_MAX_SG_24XX(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
