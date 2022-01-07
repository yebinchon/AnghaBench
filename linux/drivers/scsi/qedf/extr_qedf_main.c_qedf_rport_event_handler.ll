; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_rport_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_rport_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fc_rport_priv = type { i32, %struct.TYPE_2__, i32, i32, %struct.fc_rport* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fc_rport = type { %struct.fc_rport_libfc_priv*, i32 }
%struct.fc_rport_libfc_priv = type { i32 }
%struct.qedf_ctx = type { i32, i32, i32, i32 }
%struct.qedf_rport = type { i32, i32, i32, i32, %struct.fc_rport*, %struct.fc_rport_priv*, %struct.qedf_ctx* }

@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"event = %d, port_id = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"rport is NULL.\0A\00", align 1
@QEDF_MAX_SESSIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"Not offloading portid=0x%x as max number of offloaded sessions reached.\0A\00", align 1
@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Session already offloaded, portid=0x%x.\0A\00", align 1
@FC_FID_DIR_SERV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"rport struct does not exist for dir server port_id=%x\0A\00", align 1
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Not offloading since spp type isn't FCP\0A\00", align 1
@FC_RPORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Not FCP target so not offloading\0A\00", align 1
@FC_RP_FLAGS_RETRY = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@QEDF_RPORT_TYPE_TAPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"portid=%06x is a TAPE device.\0A\00", align 1
@QEDF_RPORT_TYPE_DISK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"port_id=%x - rport notcreated Yet!!\0A\00", align 1
@QEDF_RPORT_UPLOADING_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_rport_priv*, i32)* @qedf_rport_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_rport_event_handler(%struct.fc_lport* %0, %struct.fc_rport_priv* %1, i32 %2) #0 {
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_rport_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qedf_ctx*, align 8
  %8 = alloca %struct.fc_rport*, align 8
  %9 = alloca %struct.fc_rport_libfc_priv*, align 8
  %10 = alloca %struct.qedf_rport*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.fc_rport_priv* %1, %struct.fc_rport_priv** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %15 = call %struct.qedf_ctx* @lport_priv(%struct.fc_lport* %14)
  store %struct.qedf_ctx* %15, %struct.qedf_ctx** %7, align 8
  %16 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %17 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %16, i32 0, i32 4
  %18 = load %struct.fc_rport*, %struct.fc_rport** %17, align 8
  store %struct.fc_rport* %18, %struct.fc_rport** %8, align 8
  %19 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %19, i32 0, i32 2
  %21 = load i32, i32* @QEDF_LOG_DISC, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %24 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %20, i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %277 [
    i32 129, label %29
    i32 131, label %200
    i32 132, label %200
    i32 128, label %200
    i32 130, label %276
  ]

29:                                               ; preds = %3
  %30 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %31 = icmp ne %struct.fc_rport* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %34 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %33, i32 0, i32 2
  %35 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %277

36:                                               ; preds = %29
  %37 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %38 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %37, i32 0, i32 0
  %39 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %38, align 8
  store %struct.fc_rport_libfc_priv* %39, %struct.fc_rport_libfc_priv** %9, align 8
  %40 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %9, align 8
  %41 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %40, i64 1
  %42 = bitcast %struct.fc_rport_libfc_priv* %41 to %struct.qedf_rport*
  store %struct.qedf_rport* %42, %struct.qedf_rport** %10, align 8
  %43 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %44 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %45 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %44, i32 0, i32 6
  store %struct.qedf_ctx* %43, %struct.qedf_ctx** %45, align 8
  %46 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %46, i32 0, i32 0
  %48 = call i32 @atomic_read(i32* %47)
  %49 = load i32, i32* @QEDF_MAX_SESSIONS, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %36
  %52 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %52, i32 0, i32 2
  %54 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %55 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @QEDF_ERR(i32* %53, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %277

59:                                               ; preds = %36
  %60 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %61 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %62 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %61, i32 0, i32 1
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %67 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %66, i32 0, i32 2
  %68 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %69 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %277

73:                                               ; preds = %59
  %74 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %75 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FC_FID_DIR_SERV, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %81 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %80, i32 0, i32 2
  %82 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %83 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %81, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %277

87:                                               ; preds = %73
  %88 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %89 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @FC_TYPE_FCP, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %95 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %94, i32 0, i32 2
  %96 = load i32, i32* @QEDF_LOG_DISC, align 4
  %97 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %95, i32 %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %277

98:                                               ; preds = %87
  %99 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %100 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @FC_RPORT_ROLE_FCP_TARGET, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %98
  %107 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %108 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %107, i32 0, i32 2
  %109 = load i32, i32* @QEDF_LOG_DISC, align 4
  %110 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %108, i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %277

111:                                              ; preds = %98
  %112 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %113 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %112, i32 0, i32 2
  %114 = call i32 @kref_get(i32* %113)
  %115 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %116 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %117 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %116, i32 0, i32 5
  store %struct.fc_rport_priv* %115, %struct.fc_rport_priv** %117, align 8
  %118 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %119 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %120 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %119, i32 0, i32 4
  store %struct.fc_rport* %118, %struct.fc_rport** %120, align 8
  %121 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %122 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %123 = call i32 @qedf_alloc_sq(%struct.qedf_ctx* %121, %struct.qedf_rport* %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %111
  %127 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %128 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %129 = call i32 @qedf_cleanup_fcport(%struct.qedf_ctx* %127, %struct.qedf_rport* %128)
  br label %277

130:                                              ; preds = %111
  %131 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %132 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @FC_RP_FLAGS_RETRY, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %165

137:                                              ; preds = %130
  %138 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %139 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @FC_RPORT_ROLE_FCP_TARGET, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %137
  %146 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %147 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @FC_RPORT_ROLE_FCP_INITIATOR, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %145
  %154 = load i32, i32* @QEDF_RPORT_TYPE_TAPE, align 4
  %155 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %156 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %158 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %157, i32 0, i32 2
  %159 = load i32, i32* @QEDF_LOG_DISC, align 4
  %160 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %161 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %158, i32 %159, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %163)
  br label %169

165:                                              ; preds = %145, %137, %130
  %166 = load i32, i32* @QEDF_RPORT_TYPE_DISK, align 4
  %167 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %168 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %165, %153
  %170 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %171 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %172 = call i32 @qedf_offload_connection(%struct.qedf_ctx* %170, %struct.qedf_rport* %171)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %177 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %178 = call i32 @qedf_cleanup_fcport(%struct.qedf_ctx* %176, %struct.qedf_rport* %177)
  br label %277

179:                                              ; preds = %169
  %180 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %181 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %180, i32 0, i32 1
  %182 = load i64, i64* %13, align 8
  %183 = call i32 @spin_lock_irqsave(i32* %181, i64 %182)
  %184 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %185 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %184, i32 0, i32 2
  %186 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %187 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %186, i32 0, i32 3
  %188 = call i32 @list_add_rcu(i32* %185, i32* %187)
  %189 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %190 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %189, i32 0, i32 1
  %191 = load i64, i64* %13, align 8
  %192 = call i32 @spin_unlock_irqrestore(i32* %190, i64 %191)
  %193 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %194 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %195 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %194, i32 0, i32 1
  %196 = call i32 @set_bit(i32 %193, i32* %195)
  %197 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %198 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %197, i32 0, i32 0
  %199 = call i32 @atomic_inc(i32* %198)
  br label %277

200:                                              ; preds = %3, %3, %3
  %201 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %202 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* @FC_FID_DIR_SERV, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %277

209:                                              ; preds = %200
  %210 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %211 = icmp ne %struct.fc_rport* %210, null
  br i1 %211, label %218, label %212

212:                                              ; preds = %209
  %213 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %214 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %213, i32 0, i32 2
  %215 = load i32, i32* @QEDF_LOG_DISC, align 4
  %216 = load i32, i32* %11, align 4
  %217 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %214, i32 %215, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %216)
  br label %277

218:                                              ; preds = %209
  %219 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %220 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %219, i32 0, i32 0
  %221 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %220, align 8
  store %struct.fc_rport_libfc_priv* %221, %struct.fc_rport_libfc_priv** %9, align 8
  %222 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %9, align 8
  %223 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %222, i64 1
  %224 = bitcast %struct.fc_rport_libfc_priv* %223 to %struct.qedf_rport*
  store %struct.qedf_rport* %224, %struct.qedf_rport** %10, align 8
  %225 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %226 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %225, i32 0, i32 0
  %227 = load i64, i64* %13, align 8
  %228 = call i32 @spin_lock_irqsave(i32* %226, i64 %227)
  %229 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %230 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %231 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %230, i32 0, i32 1
  %232 = call i32 @test_bit(i32 %229, i32* %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %270

234:                                              ; preds = %218
  %235 = load i32, i32* @QEDF_RPORT_UPLOADING_CONNECTION, align 4
  %236 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %237 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %236, i32 0, i32 1
  %238 = call i32 @test_bit(i32 %235, i32* %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %270, label %240

240:                                              ; preds = %234
  %241 = load i32, i32* @QEDF_RPORT_UPLOADING_CONNECTION, align 4
  %242 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %243 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %242, i32 0, i32 1
  %244 = call i32 @set_bit(i32 %241, i32* %243)
  %245 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %246 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %245, i32 0, i32 0
  %247 = load i64, i64* %13, align 8
  %248 = call i32 @spin_unlock_irqrestore(i32* %246, i64 %247)
  %249 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %250 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %251 = call i32 @qedf_cleanup_fcport(%struct.qedf_ctx* %249, %struct.qedf_rport* %250)
  %252 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %253 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %252, i32 0, i32 1
  %254 = load i64, i64* %13, align 8
  %255 = call i32 @spin_lock_irqsave(i32* %253, i64 %254)
  %256 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %257 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %256, i32 0, i32 2
  %258 = call i32 @list_del_rcu(i32* %257)
  %259 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %260 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %259, i32 0, i32 1
  %261 = load i64, i64* %13, align 8
  %262 = call i32 @spin_unlock_irqrestore(i32* %260, i64 %261)
  %263 = load i32, i32* @QEDF_RPORT_UPLOADING_CONNECTION, align 4
  %264 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %265 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %264, i32 0, i32 1
  %266 = call i32 @clear_bit(i32 %263, i32* %265)
  %267 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %268 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %267, i32 0, i32 0
  %269 = call i32 @atomic_dec(i32* %268)
  br label %275

270:                                              ; preds = %234, %218
  %271 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %272 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %271, i32 0, i32 0
  %273 = load i64, i64* %13, align 8
  %274 = call i32 @spin_unlock_irqrestore(i32* %272, i64 %273)
  br label %275

275:                                              ; preds = %270, %240
  br label %277

276:                                              ; preds = %3
  br label %277

277:                                              ; preds = %51, %65, %3, %276, %275, %212, %208, %179, %175, %126, %106, %93, %79, %32
  ret void
}

declare dso_local %struct.qedf_ctx* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, ...) #1

declare dso_local i32 @QEDF_WARN(i32*, i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @qedf_alloc_sq(%struct.qedf_ctx*, %struct.qedf_rport*) #1

declare dso_local i32 @qedf_cleanup_fcport(%struct.qedf_ctx*, %struct.qedf_rport*) #1

declare dso_local i32 @qedf_offload_connection(%struct.qedf_ctx*, %struct.qedf_rport*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
