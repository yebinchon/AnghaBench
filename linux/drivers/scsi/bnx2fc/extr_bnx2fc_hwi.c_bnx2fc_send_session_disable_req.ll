; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_send_session_disable_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_send_session_disable_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_port = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { i32, i32, %struct.bnx2fc_hba* }
%struct.bnx2fc_hba = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)* }
%struct.kwqe = type { i32 }
%struct.bnx2fc_rport = type { i32, i32, i32, i32*, %struct.fc_rport* }
%struct.fc_rport = type { i32 }
%struct.fcoe_ctlr = type { i32* }
%struct.fcoe_kwqe_conn_enable_disable = type { i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@FCOE_KWQE_OPCODE_DISABLE_CONN = common dso_local global i32 0, align 4
@FCOE_KWQE_LAYER_CODE = common dso_local global i32 0, align 4
@FCOE_KWQE_HEADER_LAYER_CODE_SHIFT = common dso_local global i32 0, align 4
@FCOE_KWQE_CONN_ENABLE_DISABLE_VLAN_ID_SHIFT = common dso_local global i32 0, align 4
@FCOE_KWQE_CONN_ENABLE_DISABLE_PRIORITY_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2fc_send_session_disable_req(%struct.fcoe_port* %0, %struct.bnx2fc_rport* %1) #0 {
  %3 = alloca %struct.fcoe_port*, align 8
  %4 = alloca %struct.bnx2fc_rport*, align 8
  %5 = alloca %struct.bnx2fc_interface*, align 8
  %6 = alloca %struct.fcoe_ctlr*, align 8
  %7 = alloca %struct.bnx2fc_hba*, align 8
  %8 = alloca %struct.fcoe_kwqe_conn_enable_disable, align 8
  %9 = alloca [2 x %struct.kwqe*], align 16
  %10 = alloca %struct.fc_rport*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fcoe_port* %0, %struct.fcoe_port** %3, align 8
  store %struct.bnx2fc_rport* %1, %struct.bnx2fc_rport** %4, align 8
  %14 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %15 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %14, i32 0, i32 0
  %16 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %15, align 8
  store %struct.bnx2fc_interface* %16, %struct.bnx2fc_interface** %5, align 8
  %17 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %5, align 8
  %18 = call %struct.fcoe_ctlr* @bnx2fc_to_ctlr(%struct.bnx2fc_interface* %17)
  store %struct.fcoe_ctlr* %18, %struct.fcoe_ctlr** %6, align 8
  %19 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %5, align 8
  %20 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %19, i32 0, i32 2
  %21 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %20, align 8
  store %struct.bnx2fc_hba* %21, %struct.bnx2fc_hba** %7, align 8
  %22 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %23 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %22, i32 0, i32 4
  %24 = load %struct.fc_rport*, %struct.fc_rport** %23, align 8
  store %struct.fc_rport* %24, %struct.fc_rport** %10, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = call i32 @memset(%struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 88)
  %26 = load i32, i32* @FCOE_KWQE_OPCODE_DISABLE_CONN, align 4
  %27 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 12
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @FCOE_KWQE_LAYER_CODE, align 4
  %30 = load i32, i32* @FCOE_KWQE_HEADER_LAYER_CODE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 12
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %35 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 11
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %43 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 11
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %51 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 10
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %59 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 10
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %67 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 9
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %70, i32* %73, align 4
  %74 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %75 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 9
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %83 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 8
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %86, i32* %89, align 4
  %90 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %91 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 8
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %99 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 7
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %102, i32* %105, align 4
  %106 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %107 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 7
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %115 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %118, i32* %121, align 4
  %122 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %123 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 6
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %126, i32* %129, align 4
  %130 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %131 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = and i32 %133, 255
  %135 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* %13, align 4
  %139 = and i32 %138, 65280
  %140 = ashr i32 %139, 8
  %141 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 %140, i32* %143, align 4
  %144 = load i32, i32* %13, align 4
  %145 = and i32 %144, 16711680
  %146 = ashr i32 %145, 16
  %147 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  store i32 %146, i32* %149, align 4
  %150 = load %struct.fc_rport*, %struct.fc_rport** %10, align 8
  %151 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = and i32 %153, 255
  %155 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* %13, align 4
  %159 = and i32 %158, 65280
  %160 = ashr i32 %159, 8
  %161 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* %13, align 4
  %165 = and i32 %164, 16711680
  %166 = ashr i32 %165, 16
  %167 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  store i32 %166, i32* %169, align 4
  %170 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %171 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 5
  store i32 %172, i32* %173, align 4
  %174 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %175 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 4
  store i32 %176, i32* %177, align 8
  %178 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %5, align 8
  %179 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @FCOE_KWQE_CONN_ENABLE_DISABLE_VLAN_ID_SHIFT, align 4
  %182 = shl i32 %180, %181
  %183 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 2
  store i32 %182, i32* %183, align 8
  %184 = load i32, i32* @FCOE_KWQE_CONN_ENABLE_DISABLE_PRIORITY_SHIFT, align 4
  %185 = shl i32 3, %184
  %186 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %185
  store i32 %188, i32* %186, align 8
  %189 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %5, align 8
  %190 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %8, i32 0, i32 3
  store i32 %191, i32* %192, align 4
  %193 = bitcast %struct.fcoe_kwqe_conn_enable_disable* %8 to %struct.kwqe*
  %194 = getelementptr inbounds [2 x %struct.kwqe*], [2 x %struct.kwqe*]* %9, i64 0, i64 0
  store %struct.kwqe* %193, %struct.kwqe** %194, align 16
  %195 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %7, align 8
  %196 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %195, i32 0, i32 0
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = icmp ne %struct.TYPE_4__* %197, null
  br i1 %198, label %199, label %218

199:                                              ; preds = %2
  %200 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %7, align 8
  %201 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %200, i32 0, i32 0
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)*, i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)** %203, align 8
  %205 = icmp ne i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)* %204, null
  br i1 %205, label %206, label %218

206:                                              ; preds = %199
  %207 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %7, align 8
  %208 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)*, i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)** %210, align 8
  %212 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %7, align 8
  %213 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %212, i32 0, i32 0
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds [2 x %struct.kwqe*], [2 x %struct.kwqe*]* %9, i64 0, i64 0
  %216 = load i32, i32* %11, align 4
  %217 = call i32 %211(%struct.TYPE_4__* %214, %struct.kwqe** %215, i32 %216)
  store i32 %217, i32* %12, align 4
  br label %218

218:                                              ; preds = %206, %199, %2
  %219 = load i32, i32* %12, align 4
  ret i32 %219
}

declare dso_local %struct.fcoe_ctlr* @bnx2fc_to_ctlr(%struct.bnx2fc_interface*) #1

declare dso_local i32 @memset(%struct.fcoe_kwqe_conn_enable_disable*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
