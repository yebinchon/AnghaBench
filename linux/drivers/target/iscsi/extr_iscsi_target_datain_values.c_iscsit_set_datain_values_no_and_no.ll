; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_datain_values.c_iscsit_set_datain_values_no_and_no.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_datain_values.c_iscsit_set_datain_values_no_and_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_datain_req = type { i64, i64, i64, i64, i64, i64, i8*, i64 }
%struct.iscsi_cmd = type { i64, i64, i32, %struct.TYPE_6__, i32, %struct.iscsi_conn* }
%struct.TYPE_6__ = type { i64 }
%struct.iscsi_conn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_datain = type { i32, i64, i32, i32 }
%struct.iscsi_pdu = type { i32, i64, i32, i32 }
%struct.iscsi_seq = type { i32, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"ITT: 0x%08x read_data_left is zero!\0A\00", align 1
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_ACK = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_STATUS = common dso_local global i32 0, align 4
@DATAIN_COMPLETE_NORMAL = common dso_local global i8* null, align 8
@DATAIN_WITHIN_COMMAND_RECOVERY = common dso_local global i64 0, align 8
@DATAIN_COMPLETE_WITHIN_COMMAND_RECOVERY = common dso_local global i8* null, align 8
@DATAIN_COMPLETE_CONNECTION_RECOVERY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_datain_req* (%struct.iscsi_cmd*, %struct.iscsi_datain*)* @iscsit_set_datain_values_no_and_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_datain_req* @iscsit_set_datain_values_no_and_no(%struct.iscsi_cmd* %0, %struct.iscsi_datain* %1) #0 {
  %3 = alloca %struct.iscsi_datain_req*, align 8
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_datain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iscsi_conn*, align 8
  %10 = alloca %struct.iscsi_datain_req*, align 8
  %11 = alloca %struct.iscsi_pdu*, align 8
  %12 = alloca %struct.iscsi_seq*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_datain* %1, %struct.iscsi_datain** %5, align 8
  %13 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %13, i32 0, i32 5
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  store %struct.iscsi_conn* %15, %struct.iscsi_conn** %9, align 8
  store %struct.iscsi_seq* null, %struct.iscsi_seq** %12, align 8
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %17 = call %struct.iscsi_datain_req* @iscsit_get_datain_req(%struct.iscsi_cmd* %16)
  store %struct.iscsi_datain_req* %17, %struct.iscsi_datain_req** %10, align 8
  %18 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %19 = icmp ne %struct.iscsi_datain_req* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %326

21:                                               ; preds = %2
  %22 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %23 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %28 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %33 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %34 = call i64 @iscsit_create_recovery_datain_values_datasequenceinorder_no(%struct.iscsi_cmd* %32, %struct.iscsi_datain_req* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %326

37:                                               ; preds = %31
  %38 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %39 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %38, i32 0, i32 7
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %26, %21
  %41 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %42 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  br label %53

49:                                               ; preds = %40
  %50 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %51 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i64 [ %48, %45 ], [ %52, %49 ]
  store i64 %54, i64* %6, align 8
  %55 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %56 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %61 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  br label %67

63:                                               ; preds = %53
  %64 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %65 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i64 [ %62, %59 ], [ %66, %63 ]
  store i64 %68, i64* %8, align 8
  %69 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %67
  %78 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %79 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %80)
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %326

82:                                               ; preds = %67
  %83 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call %struct.iscsi_seq* @iscsit_get_seq_holder_for_datain(%struct.iscsi_cmd* %83, i64 %84)
  store %struct.iscsi_seq* %85, %struct.iscsi_seq** %12, align 8
  %86 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %87 = icmp ne %struct.iscsi_seq* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %326

89:                                               ; preds = %82
  %90 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %91 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %93 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %89
  %97 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %98 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %103 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %106 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %96, %89
  %108 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %109 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %110 = call %struct.iscsi_pdu* @iscsit_get_pdu_holder_for_seq(%struct.iscsi_cmd* %108, %struct.iscsi_seq* %109)
  store %struct.iscsi_pdu* %110, %struct.iscsi_pdu** %11, align 8
  %111 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %112 = icmp ne %struct.iscsi_pdu* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %326

114:                                              ; preds = %107
  %115 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %116 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %119 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %114
  %123 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %124 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %125 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %129 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %122
  %137 = load i32, i32* @ISCSI_FLAG_DATA_ACK, align 4
  %138 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %139 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %122
  %143 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %144 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %143, i32 0, i32 1
  store i64 0, i64* %144, align 8
  %145 = load i64, i64* %8, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %8, align 8
  br label %155

147:                                              ; preds = %114
  %148 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %149 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %152 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, %150
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %147, %142
  %156 = load i64, i64* %6, align 8
  %157 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %158 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %156, %159
  %161 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %162 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %160, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %155
  %167 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %168 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %169 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %166, %155
  %173 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %174 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %172
  %178 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %179 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 8
  %182 = sext i32 %180 to i64
  br label %188

183:                                              ; preds = %172
  %184 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %185 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %185, align 8
  br label %188

188:                                              ; preds = %183, %177
  %189 = phi i64 [ %182, %177 ], [ %186, %183 ]
  %190 = trunc i64 %189 to i32
  %191 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %192 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  %193 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %194 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %208, label %197

197:                                              ; preds = %188
  %198 = load i64, i64* %8, align 8
  %199 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %200 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  %201 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %202 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %205 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %206, %203
  store i64 %207, i64* %205, align 8
  br label %219

208:                                              ; preds = %188
  %209 = load i64, i64* %8, align 8
  %210 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %211 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  %212 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %213 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %216 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, %214
  store i64 %218, i64* %216, align 8
  br label %219

219:                                              ; preds = %208, %197
  %220 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %221 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %224 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %226 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %229 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  %230 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %231 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %234 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 4
  %235 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %236 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %239 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %238, i32 0, i32 2
  store i32 %237, i32* %239, align 8
  %240 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %241 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %270, label %244

244:                                              ; preds = %219
  %245 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %246 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %244
  %252 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %253 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %256 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %255, i32 0, i32 4
  store i32 %254, i32* %256, align 8
  br label %257

257:                                              ; preds = %251, %244
  %258 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %259 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %257
  %265 = load i8*, i8** @DATAIN_COMPLETE_NORMAL, align 8
  %266 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %267 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %266, i32 0, i32 6
  store i8* %265, i8** %267, align 8
  br label %268

268:                                              ; preds = %264, %257
  %269 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  store %struct.iscsi_datain_req* %269, %struct.iscsi_datain_req** %3, align 8
  br label %326

270:                                              ; preds = %219
  %271 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %272 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %271, i32 0, i32 4
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %297, label %275

275:                                              ; preds = %270
  %276 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %277 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %296

282:                                              ; preds = %275
  %283 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %284 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @DATAIN_WITHIN_COMMAND_RECOVERY, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %282
  %289 = load i8*, i8** @DATAIN_COMPLETE_WITHIN_COMMAND_RECOVERY, align 8
  br label %292

290:                                              ; preds = %282
  %291 = load i8*, i8** @DATAIN_COMPLETE_CONNECTION_RECOVERY, align 8
  br label %292

292:                                              ; preds = %290, %288
  %293 = phi i8* [ %289, %288 ], [ %291, %290 ]
  %294 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %295 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %294, i32 0, i32 6
  store i8* %293, i8** %295, align 8
  br label %296

296:                                              ; preds = %292, %275
  br label %324

297:                                              ; preds = %270
  %298 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %299 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %298, i32 0, i32 5
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %302 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %301, i32 0, i32 4
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %300, %303
  %305 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %306 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = icmp eq i64 %304, %307
  br i1 %308, label %309, label %323

309:                                              ; preds = %297
  %310 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %311 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @DATAIN_WITHIN_COMMAND_RECOVERY, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %309
  %316 = load i8*, i8** @DATAIN_COMPLETE_WITHIN_COMMAND_RECOVERY, align 8
  br label %319

317:                                              ; preds = %309
  %318 = load i8*, i8** @DATAIN_COMPLETE_CONNECTION_RECOVERY, align 8
  br label %319

319:                                              ; preds = %317, %315
  %320 = phi i8* [ %316, %315 ], [ %318, %317 ]
  %321 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %322 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %321, i32 0, i32 6
  store i8* %320, i8** %322, align 8
  br label %323

323:                                              ; preds = %319, %297
  br label %324

324:                                              ; preds = %323, %296
  %325 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  store %struct.iscsi_datain_req* %325, %struct.iscsi_datain_req** %3, align 8
  br label %326

326:                                              ; preds = %324, %268, %113, %88, %77, %36, %20
  %327 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %3, align 8
  ret %struct.iscsi_datain_req* %327
}

declare dso_local %struct.iscsi_datain_req* @iscsit_get_datain_req(%struct.iscsi_cmd*) #1

declare dso_local i64 @iscsit_create_recovery_datain_values_datasequenceinorder_no(%struct.iscsi_cmd*, %struct.iscsi_datain_req*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.iscsi_seq* @iscsit_get_seq_holder_for_datain(%struct.iscsi_cmd*, i64) #1

declare dso_local %struct.iscsi_pdu* @iscsit_get_pdu_holder_for_seq(%struct.iscsi_cmd*, %struct.iscsi_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
