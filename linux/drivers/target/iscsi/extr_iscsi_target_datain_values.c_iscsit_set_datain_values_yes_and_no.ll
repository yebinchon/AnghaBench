; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_datain_values.c_iscsit_set_datain_values_yes_and_no.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_datain_values.c_iscsit_set_datain_values_yes_and_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_datain_req = type { i64, i64, i64, i64, i64, i64, i8*, i64 }
%struct.iscsi_cmd = type { i64, i64, i32, %struct.TYPE_5__, i32, %struct.iscsi_conn* }
%struct.TYPE_5__ = type { i64 }
%struct.iscsi_conn = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.iscsi_datain = type { i32, i64, i32, i32 }
%struct.iscsi_pdu = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"ITT: 0x%08x read_data_left is zero!\0A\00", align 1
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_STATUS = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_ACK = common dso_local global i32 0, align 4
@DATAIN_COMPLETE_NORMAL = common dso_local global i8* null, align 8
@DATAIN_WITHIN_COMMAND_RECOVERY = common dso_local global i64 0, align 8
@DATAIN_COMPLETE_WITHIN_COMMAND_RECOVERY = common dso_local global i8* null, align 8
@DATAIN_COMPLETE_CONNECTION_RECOVERY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_datain_req* (%struct.iscsi_cmd*, %struct.iscsi_datain*)* @iscsit_set_datain_values_yes_and_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_datain_req* @iscsit_set_datain_values_yes_and_no(%struct.iscsi_cmd* %0, %struct.iscsi_datain* %1) #0 {
  %3 = alloca %struct.iscsi_datain_req*, align 8
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_datain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iscsi_conn*, align 8
  %10 = alloca %struct.iscsi_datain_req*, align 8
  %11 = alloca %struct.iscsi_pdu*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_datain* %1, %struct.iscsi_datain** %5, align 8
  %12 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %12, i32 0, i32 5
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_conn* %14, %struct.iscsi_conn** %9, align 8
  %15 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %16 = call %struct.iscsi_datain_req* @iscsit_get_datain_req(%struct.iscsi_cmd* %15)
  store %struct.iscsi_datain_req* %16, %struct.iscsi_datain_req** %10, align 8
  %17 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %18 = icmp ne %struct.iscsi_datain_req* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %308

20:                                               ; preds = %2
  %21 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %22 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %27 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %32 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %33 = call i64 @iscsit_create_recovery_datain_values_datasequenceinorder_yes(%struct.iscsi_cmd* %31, %struct.iscsi_datain_req* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %308

36:                                               ; preds = %30
  %37 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %38 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %37, i32 0, i32 7
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %25, %20
  %40 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %41 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %50 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i64 [ %47, %44 ], [ %51, %48 ]
  store i64 %53, i64* %6, align 8
  %54 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %55 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %60 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  br label %66

62:                                               ; preds = %52
  %63 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %64 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i64 [ %61, %58 ], [ %65, %62 ]
  store i64 %67, i64* %7, align 8
  %68 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %69 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub nsw i64 %71, %72
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %66
  %77 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %78 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  store %struct.iscsi_datain_req* %81, %struct.iscsi_datain_req** %3, align 8
  br label %308

82:                                               ; preds = %66
  %83 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %84 = call %struct.iscsi_pdu* @iscsit_get_pdu_holder_for_seq(%struct.iscsi_cmd* %83, i32* null)
  store %struct.iscsi_pdu* %84, %struct.iscsi_pdu** %11, align 8
  %85 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %86 = icmp ne %struct.iscsi_pdu* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  store %struct.iscsi_datain_req* %88, %struct.iscsi_datain_req** %3, align 8
  br label %308

89:                                               ; preds = %82
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %92 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %96 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %94, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %89
  %101 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %102 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %105 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %109 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %100
  %117 = load i32, i32* @ISCSI_FLAG_DATA_ACK, align 4
  %118 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %119 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %116, %100
  store i64 0, i64* %6, align 8
  br label %167

123:                                              ; preds = %89
  %124 = load i64, i64* %6, align 8
  %125 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %126 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %124, %129
  %131 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %132 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp slt i64 %130, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %123
  %140 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %141 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %6, align 8
  br label %166

145:                                              ; preds = %123
  %146 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %147 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %148 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %152 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %151, i32 0, i32 0
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %145
  %160 = load i32, i32* @ISCSI_FLAG_DATA_ACK, align 4
  %161 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %162 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %159, %145
  store i64 0, i64* %6, align 8
  br label %166

166:                                              ; preds = %165, %139
  br label %167

167:                                              ; preds = %166, %122
  %168 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %169 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %167
  %173 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %174 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  %177 = sext i32 %175 to i64
  br label %183

178:                                              ; preds = %167
  %179 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %180 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %180, align 8
  br label %183

183:                                              ; preds = %178, %172
  %184 = phi i64 [ %177, %172 ], [ %181, %178 ]
  %185 = trunc i64 %184 to i32
  %186 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %187 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  %188 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %189 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %203, label %192

192:                                              ; preds = %183
  %193 = load i64, i64* %6, align 8
  %194 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %195 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %194, i32 0, i32 0
  store i64 %193, i64* %195, align 8
  %196 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %197 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %200 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, %198
  store i64 %202, i64* %200, align 8
  br label %214

203:                                              ; preds = %183
  %204 = load i64, i64* %6, align 8
  %205 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %206 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  %207 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %208 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %211 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %212, %209
  store i64 %213, i64* %211, align 8
  br label %214

214:                                              ; preds = %203, %192
  %215 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %216 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %219 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %221 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %224 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %223, i32 0, i32 1
  store i64 %222, i64* %224, align 8
  %225 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %226 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %229 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 4
  %230 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %11, align 8
  %231 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %234 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  %235 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %236 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %252, label %239

239:                                              ; preds = %214
  %240 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %241 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %239
  %247 = load i8*, i8** @DATAIN_COMPLETE_NORMAL, align 8
  %248 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %249 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %248, i32 0, i32 6
  store i8* %247, i8** %249, align 8
  br label %250

250:                                              ; preds = %246, %239
  %251 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  store %struct.iscsi_datain_req* %251, %struct.iscsi_datain_req** %3, align 8
  br label %308

252:                                              ; preds = %214
  %253 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %254 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %253, i32 0, i32 4
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %279, label %257

257:                                              ; preds = %252
  %258 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %259 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %257
  %265 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %266 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @DATAIN_WITHIN_COMMAND_RECOVERY, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %264
  %271 = load i8*, i8** @DATAIN_COMPLETE_WITHIN_COMMAND_RECOVERY, align 8
  br label %274

272:                                              ; preds = %264
  %273 = load i8*, i8** @DATAIN_COMPLETE_CONNECTION_RECOVERY, align 8
  br label %274

274:                                              ; preds = %272, %270
  %275 = phi i8* [ %271, %270 ], [ %273, %272 ]
  %276 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %277 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %276, i32 0, i32 6
  store i8* %275, i8** %277, align 8
  br label %278

278:                                              ; preds = %274, %257
  br label %306

279:                                              ; preds = %252
  %280 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %281 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %280, i32 0, i32 5
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %284 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %283, i32 0, i32 4
  %285 = load i64, i64* %284, align 8
  %286 = add nsw i64 %282, %285
  %287 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %288 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = icmp eq i64 %286, %289
  br i1 %290, label %291, label %305

291:                                              ; preds = %279
  %292 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %293 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @DATAIN_WITHIN_COMMAND_RECOVERY, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %291
  %298 = load i8*, i8** @DATAIN_COMPLETE_WITHIN_COMMAND_RECOVERY, align 8
  br label %301

299:                                              ; preds = %291
  %300 = load i8*, i8** @DATAIN_COMPLETE_CONNECTION_RECOVERY, align 8
  br label %301

301:                                              ; preds = %299, %297
  %302 = phi i8* [ %298, %297 ], [ %300, %299 ]
  %303 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %304 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %303, i32 0, i32 6
  store i8* %302, i8** %304, align 8
  br label %305

305:                                              ; preds = %301, %279
  br label %306

306:                                              ; preds = %305, %278
  %307 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  store %struct.iscsi_datain_req* %307, %struct.iscsi_datain_req** %3, align 8
  br label %308

308:                                              ; preds = %306, %250, %87, %76, %35, %19
  %309 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %3, align 8
  ret %struct.iscsi_datain_req* %309
}

declare dso_local %struct.iscsi_datain_req* @iscsit_get_datain_req(%struct.iscsi_cmd*) #1

declare dso_local i64 @iscsit_create_recovery_datain_values_datasequenceinorder_yes(%struct.iscsi_cmd*, %struct.iscsi_datain_req*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.iscsi_pdu* @iscsit_get_pdu_holder_for_seq(%struct.iscsi_cmd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
