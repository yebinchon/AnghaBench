; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_offload_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_offload_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (i32, i32*, i32*, i32*)*, i32 (i32, i32, %struct.qed_fcoe_params_offload*)*, i32 (i32, i32)* }
%struct.qed_fcoe_params_offload = type { i32, i32, i32, i32, i64, %struct.TYPE_13__, i32, %struct.TYPE_11__, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.qedf_ctx = type { i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.qedf_rport = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_15__*, i64, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@QEDF_LOG_CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Offloading connection portid=%06x.\0A\00", align 1
@qed_ops = common dso_local global %struct.TYPE_16__* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Could not acquire connection for portid=%06x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"portid=%06x fw_cid=%08x handle=%d.\0A\00", align 1
@FCOE_CONN_OFFLOAD_RAMROD_DATA_VLAN_ID_SHIFT = common dso_local global i32 0, align 4
@FCOE_CONN_OFFLOAD_RAMROD_DATA_PRIORITY_SHIFT = common dso_local global i32 0, align 4
@FCOE_CONN_OFFLOAD_RAMROD_DATA_B_VLAN_FLAG_MASK = common dso_local global i32 0, align 4
@FCOE_CONN_OFFLOAD_RAMROD_DATA_B_VLAN_FLAG_SHIFT = common dso_local global i32 0, align 4
@QEDF_RPORT_TYPE_TAPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Enable CONF, REC for portid=%06x.\0A\00", align 1
@FCOE_CONN_OFFLOAD_RAMROD_DATA_B_CONF_REQ_SHIFT = common dso_local global i32 0, align 4
@FC_SP_FT_SEQC = common dso_local global i32 0, align 4
@FCOE_CONN_OFFLOAD_RAMROD_DATA_B_REC_VALID_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Could not offload connection for portid=%06x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Offload succeeded portid=%06x total_sqe=%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_ctx*, %struct.qedf_rport*)* @qedf_offload_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_offload_connection(%struct.qedf_ctx* %0, %struct.qedf_rport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedf_ctx*, align 8
  %5 = alloca %struct.qedf_rport*, align 8
  %6 = alloca %struct.qed_fcoe_params_offload, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %4, align 8
  store %struct.qedf_rport* %1, %struct.qedf_rport** %5, align 8
  %10 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %11 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %16, i32 0, i32 3
  %18 = load i32, i32* @QEDF_LOG_CONN, align 4
  %19 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %20 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %19, i32 0, i32 6
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32*, i32, i8*, i32, ...) @QEDF_INFO(i32* %17, i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** @qed_ops, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32*, i32*, i32*)*, i32 (i32, i32*, i32*, i32*)** %27, align 8
  %29 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %33 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %32, i32 0, i32 3
  %34 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %35 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %34, i32 0, i32 9
  %36 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %37 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %36, i32 0, i32 10
  %38 = call i32 %28(i32 %31, i32* %33, i32* %35, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %2
  %42 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %42, i32 0, i32 3
  %44 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %45 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %44, i32 0, i32 6
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @QEDF_WARN(i32* %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 1, i32* %8, align 4
  br label %282

51:                                               ; preds = %2
  %52 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %52, i32 0, i32 3
  %54 = load i32, i32* @QEDF_LOG_CONN, align 4
  %55 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %56 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %55, i32 0, i32 6
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %62 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %65 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32*, i32, i8*, i32, ...) @QEDF_INFO(i32* %53, i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %63, i32 %66)
  %68 = call i32 @memset(%struct.qed_fcoe_params_offload* %6, i32 0, i32 96)
  %69 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %70 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 14
  store i32 %71, i32* %72, align 8
  %73 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %74 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 13
  store i8* %78, i8** %79, align 8
  %80 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %81 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 8
  %84 = inttoptr i64 %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 12
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 11
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %91 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ether_addr_copy(i32 %89, i32 %92)
  %94 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 10
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %97 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ether_addr_copy(i32 %95, i32 %99)
  %101 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %102 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %101, i32 0, i32 6
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 9
  store i32 %105, i32* %106, align 8
  %107 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %108 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %107, i32 0, i32 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %111, 20
  %113 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 0
  store i32 %112, i32* %113, align 8
  %114 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 1
  store i32 3, i32* %114, align 4
  %115 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %116 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %115, i32 0, i32 6
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 8
  store i32 %119, i32* %120, align 4
  %121 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %122 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @FCOE_CONN_OFFLOAD_RAMROD_DATA_VLAN_ID_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 2
  store i32 %125, i32* %126, align 8
  %127 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %128 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @FCOE_CONN_OFFLOAD_RAMROD_DATA_PRIORITY_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %131
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* @FCOE_CONN_OFFLOAD_RAMROD_DATA_B_VLAN_FLAG_MASK, align 4
  %136 = load i32, i32* @FCOE_CONN_OFFLOAD_RAMROD_DATA_B_VLAN_FLAG_SHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %137
  store i32 %140, i32* %138, align 4
  %141 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %142 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %141, i32 0, i32 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @fc_host_port_id(i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %149 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %7, align 4
  %151 = and i32 %150, 255
  %152 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %7, align 4
  %155 = and i32 %154, 65280
  %156 = ashr i32 %155, 8
  %157 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %7, align 4
  %160 = and i32 %159, 16711680
  %161 = ashr i32 %160, 16
  %162 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %165 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %164, i32 0, i32 6
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 6
  store i32 %168, i32* %169, align 4
  %170 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %171 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %170, i32 0, i32 6
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = and i32 %177, 255
  %179 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* %7, align 4
  %182 = and i32 %181, 65280
  %183 = ashr i32 %182, 8
  %184 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* %7, align 4
  %187 = and i32 %186, 16711680
  %188 = ashr i32 %187, 16
  %189 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 4
  store i64 0, i64* %191, align 8
  %192 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %193 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @QEDF_RPORT_TYPE_TAPE, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %228

197:                                              ; preds = %51
  %198 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %199 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %198, i32 0, i32 3
  %200 = load i32, i32* @QEDF_LOG_CONN, align 4
  %201 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %202 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %201, i32 0, i32 6
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i32*, i32, i8*, i32, ...) @QEDF_INFO(i32* %199, i32 %200, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* @FCOE_CONN_OFFLOAD_RAMROD_DATA_B_CONF_REQ_SHIFT, align 4
  %209 = shl i32 1, %208
  %210 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %209
  store i32 %212, i32* %210, align 4
  %213 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %214 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %213, i32 0, i32 6
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @FC_SP_FT_SEQC, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i32 1, i32 0
  %223 = load i32, i32* @FCOE_CONN_OFFLOAD_RAMROD_DATA_B_REC_VALID_SHIFT, align 4
  %224 = shl i32 %222, %223
  %225 = getelementptr inbounds %struct.qed_fcoe_params_offload, %struct.qed_fcoe_params_offload* %6, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %224
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %197, %51
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** @qed_ops, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = load i32 (i32, i32, %struct.qed_fcoe_params_offload*)*, i32 (i32, i32, %struct.qed_fcoe_params_offload*)** %230, align 8
  %232 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %233 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %236 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = call i32 %231(i32 %234, i32 %237, %struct.qed_fcoe_params_offload* %6)
  store i32 %238, i32* %8, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %251

241:                                              ; preds = %228
  %242 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %243 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %242, i32 0, i32 3
  %244 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %245 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %244, i32 0, i32 6
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @QEDF_WARN(i32* %243, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %249)
  br label %271

251:                                              ; preds = %228
  %252 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %253 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %252, i32 0, i32 3
  %254 = load i32, i32* @QEDF_LOG_CONN, align 4
  %255 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %256 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %255, i32 0, i32 6
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %9, align 4
  %262 = call i32 (i32*, i32, i8*, i32, ...) @QEDF_INFO(i32* %253, i32 %254, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %260, i32 %261)
  br label %263

263:                                              ; preds = %251
  %264 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %265 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %264, i32 0, i32 5
  %266 = call i32 @spin_lock_init(i32* %265)
  %267 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %268 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %267, i32 0, i32 4
  %269 = load i32, i32* %9, align 4
  %270 = call i32 @atomic_set(i32* %268, i32 %269)
  store i32 0, i32* %3, align 4
  br label %284

271:                                              ; preds = %241
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** @qed_ops, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 2
  %274 = load i32 (i32, i32)*, i32 (i32, i32)** %273, align 8
  %275 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %276 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %279 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = call i32 %274(i32 %277, i32 %280)
  br label %282

282:                                              ; preds = %271, %41
  %283 = load i32, i32* %8, align 4
  store i32 %283, i32* %3, align 4
  br label %284

284:                                              ; preds = %282, %263
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @QEDF_WARN(i32*, i8*, i32) #1

declare dso_local i32 @memset(%struct.qed_fcoe_params_offload*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @fc_host_port_id(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
