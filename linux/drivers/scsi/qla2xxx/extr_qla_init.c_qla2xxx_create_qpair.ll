; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2xxx_create_qpair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2xxx_create_qpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_qpair = type { i32, i64, i32, i32, i32, i32, %struct.qla_msix_entry*, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.scsi_qla_host*, %struct.qla_hw_data* }
%struct.qla_msix_entry = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.qla_qpair*, i32 }
%struct.qla_hw_data = type { i32, i64, i64, i32, i32, i32, %struct.qla_qpair**, i32*, %struct.TYPE_8__**, i32, %struct.qla_msix_entry*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.scsi_qla_host = type { %struct.TYPE_5__, i32, %struct.qla_hw_data* }
%struct.TYPE_5__ = type { i32 }

@BIT_6 = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"FW/Driver is not multi-queue capable.\0A\00", align 1
@ql2xmqsupport = common dso_local global i64 0, align 8
@ql2xnvmeenable = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to allocate memory for queue pair.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"No resources to create additional q pair.\0A\00", align 1
@ql_dbg_multiq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Vector %x selected for qpair\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Out of MSI-X vectors!.\0A\00", align 1
@qla_83xx_start_iocbs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to create response queue.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to create request queue.\0A\00", align 1
@ql2xenabledif = common dso_local global i64 0, align 8
@BIT_4 = common dso_local global i32 0, align 4
@SRB_MIN_REQ = common dso_local global i32 0, align 4
@srb_cachep = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"Failed to create srb mempool for qpair %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Request/Response queue pair created, id %d\0A\00", align 1
@ql_dbg_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qla_qpair* @qla2xxx_create_qpair(%struct.scsi_qla_host* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qla_qpair*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qla_hw_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.qla_qpair*, align 8
  %16 = alloca %struct.qla_msix_entry*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 2
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %13, align 8
  store i64 0, i64* %14, align 8
  store %struct.qla_qpair* null, %struct.qla_qpair** %15, align 8
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BIT_6, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 12
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26, %4
  %33 = load i32, i32* @ql_log_warn, align 4
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %35 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %33, %struct.scsi_qla_host* %34, i32 385, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.qla_qpair* null, %struct.qla_qpair** %5, align 8
  br label %390

36:                                               ; preds = %26
  %37 = load i64, i64* @ql2xmqsupport, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @ql2xnvmeenable, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %340

42:                                               ; preds = %39, %36
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.qla_qpair* @kzalloc(i32 112, i32 %43)
  store %struct.qla_qpair* %44, %struct.qla_qpair** %15, align 8
  %45 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %46 = icmp eq %struct.qla_qpair* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @ql_log_warn, align 4
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %50 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %48, %struct.scsi_qla_host* %49, i32 386, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store %struct.qla_qpair* null, %struct.qla_qpair** %5, align 8
  br label %390

51:                                               ; preds = %42
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %53 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %52, i32 0, i32 2
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %53, align 8
  %55 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %56 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %55, i32 0, i32 20
  store %struct.qla_hw_data* %54, %struct.qla_hw_data** %56, align 8
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %58 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %59 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %58, i32 0, i32 19
  store %struct.scsi_qla_host* %57, %struct.scsi_qla_host** %59, align 8
  %60 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %61 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %60, i32 0, i32 17
  %62 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %63 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %62, i32 0, i32 18
  store i32* %61, i32** %63, align 8
  %64 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %65 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %64, i32 0, i32 17
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %68 = call i64 @IS_SHADOW_REG_CAPABLE(%struct.qla_hw_data* %67)
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  %72 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %73 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %75 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %74, i32 0, i32 4
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %81 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @find_first_zero_bit(i32 %79, i64 %82)
  store i64 %83, i64* %14, align 8
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %88 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %86, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %51
  %92 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %93 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %92, i32 0, i32 4
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* @ql_log_warn, align 4
  %96 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %97 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %95, %struct.scsi_qla_host* %96, i32 387, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %387

98:                                               ; preds = %51
  %99 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %100 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %105 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @set_bit(i64 %103, i32 %106)
  %108 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %109 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %110 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %109, i32 0, i32 6
  %111 = load %struct.qla_qpair**, %struct.qla_qpair*** %110, align 8
  %112 = load i64, i64* %14, align 8
  %113 = getelementptr inbounds %struct.qla_qpair*, %struct.qla_qpair** %111, i64 %112
  store %struct.qla_qpair* %108, %struct.qla_qpair** %113, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %116 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %119 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %121 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %120, i32 0, i32 12
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %125 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %124, i32 0, i32 16
  store i32 %123, i32* %125, align 8
  %126 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %127 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %126, i32 0, i32 15
  %128 = call i32 @INIT_LIST_HEAD(i32* %127)
  %129 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %130 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %129, i32 0, i32 11
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %135 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %134, i32 0, i32 14
  store i32 %133, i32* %135, align 8
  %136 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %137 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %136, i32 0, i32 11
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %142 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %141, i32 0, i32 13
  store i32 %140, i32* %142, align 4
  %143 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %144 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %143, i32 0, i32 11
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %149 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %148, i32 0, i32 12
  store i32 %147, i32* %149, align 8
  store i32 0, i32* %12, align 4
  br label %150

150:                                              ; preds = %178, %98
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %153 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %181

156:                                              ; preds = %150
  %157 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %158 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %157, i32 0, i32 10
  %159 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %159, i64 %161
  store %struct.qla_msix_entry* %162, %struct.qla_msix_entry** %16, align 8
  %163 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %16, align 8
  %164 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %178

168:                                              ; preds = %156
  %169 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %16, align 8
  %170 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %171 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %170, i32 0, i32 6
  store %struct.qla_msix_entry* %169, %struct.qla_msix_entry** %171, align 8
  %172 = load i32, i32* @ql_dbg_multiq, align 4
  %173 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %174 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %16, align 8
  %175 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @ql_dbg(i32 %172, %struct.scsi_qla_host* %173, i32 49167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %176)
  br label %181

178:                                              ; preds = %167
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %150

181:                                              ; preds = %168, %150
  %182 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %183 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %182, i32 0, i32 6
  %184 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %183, align 8
  %185 = icmp ne %struct.qla_msix_entry* %184, null
  br i1 %185, label %190, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* @ql_log_warn, align 4
  %188 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %189 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %187, %struct.scsi_qla_host* %188, i32 388, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %369

190:                                              ; preds = %181
  %191 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %192 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %191, i32 0, i32 6
  %193 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %192, align 8
  %194 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %193, i32 0, i32 0
  store i32 1, i32* %194, align 8
  %195 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %196 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %195, i32 0, i32 5
  %197 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %198 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %197, i32 0, i32 1
  %199 = call i32 @list_add_tail(i32* %196, i32* %198)
  %200 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %201 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %200, i32 0, i32 9
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %204 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %203, i32 0, i32 11
  store i32 %202, i32* %204, align 4
  %205 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %206 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %190
  %209 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %210 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %214 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %212, %208, %190
  %217 = load i32, i32* @qla_83xx_start_iocbs, align 4
  %218 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %219 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %218, i32 0, i32 10
  store i32 %217, i32* %219, align 8
  br label %220

220:                                              ; preds = %216, %212
  %221 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %222 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %221, i32 0, i32 4
  %223 = call i32 @mutex_unlock(i32* %222)
  %224 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %225 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @qla25xx_create_rsp_que(%struct.qla_hw_data* %224, i32 0, i32 0, i32 0, %struct.qla_qpair* %225, i32 %226)
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %220
  %231 = load i32, i32* @ql_log_warn, align 4
  %232 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %233 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %231, %struct.scsi_qla_host* %232, i32 389, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %349

234:                                              ; preds = %220
  %235 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %236 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %235, i32 0, i32 8
  %237 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %237, i64 %239
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  %242 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %243 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %242, i32 0, i32 7
  store %struct.TYPE_8__* %241, %struct.TYPE_8__** %243, align 8
  %244 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* %9, align 4
  %249 = call i32 @qla25xx_create_req_que(%struct.qla_hw_data* %244, i32 0, i32 %245, i32 0, i32 %246, i32 %247, i32 %248)
  store i32 %249, i32* %11, align 4
  %250 = load i32, i32* %11, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %234
  %253 = load i32, i32* @ql_log_warn, align 4
  %254 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %255 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %253, %struct.scsi_qla_host* %254, i32 390, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %343

256:                                              ; preds = %234
  %257 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %258 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %257, i32 0, i32 7
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %11, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %265 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %264, i32 0, i32 9
  store i32 %263, i32* %265, align 4
  %266 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %267 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %266, i32 0, i32 9
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %270 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %269, i32 0, i32 7
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 1
  store i32 %268, i32* %272, align 8
  %273 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %274 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %275 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %274, i32 0, i32 7
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  store %struct.qla_qpair* %273, %struct.qla_qpair** %277, align 8
  %278 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %279 = call i32 (...) @smp_processor_id()
  %280 = call i32 @qla_cpu_update(%struct.qla_qpair* %278, i32 %279)
  %281 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %282 = call i64 @IS_T10_PI_CAPABLE(%struct.qla_hw_data* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %298

284:                                              ; preds = %256
  %285 = load i64, i64* @ql2xenabledif, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %298

287:                                              ; preds = %284
  %288 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %289 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @BIT_4, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %287
  %295 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %296 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %295, i32 0, i32 3
  store i32 1, i32* %296, align 4
  br label %297

297:                                              ; preds = %294, %287
  br label %298

298:                                              ; preds = %297, %284, %256
  %299 = load i32, i32* @SRB_MIN_REQ, align 4
  %300 = load i32, i32* @srb_cachep, align 4
  %301 = call i32 @mempool_create_slab_pool(i32 %299, i32 %300)
  %302 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %303 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %302, i32 0, i32 8
  store i32 %301, i32* %303, align 8
  %304 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %305 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %304, i32 0, i32 8
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %315, label %308

308:                                              ; preds = %298
  %309 = load i32, i32* @ql_log_warn, align 4
  %310 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %311 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %312 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %309, %struct.scsi_qla_host* %310, i32 53302, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i64 %313)
  br label %342

315:                                              ; preds = %298
  %316 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %317 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %316, i32 0, i32 4
  store i32 1, i32* %317, align 8
  %318 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %319 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %315
  %324 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %325 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 0
  store i32 1, i32* %326, align 8
  br label %327

327:                                              ; preds = %323, %315
  %328 = load i32, i32* @ql_dbg_multiq, align 4
  %329 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %330 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %331 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = call i32 @ql_dbg(i32 %328, %struct.scsi_qla_host* %329, i32 49165, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i64 %332)
  %334 = load i32, i32* @ql_dbg_init, align 4
  %335 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %336 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %337 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = call i32 @ql_dbg(i32 %334, %struct.scsi_qla_host* %335, i32 391, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i64 %338)
  br label %340

340:                                              ; preds = %327, %39
  %341 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  store %struct.qla_qpair* %341, %struct.qla_qpair** %5, align 8
  br label %390

342:                                              ; preds = %308
  br label %343

343:                                              ; preds = %342, %252
  %344 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %345 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %346 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %345, i32 0, i32 7
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %346, align 8
  %348 = call i32 @qla25xx_delete_rsp_que(%struct.scsi_qla_host* %344, %struct.TYPE_8__* %347)
  br label %349

349:                                              ; preds = %343, %230
  %350 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %351 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %350, i32 0, i32 4
  %352 = call i32 @mutex_lock(i32* %351)
  %353 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %354 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %353, i32 0, i32 6
  %355 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %354, align 8
  %356 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %355, i32 0, i32 0
  store i32 0, i32* %356, align 8
  %357 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %358 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %357, i32 0, i32 5
  %359 = call i32 @list_del(i32* %358)
  %360 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %361 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %360, i32 0, i32 1
  %362 = call i64 @list_empty(i32* %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %349
  %365 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %366 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 0
  store i32 0, i32* %367, align 8
  br label %368

368:                                              ; preds = %364, %349
  br label %369

369:                                              ; preds = %368, %186
  %370 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %371 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %370, i32 0, i32 6
  %372 = load %struct.qla_qpair**, %struct.qla_qpair*** %371, align 8
  %373 = load i64, i64* %14, align 8
  %374 = getelementptr inbounds %struct.qla_qpair*, %struct.qla_qpair** %372, i64 %373
  store %struct.qla_qpair* null, %struct.qla_qpair** %374, align 8
  %375 = load i64, i64* %14, align 8
  %376 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %377 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %376, i32 0, i32 5
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @clear_bit(i64 %375, i32 %378)
  %380 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %381 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %380, i32 0, i32 2
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 %382, -1
  store i64 %383, i64* %381, align 8
  %384 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %385 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %384, i32 0, i32 4
  %386 = call i32 @mutex_unlock(i32* %385)
  br label %387

387:                                              ; preds = %369, %91
  %388 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %389 = call i32 @kfree(%struct.qla_qpair* %388)
  store %struct.qla_qpair* null, %struct.qla_qpair** %5, align 8
  br label %390

390:                                              ; preds = %387, %340, %47, %32
  %391 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  ret %struct.qla_qpair* %391
}

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local %struct.qla_qpair* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @IS_SHADOW_REG_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla25xx_create_rsp_que(%struct.qla_hw_data*, i32, i32, i32, %struct.qla_qpair*, i32) #1

declare dso_local i32 @qla25xx_create_req_que(%struct.qla_hw_data*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qla_cpu_update(%struct.qla_qpair*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @IS_T10_PI_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @qla25xx_delete_rsp_que(%struct.scsi_qla_host*, %struct.TYPE_8__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @kfree(%struct.qla_qpair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
