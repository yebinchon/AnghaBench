; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_seq_pdu_list.c_iscsit_do_build_pdu_and_seq_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_seq_pdu_list.c_iscsit_do_build_pdu_and_seq_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { %struct.TYPE_8__, %struct.iscsi_conn*, %struct.iscsi_seq*, %struct.iscsi_pdu* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.iscsi_conn = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.iscsi_seq = type { i32, i64, i8*, i64, i64, i64, i64 }
%struct.iscsi_pdu = type { i64, i8*, i64, i64 }
%struct.iscsi_build_list = type { i64, i64, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@PDULIST_IMMEDIATE = common dso_local global i64 0, align 8
@PDULIST_IMMEDIATE_AND_UNSOLICITED = common dso_local global i64 0, align 8
@PDULIST_UNSOLICITED = common dso_local global i64 0, align 8
@PDUTYPE_IMMEDIATE = common dso_local global i8* null, align 8
@SEQTYPE_IMMEDIATE = common dso_local global i8* null, align 8
@PDUTYPE_UNSOLICITED = common dso_local global i8* null, align 8
@SEQTYPE_UNSOLICITED = common dso_local global i8* null, align 8
@PDUTYPE_NORMAL = common dso_local global i8* null, align 8
@SEQTYPE_NORMAL = common dso_local global i8* null, align 8
@ISCSI_PDU_WRITE = common dso_local global i32 0, align 4
@RANDOM_R2T_OFFSETS = common dso_local global i32 0, align 4
@ISCSI_PDU_READ = common dso_local global i32 0, align 4
@RANDOM_DATAIN_SEQ_OFFSETS = common dso_local global i32 0, align 4
@RANDOM_DATAOUT_PDU_OFFSETS = common dso_local global i32 0, align 4
@RANDOM_DATAIN_PDU_OFFSETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_build_list*)* @iscsit_do_build_pdu_and_seq_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_do_build_pdu_and_seq_lists(%struct.iscsi_cmd* %0, %struct.iscsi_build_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_build_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.iscsi_conn*, align 8
  %17 = alloca %struct.iscsi_pdu*, align 8
  %18 = alloca %struct.iscsi_seq*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_build_list* %1, %struct.iscsi_build_list** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %19 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %19, i32 0, i32 1
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %20, align 8
  store %struct.iscsi_conn* %21, %struct.iscsi_conn** %16, align 8
  %22 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %22, i32 0, i32 3
  %24 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %23, align 8
  store %struct.iscsi_pdu* %24, %struct.iscsi_pdu** %17, align 8
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %25, i32 0, i32 2
  %27 = load %struct.iscsi_seq*, %struct.iscsi_seq** %26, align 8
  store %struct.iscsi_seq* %27, %struct.iscsi_seq** %18, align 8
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DMA_TO_DEVICE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %35, i32 0, i32 1
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %36, align 8
  %38 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  br label %50

42:                                               ; preds = %2
  %43 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %43, i32 0, i32 1
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %44, align 8
  %46 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %42, %34
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  %52 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %7, align 4
  %58 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  %59 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %66 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PDULIST_IMMEDIATE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %50
  %71 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %72 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PDULIST_IMMEDIATE_AND_UNSOLICITED, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %50
  store i32 1, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %70
  %78 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %79 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PDULIST_UNSOLICITED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %85 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PDULIST_IMMEDIATE_AND_UNSOLICITED, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %83, %77
  %90 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %91 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  %95 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @min(i64 %93, i64 %100)
  store i64 %101, i64* %15, align 8
  br label %102

102:                                              ; preds = %89, %83
  br label %103

103:                                              ; preds = %558, %529, %455, %390, %350, %268, %209, %102
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %106 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %104, %108
  br i1 %109, label %110, label %565

110:                                              ; preds = %103
  %111 = load i64, i64* %13, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %13, align 8
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %110
  %116 = load i64, i64* %10, align 8
  %117 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %117, i64 %118
  %120 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %119, i32 0, i32 3
  store i64 %116, i64* %120, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %123 = load i64, i64* %11, align 8
  %124 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %122, i64 %123
  %125 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %124, i32 0, i32 2
  store i64 %121, i64* %125, align 8
  br label %126

126:                                              ; preds = %115, %110
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %153, label %129

129:                                              ; preds = %126
  %130 = load i64, i64* %13, align 8
  %131 = icmp eq i64 %130, 1
  br i1 %131, label %132, label %153

132:                                              ; preds = %129
  %133 = load i64, i64* %11, align 8
  %134 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %135 = load i64, i64* %14, align 8
  %136 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %134, i64 %135
  %137 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %136, i32 0, i32 6
  store i64 %133, i64* %137, align 8
  %138 = load i64, i64* %14, align 8
  %139 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %140 = load i64, i64* %14, align 8
  %141 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %139, i64 %140
  %142 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %141, i32 0, i32 5
  store i64 %138, i64* %142, align 8
  %143 = load i64, i64* %10, align 8
  %144 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %145 = load i64, i64* %14, align 8
  %146 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %144, i64 %145
  %147 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %146, i32 0, i32 4
  store i64 %143, i64* %147, align 8
  %148 = load i64, i64* %10, align 8
  %149 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %149, i64 %150
  %152 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %151, i32 0, i32 3
  store i64 %148, i64* %152, align 8
  br label %153

153:                                              ; preds = %132, %129, %126
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %210

156:                                              ; preds = %153
  store i32 0, i32* %6, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %156
  %160 = load i8*, i8** @PDUTYPE_IMMEDIATE, align 8
  %161 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %162 = load i64, i64* %11, align 8
  %163 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %161, i64 %162
  %164 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %163, i32 0, i32 1
  store i8* %160, i8** %164, align 8
  %165 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %166 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %169 = load i64, i64* %11, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %11, align 8
  %171 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %168, i64 %169
  %172 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %171, i32 0, i32 0
  store i64 %167, i64* %172, align 8
  br label %173

173:                                              ; preds = %159, %156
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %193, label %176

176:                                              ; preds = %173
  %177 = load i8*, i8** @SEQTYPE_IMMEDIATE, align 8
  %178 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %179 = load i64, i64* %14, align 8
  %180 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %178, i64 %179
  %181 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %180, i32 0, i32 2
  store i8* %177, i8** %181, align 8
  %182 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %183 = load i64, i64* %14, align 8
  %184 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %182, i64 %183
  %185 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %184, i32 0, i32 0
  store i32 1, i32* %185, align 8
  %186 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %187 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %190 = load i64, i64* %14, align 8
  %191 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %189, i64 %190
  %192 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %191, i32 0, i32 1
  store i64 %188, i64* %192, align 8
  br label %193

193:                                              ; preds = %176, %173
  %194 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %195 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %10, align 8
  %198 = add nsw i64 %197, %196
  store i64 %198, i64* %10, align 8
  store i64 0, i64* %13, align 8
  %199 = load i64, i64* %14, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %14, align 8
  %201 = load i64, i64* %15, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %193
  %204 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %205 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %15, align 8
  %208 = sub nsw i64 %207, %206
  store i64 %208, i64* %15, align 8
  br label %209

209:                                              ; preds = %203, %193
  br label %103

210:                                              ; preds = %153
  %211 = load i64, i64* %15, align 8
  %212 = icmp sgt i64 %211, 0
  br i1 %212, label %213, label %400

213:                                              ; preds = %210
  %214 = load i64, i64* %10, align 8
  %215 = load i64, i64* %12, align 8
  %216 = add nsw i64 %214, %215
  %217 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %218 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp sge i64 %216, %220
  br i1 %221, label %222, label %285

222:                                              ; preds = %213
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %241, label %225

225:                                              ; preds = %222
  %226 = load i8*, i8** @PDUTYPE_UNSOLICITED, align 8
  %227 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %228 = load i64, i64* %11, align 8
  %229 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %227, i64 %228
  %230 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %229, i32 0, i32 1
  store i8* %226, i8** %230, align 8
  %231 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %232 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* %10, align 8
  %236 = sub nsw i64 %234, %235
  %237 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %238 = load i64, i64* %11, align 8
  %239 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %237, i64 %238
  %240 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %239, i32 0, i32 0
  store i64 %236, i64* %240, align 8
  br label %241

241:                                              ; preds = %225, %222
  %242 = load i32, i32* %8, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %268, label %244

244:                                              ; preds = %241
  %245 = load i8*, i8** @SEQTYPE_UNSOLICITED, align 8
  %246 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %247 = load i64, i64* %14, align 8
  %248 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %246, i64 %247
  %249 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %248, i32 0, i32 2
  store i8* %245, i8** %249, align 8
  %250 = load i64, i64* %13, align 8
  %251 = trunc i64 %250 to i32
  %252 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %253 = load i64, i64* %14, align 8
  %254 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %252, i64 %253
  %255 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %254, i32 0, i32 0
  store i32 %251, i32* %255, align 8
  %256 = load i64, i64* %9, align 8
  %257 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %258 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* %10, align 8
  %262 = sub nsw i64 %260, %261
  %263 = add nsw i64 %256, %262
  %264 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %265 = load i64, i64* %14, align 8
  %266 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %264, i64 %265
  %267 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %266, i32 0, i32 1
  store i64 %263, i64* %267, align 8
  br label %268

268:                                              ; preds = %244, %241
  %269 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %270 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* %10, align 8
  %274 = sub nsw i64 %272, %273
  %275 = load i64, i64* %15, align 8
  %276 = sub nsw i64 %275, %274
  store i64 %276, i64* %15, align 8
  %277 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %278 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* %10, align 8
  %282 = sub nsw i64 %280, %281
  %283 = load i64, i64* %10, align 8
  %284 = add nsw i64 %283, %282
  store i64 %284, i64* %10, align 8
  br label %103

285:                                              ; preds = %213
  %286 = load i64, i64* %10, align 8
  %287 = load i64, i64* %12, align 8
  %288 = add nsw i64 %286, %287
  %289 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  %290 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %289, i32 0, i32 0
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = icmp sge i64 %288, %295
  br i1 %296, label %297, label %375

297:                                              ; preds = %285
  %298 = load i32, i32* %7, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %320, label %300

300:                                              ; preds = %297
  %301 = load i8*, i8** @PDUTYPE_UNSOLICITED, align 8
  %302 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %303 = load i64, i64* %11, align 8
  %304 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %302, i64 %303
  %305 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %304, i32 0, i32 1
  store i8* %301, i8** %305, align 8
  %306 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  %307 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %306, i32 0, i32 0
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* %10, align 8
  %314 = sub nsw i64 %312, %313
  %315 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %316 = load i64, i64* %11, align 8
  %317 = add nsw i64 %316, 1
  store i64 %317, i64* %11, align 8
  %318 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %315, i64 %316
  %319 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %318, i32 0, i32 0
  store i64 %314, i64* %319, align 8
  br label %320

320:                                              ; preds = %300, %297
  %321 = load i32, i32* %8, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %350, label %323

323:                                              ; preds = %320
  %324 = load i8*, i8** @SEQTYPE_UNSOLICITED, align 8
  %325 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %326 = load i64, i64* %14, align 8
  %327 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %325, i64 %326
  %328 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %327, i32 0, i32 2
  store i8* %324, i8** %328, align 8
  %329 = load i64, i64* %13, align 8
  %330 = trunc i64 %329 to i32
  %331 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %332 = load i64, i64* %14, align 8
  %333 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %331, i64 %332
  %334 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %333, i32 0, i32 0
  store i32 %330, i32* %334, align 8
  %335 = load i64, i64* %9, align 8
  %336 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  %337 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %336, i32 0, i32 0
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* %10, align 8
  %344 = sub nsw i64 %342, %343
  %345 = add nsw i64 %335, %344
  %346 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %347 = load i64, i64* %14, align 8
  %348 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %346, i64 %347
  %349 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %348, i32 0, i32 1
  store i64 %345, i64* %349, align 8
  br label %350

350:                                              ; preds = %323, %320
  %351 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  %352 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %351, i32 0, i32 0
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* %10, align 8
  %359 = sub nsw i64 %357, %358
  %360 = load i64, i64* %15, align 8
  %361 = sub nsw i64 %360, %359
  store i64 %361, i64* %15, align 8
  %362 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  %363 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %362, i32 0, i32 0
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* %10, align 8
  %370 = sub nsw i64 %368, %369
  %371 = load i64, i64* %10, align 8
  %372 = add nsw i64 %371, %370
  store i64 %372, i64* %10, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %13, align 8
  %373 = load i64, i64* %14, align 8
  %374 = add nsw i64 %373, 1
  store i64 %374, i64* %14, align 8
  br label %103

375:                                              ; preds = %285
  %376 = load i32, i32* %7, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %390, label %378

378:                                              ; preds = %375
  %379 = load i8*, i8** @PDUTYPE_UNSOLICITED, align 8
  %380 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %381 = load i64, i64* %11, align 8
  %382 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %380, i64 %381
  %383 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %382, i32 0, i32 1
  store i8* %379, i8** %383, align 8
  %384 = load i64, i64* %12, align 8
  %385 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %386 = load i64, i64* %11, align 8
  %387 = add nsw i64 %386, 1
  store i64 %387, i64* %11, align 8
  %388 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %385, i64 %386
  %389 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %388, i32 0, i32 0
  store i64 %384, i64* %389, align 8
  br label %390

390:                                              ; preds = %378, %375
  %391 = load i64, i64* %12, align 8
  %392 = load i64, i64* %9, align 8
  %393 = add nsw i64 %392, %391
  store i64 %393, i64* %9, align 8
  %394 = load i64, i64* %12, align 8
  %395 = load i64, i64* %10, align 8
  %396 = add nsw i64 %395, %394
  store i64 %396, i64* %10, align 8
  %397 = load i64, i64* %12, align 8
  %398 = load i64, i64* %15, align 8
  %399 = sub nsw i64 %398, %397
  store i64 %399, i64* %15, align 8
  br label %103

400:                                              ; preds = %210
  %401 = load i64, i64* %10, align 8
  %402 = load i64, i64* %12, align 8
  %403 = add nsw i64 %401, %402
  %404 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %405 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = icmp sge i64 %403, %407
  br i1 %408, label %409, label %464

409:                                              ; preds = %400
  %410 = load i32, i32* %7, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %428, label %412

412:                                              ; preds = %409
  %413 = load i8*, i8** @PDUTYPE_NORMAL, align 8
  %414 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %415 = load i64, i64* %11, align 8
  %416 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %414, i64 %415
  %417 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %416, i32 0, i32 1
  store i8* %413, i8** %417, align 8
  %418 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %419 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 1
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* %10, align 8
  %423 = sub nsw i64 %421, %422
  %424 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %425 = load i64, i64* %11, align 8
  %426 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %424, i64 %425
  %427 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %426, i32 0, i32 0
  store i64 %423, i64* %427, align 8
  br label %428

428:                                              ; preds = %412, %409
  %429 = load i32, i32* %8, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %455, label %431

431:                                              ; preds = %428
  %432 = load i8*, i8** @SEQTYPE_NORMAL, align 8
  %433 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %434 = load i64, i64* %14, align 8
  %435 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %433, i64 %434
  %436 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %435, i32 0, i32 2
  store i8* %432, i8** %436, align 8
  %437 = load i64, i64* %13, align 8
  %438 = trunc i64 %437 to i32
  %439 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %440 = load i64, i64* %14, align 8
  %441 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %439, i64 %440
  %442 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %441, i32 0, i32 0
  store i32 %438, i32* %442, align 8
  %443 = load i64, i64* %9, align 8
  %444 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %445 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = load i64, i64* %10, align 8
  %449 = sub nsw i64 %447, %448
  %450 = add nsw i64 %443, %449
  %451 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %452 = load i64, i64* %14, align 8
  %453 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %451, i64 %452
  %454 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %453, i32 0, i32 1
  store i64 %450, i64* %454, align 8
  br label %455

455:                                              ; preds = %431, %428
  %456 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %457 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 1
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* %10, align 8
  %461 = sub nsw i64 %459, %460
  %462 = load i64, i64* %10, align 8
  %463 = add nsw i64 %462, %461
  store i64 %463, i64* %10, align 8
  br label %103

464:                                              ; preds = %400
  %465 = load i64, i64* %9, align 8
  %466 = load i64, i64* %12, align 8
  %467 = add nsw i64 %465, %466
  %468 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  %469 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %468, i32 0, i32 0
  %470 = load %struct.TYPE_7__*, %struct.TYPE_7__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %470, i32 0, i32 0
  %472 = load %struct.TYPE_6__*, %struct.TYPE_6__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 3
  %474 = load i64, i64* %473, align 8
  %475 = icmp sge i64 %467, %474
  br i1 %475, label %476, label %543

476:                                              ; preds = %464
  %477 = load i32, i32* %7, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %499, label %479

479:                                              ; preds = %476
  %480 = load i8*, i8** @PDUTYPE_NORMAL, align 8
  %481 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %482 = load i64, i64* %11, align 8
  %483 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %481, i64 %482
  %484 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %483, i32 0, i32 1
  store i8* %480, i8** %484, align 8
  %485 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  %486 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %485, i32 0, i32 0
  %487 = load %struct.TYPE_7__*, %struct.TYPE_7__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %487, i32 0, i32 0
  %489 = load %struct.TYPE_6__*, %struct.TYPE_6__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i32 0, i32 3
  %491 = load i64, i64* %490, align 8
  %492 = load i64, i64* %9, align 8
  %493 = sub nsw i64 %491, %492
  %494 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %495 = load i64, i64* %11, align 8
  %496 = add nsw i64 %495, 1
  store i64 %496, i64* %11, align 8
  %497 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %494, i64 %495
  %498 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %497, i32 0, i32 0
  store i64 %493, i64* %498, align 8
  br label %499

499:                                              ; preds = %479, %476
  %500 = load i32, i32* %8, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %529, label %502

502:                                              ; preds = %499
  %503 = load i8*, i8** @SEQTYPE_NORMAL, align 8
  %504 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %505 = load i64, i64* %14, align 8
  %506 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %504, i64 %505
  %507 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %506, i32 0, i32 2
  store i8* %503, i8** %507, align 8
  %508 = load i64, i64* %13, align 8
  %509 = trunc i64 %508 to i32
  %510 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %511 = load i64, i64* %14, align 8
  %512 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %510, i64 %511
  %513 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %512, i32 0, i32 0
  store i32 %509, i32* %513, align 8
  %514 = load i64, i64* %9, align 8
  %515 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  %516 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %515, i32 0, i32 0
  %517 = load %struct.TYPE_7__*, %struct.TYPE_7__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %517, i32 0, i32 0
  %519 = load %struct.TYPE_6__*, %struct.TYPE_6__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %519, i32 0, i32 3
  %521 = load i64, i64* %520, align 8
  %522 = load i64, i64* %9, align 8
  %523 = sub nsw i64 %521, %522
  %524 = add nsw i64 %514, %523
  %525 = load %struct.iscsi_seq*, %struct.iscsi_seq** %18, align 8
  %526 = load i64, i64* %14, align 8
  %527 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %525, i64 %526
  %528 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %527, i32 0, i32 1
  store i64 %524, i64* %528, align 8
  br label %529

529:                                              ; preds = %502, %499
  %530 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  %531 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %530, i32 0, i32 0
  %532 = load %struct.TYPE_7__*, %struct.TYPE_7__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %532, i32 0, i32 0
  %534 = load %struct.TYPE_6__*, %struct.TYPE_6__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %534, i32 0, i32 3
  %536 = load i64, i64* %535, align 8
  %537 = load i64, i64* %9, align 8
  %538 = sub nsw i64 %536, %537
  %539 = load i64, i64* %10, align 8
  %540 = add nsw i64 %539, %538
  store i64 %540, i64* %10, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %13, align 8
  %541 = load i64, i64* %14, align 8
  %542 = add nsw i64 %541, 1
  store i64 %542, i64* %14, align 8
  br label %103

543:                                              ; preds = %464
  %544 = load i32, i32* %7, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %558, label %546

546:                                              ; preds = %543
  %547 = load i8*, i8** @PDUTYPE_NORMAL, align 8
  %548 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %549 = load i64, i64* %11, align 8
  %550 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %548, i64 %549
  %551 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %550, i32 0, i32 1
  store i8* %547, i8** %551, align 8
  %552 = load i64, i64* %12, align 8
  %553 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %17, align 8
  %554 = load i64, i64* %11, align 8
  %555 = add nsw i64 %554, 1
  store i64 %555, i64* %11, align 8
  %556 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %553, i64 %554
  %557 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %556, i32 0, i32 0
  store i64 %552, i64* %557, align 8
  br label %558

558:                                              ; preds = %546, %543
  %559 = load i64, i64* %12, align 8
  %560 = load i64, i64* %9, align 8
  %561 = add nsw i64 %560, %559
  store i64 %561, i64* %9, align 8
  %562 = load i64, i64* %12, align 8
  %563 = load i64, i64* %10, align 8
  %564 = add nsw i64 %563, %562
  store i64 %564, i64* %10, align 8
  br label %103

565:                                              ; preds = %103
  %566 = load i32, i32* %8, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %632, label %568

568:                                              ; preds = %565
  %569 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %570 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %569, i32 0, i32 2
  %571 = load i32, i32* %570, align 8
  %572 = load i32, i32* @ISCSI_PDU_WRITE, align 4
  %573 = and i32 %571, %572
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %598

575:                                              ; preds = %568
  %576 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %577 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %576, i32 0, i32 3
  %578 = load i32, i32* %577, align 4
  %579 = load i32, i32* @RANDOM_R2T_OFFSETS, align 4
  %580 = and i32 %578, %579
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %591

582:                                              ; preds = %575
  %583 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %584 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %585 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %584, i32 0, i32 0
  %586 = load i64, i64* %585, align 8
  %587 = call i64 @iscsit_randomize_seq_lists(%struct.iscsi_cmd* %583, i64 %586)
  %588 = icmp slt i64 %587, 0
  br i1 %588, label %589, label %590

589:                                              ; preds = %582
  store i32 -1, i32* %3, align 4
  br label %700

590:                                              ; preds = %582
  br label %597

591:                                              ; preds = %575
  %592 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %593 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %594 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %593, i32 0, i32 0
  %595 = load i64, i64* %594, align 8
  %596 = call i32 @iscsit_ordered_seq_lists(%struct.iscsi_cmd* %592, i64 %595)
  br label %597

597:                                              ; preds = %591, %590
  br label %629

598:                                              ; preds = %568
  %599 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %600 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %599, i32 0, i32 2
  %601 = load i32, i32* %600, align 8
  %602 = load i32, i32* @ISCSI_PDU_READ, align 4
  %603 = and i32 %601, %602
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %628

605:                                              ; preds = %598
  %606 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %607 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %606, i32 0, i32 3
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* @RANDOM_DATAIN_SEQ_OFFSETS, align 4
  %610 = and i32 %608, %609
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %621

612:                                              ; preds = %605
  %613 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %614 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %615 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %614, i32 0, i32 0
  %616 = load i64, i64* %615, align 8
  %617 = call i64 @iscsit_randomize_seq_lists(%struct.iscsi_cmd* %613, i64 %616)
  %618 = icmp slt i64 %617, 0
  br i1 %618, label %619, label %620

619:                                              ; preds = %612
  store i32 -1, i32* %3, align 4
  br label %700

620:                                              ; preds = %612
  br label %627

621:                                              ; preds = %605
  %622 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %623 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %624 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %623, i32 0, i32 0
  %625 = load i64, i64* %624, align 8
  %626 = call i32 @iscsit_ordered_seq_lists(%struct.iscsi_cmd* %622, i64 %625)
  br label %627

627:                                              ; preds = %621, %620
  br label %628

628:                                              ; preds = %627, %598
  br label %629

629:                                              ; preds = %628, %597
  %630 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %631 = call i32 @iscsit_dump_seq_list(%struct.iscsi_cmd* %630)
  br label %632

632:                                              ; preds = %629, %565
  %633 = load i32, i32* %7, align 4
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %699, label %635

635:                                              ; preds = %632
  %636 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %637 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %636, i32 0, i32 2
  %638 = load i32, i32* %637, align 8
  %639 = load i32, i32* @ISCSI_PDU_WRITE, align 4
  %640 = and i32 %638, %639
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %665

642:                                              ; preds = %635
  %643 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %644 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %643, i32 0, i32 3
  %645 = load i32, i32* %644, align 4
  %646 = load i32, i32* @RANDOM_DATAOUT_PDU_OFFSETS, align 4
  %647 = and i32 %645, %646
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %649, label %658

649:                                              ; preds = %642
  %650 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %651 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %652 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %651, i32 0, i32 0
  %653 = load i64, i64* %652, align 8
  %654 = call i64 @iscsit_randomize_pdu_lists(%struct.iscsi_cmd* %650, i64 %653)
  %655 = icmp slt i64 %654, 0
  br i1 %655, label %656, label %657

656:                                              ; preds = %649
  store i32 -1, i32* %3, align 4
  br label %700

657:                                              ; preds = %649
  br label %664

658:                                              ; preds = %642
  %659 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %660 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %661 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %660, i32 0, i32 0
  %662 = load i64, i64* %661, align 8
  %663 = call i32 @iscsit_ordered_pdu_lists(%struct.iscsi_cmd* %659, i64 %662)
  br label %664

664:                                              ; preds = %658, %657
  br label %696

665:                                              ; preds = %635
  %666 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %667 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %666, i32 0, i32 2
  %668 = load i32, i32* %667, align 8
  %669 = load i32, i32* @ISCSI_PDU_READ, align 4
  %670 = and i32 %668, %669
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %695

672:                                              ; preds = %665
  %673 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %674 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %673, i32 0, i32 3
  %675 = load i32, i32* %674, align 4
  %676 = load i32, i32* @RANDOM_DATAIN_PDU_OFFSETS, align 4
  %677 = and i32 %675, %676
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %688

679:                                              ; preds = %672
  %680 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %681 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %682 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %681, i32 0, i32 0
  %683 = load i64, i64* %682, align 8
  %684 = call i64 @iscsit_randomize_pdu_lists(%struct.iscsi_cmd* %680, i64 %683)
  %685 = icmp slt i64 %684, 0
  br i1 %685, label %686, label %687

686:                                              ; preds = %679
  store i32 -1, i32* %3, align 4
  br label %700

687:                                              ; preds = %679
  br label %694

688:                                              ; preds = %672
  %689 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %690 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %5, align 8
  %691 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %690, i32 0, i32 0
  %692 = load i64, i64* %691, align 8
  %693 = call i32 @iscsit_ordered_pdu_lists(%struct.iscsi_cmd* %689, i64 %692)
  br label %694

694:                                              ; preds = %688, %687
  br label %695

695:                                              ; preds = %694, %665
  br label %696

696:                                              ; preds = %695, %664
  %697 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %698 = call i32 @iscsit_dump_pdu_list(%struct.iscsi_cmd* %697)
  br label %699

699:                                              ; preds = %696, %632
  store i32 0, i32* %3, align 4
  br label %700

700:                                              ; preds = %699, %686, %656, %619, %589
  %701 = load i32, i32* %3, align 4
  ret i32 %701
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @iscsit_randomize_seq_lists(%struct.iscsi_cmd*, i64) #1

declare dso_local i32 @iscsit_ordered_seq_lists(%struct.iscsi_cmd*, i64) #1

declare dso_local i32 @iscsit_dump_seq_list(%struct.iscsi_cmd*) #1

declare dso_local i64 @iscsit_randomize_pdu_lists(%struct.iscsi_cmd*, i64) #1

declare dso_local i32 @iscsit_ordered_pdu_lists(%struct.iscsi_cmd*, i64) #1

declare dso_local i32 @iscsit_dump_pdu_list(%struct.iscsi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
