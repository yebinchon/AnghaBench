; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_tgt.c_bnx2fc_init_tgt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_tgt.c_bnx2fc_init_tgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_rport = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, i64, i64, i32, i32, i32, i32, %struct.fcoe_port*, %struct.fc_rport_priv*, %struct.fc_rport*, %struct.b577xx_fcoe_rx_doorbell, %struct.b577xx_doorbell_set_prod }
%struct.fc_rport = type { i32 }
%struct.b577xx_fcoe_rx_doorbell = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.b577xx_doorbell_set_prod = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fcoe_port = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { %struct.bnx2fc_hba* }
%struct.bnx2fc_hba = type { i64 }
%struct.fc_rport_priv = type { i32, %struct.TYPE_4__, %struct.fc_rport* }
%struct.TYPE_4__ = type { i32 }

@BNX2FC_NUM_MAX_SESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"exceeded max sessions. logoff this tgt\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"init_tgt - conn_id = 0x%x\0A\00", align 1
@BNX2FC_SQ_WQES_MAX = common dso_local global i32 0, align 4
@BNX2FC_RQ_WQES_MAX = common dso_local global i32 0, align 4
@BNX2FC_CQ_WQES_MAX = common dso_local global i32 0, align 4
@FC_RP_FLAGS_RETRY = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@TYPE_TAPE = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i32 0, align 4
@BNX2FC_IO_TIMEOUT = common dso_local global i64 0, align 8
@B577XX_DOORBELL_HDR_DB_TYPE = common dso_local global i32 0, align 4
@B577XX_FCOE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@B577XX_DOORBELL_HDR_CONN_TYPE_SHIFT = common dso_local global i32 0, align 4
@B577XX_DOORBELL_HDR_RX_SHIFT = common dso_local global i32 0, align 4
@B577XX_DOORBELL_HDR_DB_TYPE_SHIFT = common dso_local global i32 0, align 4
@B577XX_FCOE_RX_DOORBELL_NEGATIVE_ARM_SHIFT = common dso_local global i32 0, align 4
@B577XX_FCOE_RX_DOORBELL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2fc_rport*, %struct.fcoe_port*, %struct.fc_rport_priv*)* @bnx2fc_init_tgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_init_tgt(%struct.bnx2fc_rport* %0, %struct.fcoe_port* %1, %struct.fc_rport_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2fc_rport*, align 8
  %6 = alloca %struct.fcoe_port*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca %struct.fc_rport*, align 8
  %9 = alloca %struct.bnx2fc_interface*, align 8
  %10 = alloca %struct.bnx2fc_hba*, align 8
  %11 = alloca %struct.b577xx_doorbell_set_prod*, align 8
  %12 = alloca %struct.b577xx_fcoe_rx_doorbell*, align 8
  store %struct.bnx2fc_rport* %0, %struct.bnx2fc_rport** %5, align 8
  store %struct.fcoe_port* %1, %struct.fcoe_port** %6, align 8
  store %struct.fc_rport_priv* %2, %struct.fc_rport_priv** %7, align 8
  %13 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %14 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %13, i32 0, i32 2
  %15 = load %struct.fc_rport*, %struct.fc_rport** %14, align 8
  store %struct.fc_rport* %15, %struct.fc_rport** %8, align 8
  %16 = load %struct.fcoe_port*, %struct.fcoe_port** %6, align 8
  %17 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %16, i32 0, i32 0
  %18 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %17, align 8
  store %struct.bnx2fc_interface* %18, %struct.bnx2fc_interface** %9, align 8
  %19 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %9, align 8
  %20 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %19, i32 0, i32 0
  %21 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %20, align 8
  store %struct.bnx2fc_hba* %21, %struct.bnx2fc_hba** %10, align 8
  %22 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %23 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %22, i32 0, i32 27
  store %struct.b577xx_doorbell_set_prod* %23, %struct.b577xx_doorbell_set_prod** %11, align 8
  %24 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %25 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %24, i32 0, i32 26
  store %struct.b577xx_fcoe_rx_doorbell* %25, %struct.b577xx_fcoe_rx_doorbell** %12, align 8
  %26 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %27 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %28 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %27, i32 0, i32 25
  store %struct.fc_rport* %26, %struct.fc_rport** %28, align 8
  %29 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %30 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %31 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %30, i32 0, i32 24
  store %struct.fc_rport_priv* %29, %struct.fc_rport_priv** %31, align 8
  %32 = load %struct.fcoe_port*, %struct.fcoe_port** %6, align 8
  %33 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %34 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %33, i32 0, i32 23
  store %struct.fcoe_port* %32, %struct.fcoe_port** %34, align 8
  %35 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %10, align 8
  %36 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BNX2FC_NUM_MAX_SESS, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %3
  %41 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %42 = call i32 (%struct.bnx2fc_rport*, i8*, ...) @BNX2FC_TGT_DBG(%struct.bnx2fc_rport* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %44 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  store i32 -1, i32* %4, align 4
  br label %183

45:                                               ; preds = %3
  %46 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %10, align 8
  %47 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %48 = call i32 @bnx2fc_alloc_conn_id(%struct.bnx2fc_hba* %46, %struct.bnx2fc_rport* %47)
  %49 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %50 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %52 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %183

56:                                               ; preds = %45
  %57 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %58 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %59 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.bnx2fc_rport*, i8*, ...) @BNX2FC_TGT_DBG(%struct.bnx2fc_rport* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @BNX2FC_SQ_WQES_MAX, align 4
  %63 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %64 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %63, i32 0, i32 22
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @BNX2FC_RQ_WQES_MAX, align 4
  %66 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %67 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %66, i32 0, i32 21
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @BNX2FC_CQ_WQES_MAX, align 4
  %69 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %70 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %69, i32 0, i32 20
  store i32 %68, i32* %70, align 4
  %71 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %72 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %71, i32 0, i32 19
  %73 = load i32, i32* @BNX2FC_SQ_WQES_MAX, align 4
  %74 = call i32 @atomic_set(i32* %72, i32 %73)
  %75 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %76 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %78 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %80 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %79, i32 0, i32 18
  store i64 0, i64* %80, align 8
  %81 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %82 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %81, i32 0, i32 17
  store i64 0, i64* %82, align 8
  %83 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %84 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %83, i32 0, i32 3
  store i32 32768, i32* %84, align 4
  %85 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %86 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %85, i32 0, i32 16
  store i64 0, i64* %86, align 8
  %87 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %88 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %87, i32 0, i32 15
  %89 = call i32 @atomic_set(i32* %88, i32 0)
  %90 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %91 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %90, i32 0, i32 14
  store i64 0, i64* %91, align 8
  %92 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %93 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FC_RP_FLAGS_RETRY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %56
  %99 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %100 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @FC_RPORT_ROLE_FCP_TARGET, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %98
  %107 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %108 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @FC_RPORT_ROLE_FCP_INITIATOR, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %106
  %115 = load i32, i32* @TYPE_TAPE, align 4
  %116 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %117 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %116, i32 0, i32 13
  store i32 %115, i32* %117, align 8
  %118 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %119 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %118, i32 0, i32 12
  store i64 0, i64* %119, align 8
  br label %127

120:                                              ; preds = %106, %98, %56
  %121 = load i32, i32* @TYPE_DISK, align 4
  %122 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %123 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %122, i32 0, i32 13
  store i32 %121, i32* %123, align 8
  %124 = load i64, i64* @BNX2FC_IO_TIMEOUT, align 8
  %125 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %126 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %125, i32 0, i32 12
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %120, %114
  %128 = load i32, i32* @B577XX_DOORBELL_HDR_DB_TYPE, align 4
  %129 = load %struct.b577xx_doorbell_set_prod*, %struct.b577xx_doorbell_set_prod** %11, align 8
  %130 = getelementptr inbounds %struct.b577xx_doorbell_set_prod, %struct.b577xx_doorbell_set_prod* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* @B577XX_FCOE_CONNECTION_TYPE, align 4
  %133 = load i32, i32* @B577XX_DOORBELL_HDR_CONN_TYPE_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load %struct.b577xx_doorbell_set_prod*, %struct.b577xx_doorbell_set_prod** %11, align 8
  %136 = getelementptr inbounds %struct.b577xx_doorbell_set_prod, %struct.b577xx_doorbell_set_prod* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %134
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* @B577XX_DOORBELL_HDR_RX_SHIFT, align 4
  %141 = shl i32 1, %140
  %142 = load i32, i32* @B577XX_DOORBELL_HDR_DB_TYPE_SHIFT, align 4
  %143 = shl i32 1, %142
  %144 = or i32 %141, %143
  %145 = load i32, i32* @B577XX_FCOE_CONNECTION_TYPE, align 4
  %146 = load i32, i32* @B577XX_DOORBELL_HDR_CONN_TYPE_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = or i32 %144, %147
  %149 = load %struct.b577xx_fcoe_rx_doorbell*, %struct.b577xx_fcoe_rx_doorbell** %12, align 8
  %150 = getelementptr inbounds %struct.b577xx_fcoe_rx_doorbell, %struct.b577xx_fcoe_rx_doorbell* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* @B577XX_FCOE_RX_DOORBELL_NEGATIVE_ARM_SHIFT, align 4
  %153 = shl i32 2, %152
  %154 = load i32, i32* @B577XX_FCOE_RX_DOORBELL_OPCODE_SHIFT, align 4
  %155 = shl i32 3, %154
  %156 = or i32 %153, %155
  %157 = load %struct.b577xx_fcoe_rx_doorbell*, %struct.b577xx_fcoe_rx_doorbell** %12, align 8
  %158 = getelementptr inbounds %struct.b577xx_fcoe_rx_doorbell, %struct.b577xx_fcoe_rx_doorbell* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  %159 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %160 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %159, i32 0, i32 11
  %161 = call i32 @spin_lock_init(i32* %160)
  %162 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %163 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %162, i32 0, i32 10
  %164 = call i32 @spin_lock_init(i32* %163)
  %165 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %166 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %165, i32 0, i32 9
  %167 = call i32 @INIT_LIST_HEAD(i32* %166)
  %168 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %169 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %168, i32 0, i32 8
  %170 = call i32 @INIT_LIST_HEAD(i32* %169)
  %171 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %172 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %171, i32 0, i32 7
  %173 = call i32 @INIT_LIST_HEAD(i32* %172)
  %174 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %175 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %174, i32 0, i32 6
  %176 = call i32 @INIT_LIST_HEAD(i32* %175)
  %177 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %178 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %177, i32 0, i32 5
  %179 = call i32 @init_waitqueue_head(i32* %178)
  %180 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %181 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %180, i32 0, i32 4
  %182 = call i32 @init_waitqueue_head(i32* %181)
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %127, %55, %40
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @BNX2FC_TGT_DBG(%struct.bnx2fc_rport*, i8*, ...) #1

declare dso_local i32 @bnx2fc_alloc_conn_id(%struct.bnx2fc_hba*, %struct.bnx2fc_rport*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
