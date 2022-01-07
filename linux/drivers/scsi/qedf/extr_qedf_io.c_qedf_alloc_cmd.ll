; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_alloc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_alloc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ioreq = type { i32, i64, i32, i32, i64, i64, i64, i32, i32, %struct.io_bdt*, i32, i32*, %struct.qedf_rport*, %struct.qedf_cmd_mgr*, i32 }
%struct.io_bdt = type { %struct.qedf_ioreq* }
%struct.qedf_cmd_mgr = type { i64, %struct.io_bdt**, i32, i32, %struct.qedf_ioreq* }
%struct.qedf_rport = type { i32, i32, %struct.qedf_ctx* }
%struct.qedf_ctx = type { i32, i32, %struct.qedf_cmd_mgr* }

@QEDF_LOG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Returning NULL, free_sqes=%d.\0A \00", align 1
@NUM_RW_TASKS_PER_CONNECTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Returning NULL, num_active_ios=%d.\0A\00", align 1
@GBL_RSVD_TASKS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Returning NULL, free_list_cnt=%d.\0A\00", align 1
@FCOE_PARAMS_NUM_TASKS = common dso_local global i32 0, align 4
@QEDF_CMD_DIRTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"io_req found to be dirty ox_id = 0x%x.\0A\00", align 1
@QEDFC_CMD_ST_IO_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"bd_tbl is NULL, xid=%x.\0A\00", align 1
@qedf_release_cmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qedf_ioreq* @qedf_alloc_cmd(%struct.qedf_rport* %0, i32 %1) #0 {
  %3 = alloca %struct.qedf_ioreq*, align 8
  %4 = alloca %struct.qedf_rport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qedf_ctx*, align 8
  %7 = alloca %struct.qedf_cmd_mgr*, align 8
  %8 = alloca %struct.qedf_ioreq*, align 8
  %9 = alloca %struct.io_bdt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.qedf_rport* %0, %struct.qedf_rport** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %15 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %14, i32 0, i32 2
  %16 = load %struct.qedf_ctx*, %struct.qedf_ctx** %15, align 8
  store %struct.qedf_ctx* %16, %struct.qedf_ctx** %6, align 8
  %17 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %17, i32 0, i32 2
  %19 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %18, align 8
  store %struct.qedf_cmd_mgr* %19, %struct.qedf_cmd_mgr** %7, align 8
  store %struct.qedf_ioreq* null, %struct.qedf_ioreq** %8, align 8
  %20 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %21 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %20, i32 0, i32 0
  %22 = call i64 @atomic_read(i32* %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* @QEDF_LOG_IO, align 4
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @QEDF_INFO(i32* %27, i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %194

31:                                               ; preds = %2
  %32 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %33 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %32, i32 0, i32 1
  %34 = call i64 @atomic_read(i32* %33)
  %35 = load i64, i64* @NUM_RW_TASKS_PER_CONNECTION, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* @QEDF_LOG_IO, align 4
  %41 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %42 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %41, i32 0, i32 1
  %43 = call i64 @atomic_read(i32* %42)
  %44 = call i32 @QEDF_INFO(i32* %39, i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %194

45:                                               ; preds = %31
  %46 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %47 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %46, i32 0, i32 2
  %48 = call i64 @atomic_read(i32* %47)
  %49 = load i64, i64* @GBL_RSVD_TASKS, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %52, i32 0, i32 1
  %54 = load i32, i32* @QEDF_LOG_IO, align 4
  %55 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %56 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %55, i32 0, i32 2
  %57 = call i64 @atomic_read(i32* %56)
  %58 = call i32 @QEDF_INFO(i32* %53, i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  br label %194

59:                                               ; preds = %45
  %60 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %61 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %60, i32 0, i32 3
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %96, %59
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @FCOE_PARAMS_NUM_TASKS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %99

68:                                               ; preds = %64
  %69 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %70 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %69, i32 0, i32 4
  %71 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %70, align 8
  %72 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %73 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %71, i64 %74
  store %struct.qedf_ioreq* %75, %struct.qedf_ioreq** %8, align 8
  %76 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %77 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %81 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @FCOE_PARAMS_NUM_TASKS, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %68
  %87 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %88 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %68
  %90 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %91 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %99

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %64

99:                                               ; preds = %94, %64
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @FCOE_PARAMS_NUM_TASKS, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %105 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %104, i32 0, i32 3
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  br label %194

108:                                              ; preds = %99
  %109 = load i32, i32* @QEDF_CMD_DIRTY, align 4
  %110 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %111 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %110, i32 0, i32 14
  %112 = call i64 @test_bit(i32 %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %116 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %115, i32 0, i32 1
  %117 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %118 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @QEDF_ERR(i32* %116, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %119)
  br label %121

121:                                              ; preds = %114, %108
  %122 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %123 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %122, i32 0, i32 14
  store i32 0, i32* %123, align 8
  %124 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %125 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  %126 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %127 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %126, i32 0, i32 3
  %128 = load i64, i64* %13, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %131 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %130, i32 0, i32 1
  %132 = call i32 @atomic_inc(i32* %131)
  %133 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %134 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %133, i32 0, i32 0
  %135 = call i32 @atomic_dec(i32* %134)
  %136 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %137 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %10, align 8
  %139 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %140 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %139, i32 0, i32 2
  %141 = call i32 @atomic_dec(i32* %140)
  %142 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %143 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %144 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %143, i32 0, i32 13
  store %struct.qedf_cmd_mgr* %142, %struct.qedf_cmd_mgr** %144, align 8
  %145 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %146 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %147 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %146, i32 0, i32 12
  store %struct.qedf_rport* %145, %struct.qedf_rport** %147, align 8
  %148 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %149 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %148, i32 0, i32 11
  store i32* null, i32** %149, align 8
  %150 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %151 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %150, i32 0, i32 2
  store i32 -1, i32* %151, align 8
  %152 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %153 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %152, i32 0, i32 8
  %154 = call i32 @kref_init(i32* %153)
  %155 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %156 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %155, i32 0, i32 10
  %157 = load i32, i32* @QEDFC_CMD_ST_IO_ACTIVE, align 4
  %158 = call i32 @atomic_set(i32* %156, i32 %157)
  %159 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %160 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %159, i32 0, i32 1
  %161 = load %struct.io_bdt**, %struct.io_bdt*** %160, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds %struct.io_bdt*, %struct.io_bdt** %161, i64 %162
  %164 = load %struct.io_bdt*, %struct.io_bdt** %163, align 8
  %165 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %166 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %165, i32 0, i32 9
  store %struct.io_bdt* %164, %struct.io_bdt** %166, align 8
  store %struct.io_bdt* %164, %struct.io_bdt** %9, align 8
  %167 = load %struct.io_bdt*, %struct.io_bdt** %9, align 8
  %168 = icmp eq %struct.io_bdt* %167, null
  br i1 %168, label %169, label %178

169:                                              ; preds = %121
  %170 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %171 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %170, i32 0, i32 1
  %172 = load i64, i64* %10, align 8
  %173 = call i32 @QEDF_ERR(i32* %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %172)
  %174 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %175 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %174, i32 0, i32 8
  %176 = load i32, i32* @qedf_release_cmd, align 4
  %177 = call i32 @kref_put(i32* %175, i32 %176)
  br label %194

178:                                              ; preds = %121
  %179 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %180 = load %struct.io_bdt*, %struct.io_bdt** %9, align 8
  %181 = getelementptr inbounds %struct.io_bdt, %struct.io_bdt* %180, i32 0, i32 0
  store %struct.qedf_ioreq* %179, %struct.qedf_ioreq** %181, align 8
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %184 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 8
  %185 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %186 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %185, i32 0, i32 6
  store i64 0, i64* %186, align 8
  %187 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %188 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %187, i32 0, i32 5
  store i64 0, i64* %188, align 8
  %189 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %190 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %189, i32 0, i32 4
  store i64 0, i64* %190, align 8
  %191 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %192 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %191, i32 0, i32 3
  store i32 65535, i32* %192, align 4
  %193 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  store %struct.qedf_ioreq* %193, %struct.qedf_ioreq** %3, align 8
  br label %199

194:                                              ; preds = %169, %103, %51, %37, %25
  %195 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %196 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  store %struct.qedf_ioreq* null, %struct.qedf_ioreq** %3, align 8
  br label %199

199:                                              ; preds = %194, %178
  %200 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  ret %struct.qedf_ioreq* %200
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
