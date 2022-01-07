; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_rdy_to_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_rdy_to_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_tgt_cmd = type { i64, i32, i32, i32, i32, %struct.TYPE_15__, i64, %struct.TYPE_10__*, %struct.qla_qpair*, %struct.qla_tgt*, %struct.scsi_qla_host* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.qla_qpair = type { i64, i32, %struct.TYPE_18__*, i32 (%struct.qla_qpair*)*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.qla_tgt = type { i32 }
%struct.scsi_qla_host = type { %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { {}* }
%struct.ctio7_to_24xx = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.qla_tgt_prm = type { i32, i64, i32*, %struct.qla_tgt*, %struct.qla_tgt_cmd* }

@EAGAIN = common dso_local global i32 0, align 4
@QLA_TGT_STATE_DATA_IN = common dso_local global i32 0, align 4
@ql_dbg_async = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"RESET-XFR online/active/old-count/new-count = %d/%d/%d/%d.\0A\00", align 1
@CTIO7_FLAGS_DATA_OUT = common dso_local global i32 0, align 4
@CTIO7_FLAGS_STATUS_MODE_0 = common dso_local global i32 0, align 4
@TARGET_PROT_NORMAL = common dso_local global i64 0, align 8
@QLA_TGT_STATE_NEED_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlt_rdy_to_xfer(%struct.qla_tgt_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qla_tgt_cmd*, align 8
  %4 = alloca %struct.ctio7_to_24xx*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.qla_tgt*, align 8
  %7 = alloca %struct.qla_tgt_prm, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qla_qpair*, align 8
  store %struct.qla_tgt_cmd* %0, %struct.qla_tgt_cmd** %3, align 8
  %11 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %11, i32 0, i32 10
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  store %struct.scsi_qla_host* %13, %struct.scsi_qla_host** %5, align 8
  %14 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %14, i32 0, i32 9
  %16 = load %struct.qla_tgt*, %struct.qla_tgt** %15, align 8
  store %struct.qla_tgt* %16, %struct.qla_tgt** %6, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %17, i32 0, i32 8
  %19 = load %struct.qla_qpair*, %struct.qla_qpair** %18, align 8
  store %struct.qla_qpair* %19, %struct.qla_qpair** %10, align 8
  %20 = call i32 @memset(%struct.qla_tgt_prm* %7, i32 0, i32 40)
  %21 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %22 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %7, i32 0, i32 4
  store %struct.qla_tgt_cmd* %21, %struct.qla_tgt_cmd** %22, align 8
  %23 = load %struct.qla_tgt*, %struct.qla_tgt** %6, align 8
  %24 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %7, i32 0, i32 3
  store %struct.qla_tgt* %23, %struct.qla_tgt** %24, align 8
  %25 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %7, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %7, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = call i64 @qlt_pci_map_calc_cnt(%struct.qla_tgt_prm* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %201

32:                                               ; preds = %1
  %33 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %34 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %42 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %37
  %46 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %47 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %46, i32 0, i32 7
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %91

50:                                               ; preds = %45
  %51 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %52 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %51, i32 0, i32 7
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %50, %37, %32
  %58 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %59 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  %60 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %61 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @QLA_TGT_STATE_DATA_IN, align 4
  %63 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %66 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = bitcast {}** %71 to i32 (%struct.qla_tgt_cmd*)**
  %73 = load i32 (%struct.qla_tgt_cmd*)*, i32 (%struct.qla_tgt_cmd*)** %72, align 8
  %74 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %75 = call i32 %73(%struct.qla_tgt_cmd* %74)
  %76 = load i32, i32* @ql_dbg_async, align 4
  %77 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %78 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %79 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %83 = call i32 @qla2x00_reset_active(%struct.scsi_qla_host* %82)
  %84 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %85 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %88 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @ql_dbg_qp(i32 %76, %struct.qla_qpair* %77, i32 57602, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %83, i64 %86, i64 %89)
  store i32 0, i32* %2, align 4
  br label %201

91:                                               ; preds = %50, %45
  %92 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %93 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @spin_lock_irqsave(i32 %94, i64 %95)
  %97 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %98 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %7, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @qlt_check_reserve_free_req(%struct.qla_qpair* %97, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %191

104:                                              ; preds = %91
  %105 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %106 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %112 = call i32 @qlt_build_ctio_crc2_pkt(%struct.qla_qpair* %111, %struct.qla_tgt_prm* %7)
  store i32 %112, i32* %9, align 4
  br label %116

113:                                              ; preds = %104
  %114 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %115 = call i32 @qlt_24xx_build_ctio_pkt(%struct.qla_qpair* %114, %struct.qla_tgt_prm* %7)
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %7, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %126 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %125, i32 0, i32 2
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, %124
  store i32 %130, i32* %128, align 4
  br label %191

131:                                              ; preds = %116
  %132 = getelementptr inbounds %struct.qla_tgt_prm, %struct.qla_tgt_prm* %7, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to %struct.ctio7_to_24xx*
  store %struct.ctio7_to_24xx* %134, %struct.ctio7_to_24xx** %4, align 8
  %135 = load i32, i32* @CTIO7_FLAGS_DATA_OUT, align 4
  %136 = load i32, i32* @CTIO7_FLAGS_STATUS_MODE_0, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @cpu_to_le16(i32 %137)
  %139 = load %struct.ctio7_to_24xx*, %struct.ctio7_to_24xx** %4, align 8
  %140 = getelementptr inbounds %struct.ctio7_to_24xx, %struct.ctio7_to_24xx* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %138
  store i32 %144, i32* %142, align 4
  %145 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %146 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @TARGET_PROT_NORMAL, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %131
  %152 = call i32 @qlt_load_data_segments(%struct.qla_tgt_prm* %7)
  br label %153

153:                                              ; preds = %151, %131
  %154 = load i32, i32* @QLA_TGT_STATE_NEED_DATA, align 4
  %155 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %156 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %158 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %157, i32 0, i32 2
  store i32 1, i32* %158, align 4
  %159 = load %struct.ctio7_to_24xx*, %struct.ctio7_to_24xx** %4, align 8
  %160 = getelementptr inbounds %struct.ctio7_to_24xx, %struct.ctio7_to_24xx* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @le16_to_cpu(i32 %163)
  %165 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %166 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  %167 = call i32 (...) @wmb()
  %168 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %169 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %168, i32 0, i32 3
  %170 = load i32 (%struct.qla_qpair*)*, i32 (%struct.qla_qpair*)** %169, align 8
  %171 = icmp ne i32 (%struct.qla_qpair*)* %170, null
  br i1 %171, label %172, label %178

172:                                              ; preds = %153
  %173 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %174 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %173, i32 0, i32 3
  %175 = load i32 (%struct.qla_qpair*)*, i32 (%struct.qla_qpair*)** %174, align 8
  %176 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %177 = call i32 %175(%struct.qla_qpair* %176)
  br label %184

178:                                              ; preds = %153
  %179 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %180 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %181 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %180, i32 0, i32 2
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  %183 = call i32 @qla2x00_start_iocbs(%struct.scsi_qla_host* %179, %struct.TYPE_18__* %182)
  br label %184

184:                                              ; preds = %178, %172
  %185 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %186 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i64, i64* %8, align 8
  %189 = call i32 @spin_unlock_irqrestore(i32 %187, i64 %188)
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %2, align 4
  br label %201

191:                                              ; preds = %122, %103
  %192 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %193 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %3, align 8
  %194 = call i32 @qlt_unmap_sg(%struct.scsi_qla_host* %192, %struct.qla_tgt_cmd* %193)
  %195 = load %struct.qla_qpair*, %struct.qla_qpair** %10, align 8
  %196 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i64, i64* %8, align 8
  %199 = call i32 @spin_unlock_irqrestore(i32 %197, i64 %198)
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %191, %184, %57, %29
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @memset(%struct.qla_tgt_prm*, i32, i32) #1

declare dso_local i64 @qlt_pci_map_calc_cnt(%struct.qla_tgt_prm*) #1

declare dso_local i32 @ql_dbg_qp(i32, %struct.qla_qpair*, i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @qla2x00_reset_active(%struct.scsi_qla_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @qlt_check_reserve_free_req(%struct.qla_qpair*, i32) #1

declare dso_local i32 @qlt_build_ctio_crc2_pkt(%struct.qla_qpair*, %struct.qla_tgt_prm*) #1

declare dso_local i32 @qlt_24xx_build_ctio_pkt(%struct.qla_qpair*, %struct.qla_tgt_prm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @qlt_load_data_segments(%struct.qla_tgt_prm*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @qla2x00_start_iocbs(%struct.scsi_qla_host*, %struct.TYPE_18__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @qlt_unmap_sg(%struct.scsi_qla_host*, %struct.qla_tgt_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
