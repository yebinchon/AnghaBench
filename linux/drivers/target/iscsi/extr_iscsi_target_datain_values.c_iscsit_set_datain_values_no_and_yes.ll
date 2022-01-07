; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_datain_values.c_iscsit_set_datain_values_no_and_yes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_datain_values.c_iscsit_set_datain_values_no_and_yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_datain_req = type { i64, i64, i64, i64, i64, i64, i8*, i64 }
%struct.iscsi_cmd = type { i64, i64, i32, %struct.TYPE_8__, i32, %struct.iscsi_conn* }
%struct.TYPE_8__ = type { i64 }
%struct.iscsi_conn = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.iscsi_datain = type { i64, i64, i32, i32 }
%struct.iscsi_seq = type { i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"ITT: 0x%08x read_data_left is zero!\0A\00", align 1
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_ACK = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_STATUS = common dso_local global i32 0, align 4
@DATAIN_COMPLETE_NORMAL = common dso_local global i8* null, align 8
@DATAIN_WITHIN_COMMAND_RECOVERY = common dso_local global i64 0, align 8
@DATAIN_COMPLETE_WITHIN_COMMAND_RECOVERY = common dso_local global i8* null, align 8
@DATAIN_COMPLETE_CONNECTION_RECOVERY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_datain_req* (%struct.iscsi_cmd*, %struct.iscsi_datain*)* @iscsit_set_datain_values_no_and_yes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_datain_req* @iscsit_set_datain_values_no_and_yes(%struct.iscsi_cmd* %0, %struct.iscsi_datain* %1) #0 {
  %3 = alloca %struct.iscsi_datain_req*, align 8
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_datain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_datain_req*, align 8
  %12 = alloca %struct.iscsi_seq*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_datain* %1, %struct.iscsi_datain** %5, align 8
  %13 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %13, i32 0, i32 5
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  store %struct.iscsi_conn* %15, %struct.iscsi_conn** %10, align 8
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %17 = call %struct.iscsi_datain_req* @iscsit_get_datain_req(%struct.iscsi_cmd* %16)
  store %struct.iscsi_datain_req* %17, %struct.iscsi_datain_req** %11, align 8
  %18 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %19 = icmp ne %struct.iscsi_datain_req* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %404

21:                                               ; preds = %2
  %22 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %23 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %28 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %33 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %34 = call i64 @iscsit_create_recovery_datain_values_datasequenceinorder_no(%struct.iscsi_cmd* %32, %struct.iscsi_datain_req* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %404

37:                                               ; preds = %31
  %38 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %39 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %38, i32 0, i32 7
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %26, %21
  %41 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
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
  %50 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %51 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i64 [ %48, %45 ], [ %52, %49 ]
  store i64 %54, i64* %7, align 8
  %55 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
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
  %64 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %65 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i64 [ %62, %59 ], [ %66, %63 ]
  store i64 %68, i64* %9, align 8
  %69 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %67
  %78 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %79 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %80)
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %404

82:                                               ; preds = %67
  %83 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call %struct.iscsi_seq* @iscsit_get_seq_holder_for_datain(%struct.iscsi_cmd* %83, i64 %84)
  store %struct.iscsi_seq* %85, %struct.iscsi_seq** %12, align 8
  %86 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %87 = icmp ne %struct.iscsi_seq* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %404

89:                                               ; preds = %82
  %90 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %91 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
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
  %106 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %96, %89
  %108 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %109 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %112 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  store i64 %114, i64* %6, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %117 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %115, %120
  %122 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %123 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp sge i64 %121, %125
  br i1 %126, label %127, label %163

127:                                              ; preds = %107
  %128 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %129 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %6, align 8
  %133 = sub nsw i64 %131, %132
  %134 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %135 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* %6, align 8
  %137 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %138 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %140 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %141 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %145 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %127
  %153 = load i32, i32* @ISCSI_FLAG_DATA_ACK, align 4
  %154 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %155 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %152, %127
  %159 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %160 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load i64, i64* %9, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %9, align 8
  br label %253

163:                                              ; preds = %107
  %164 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %165 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %168 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %167, i32 0, i32 1
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %166, %171
  %173 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %174 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %173, i32 0, i32 0
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp slt i64 %172, %179
  br i1 %180, label %181, label %205

181:                                              ; preds = %163
  %182 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %183 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %182, i32 0, i32 1
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %188 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %190 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %193 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %191, %194
  %196 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %197 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %196, i32 0, i32 1
  store i64 %195, i64* %197, align 8
  %198 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %199 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %202 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %203, %200
  store i64 %204, i64* %202, align 8
  br label %252

205:                                              ; preds = %163
  %206 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %207 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %206, i32 0, i32 0
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %214 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = sub nsw i64 %212, %215
  %217 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %218 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %217, i32 0, i32 0
  store i64 %216, i64* %218, align 8
  %219 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %220 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %223 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %221, %224
  %226 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %227 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %226, i32 0, i32 1
  store i64 %225, i64* %227, align 8
  %228 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %229 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %230 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  %233 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %234 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %233, i32 0, i32 0
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp sgt i64 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %205
  %242 = load i32, i32* @ISCSI_FLAG_DATA_ACK, align 4
  %243 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %244 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %241, %205
  %248 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %249 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %248, i32 0, i32 1
  store i64 0, i64* %249, align 8
  %250 = load i64, i64* %9, align 8
  %251 = add nsw i64 %250, 1
  store i64 %251, i64* %9, align 8
  br label %252

252:                                              ; preds = %247, %181
  br label %253

253:                                              ; preds = %252, %158
  %254 = load i64, i64* %7, align 8
  %255 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %256 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %254, %257
  %259 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %260 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp eq i64 %258, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %253
  %265 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %266 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %267 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %264, %253
  %271 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %272 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %281, label %275

275:                                              ; preds = %270
  %276 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %277 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %277, align 8
  %280 = sext i32 %278 to i64
  br label %286

281:                                              ; preds = %270
  %282 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %283 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %283, align 8
  br label %286

286:                                              ; preds = %281, %275
  %287 = phi i64 [ %280, %275 ], [ %284, %281 ]
  %288 = trunc i64 %287 to i32
  %289 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %290 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %289, i32 0, i32 3
  store i32 %288, i32* %290, align 4
  %291 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %292 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %306, label %295

295:                                              ; preds = %286
  %296 = load i64, i64* %9, align 8
  %297 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %298 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %297, i32 0, i32 1
  store i64 %296, i64* %298, align 8
  %299 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %300 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %303 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %304, %301
  store i64 %305, i64* %303, align 8
  br label %317

306:                                              ; preds = %286
  %307 = load i64, i64* %9, align 8
  %308 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %309 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %308, i32 0, i32 2
  store i64 %307, i64* %309, align 8
  %310 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %311 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %314 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = add nsw i64 %315, %312
  store i64 %316, i64* %314, align 8
  br label %317

317:                                              ; preds = %306, %295
  %318 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %319 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %348, label %322

322:                                              ; preds = %317
  %323 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %324 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %322
  %330 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %331 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.iscsi_seq*, %struct.iscsi_seq** %12, align 8
  %334 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %333, i32 0, i32 3
  store i32 %332, i32* %334, align 8
  br label %335

335:                                              ; preds = %329, %322
  %336 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %337 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %335
  %343 = load i8*, i8** @DATAIN_COMPLETE_NORMAL, align 8
  %344 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %345 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %344, i32 0, i32 6
  store i8* %343, i8** %345, align 8
  br label %346

346:                                              ; preds = %342, %335
  %347 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  store %struct.iscsi_datain_req* %347, %struct.iscsi_datain_req** %3, align 8
  br label %404

348:                                              ; preds = %317
  %349 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %350 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %349, i32 0, i32 4
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %375, label %353

353:                                              ; preds = %348
  %354 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %355 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %374

360:                                              ; preds = %353
  %361 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %362 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @DATAIN_WITHIN_COMMAND_RECOVERY, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %368

366:                                              ; preds = %360
  %367 = load i8*, i8** @DATAIN_COMPLETE_WITHIN_COMMAND_RECOVERY, align 8
  br label %370

368:                                              ; preds = %360
  %369 = load i8*, i8** @DATAIN_COMPLETE_CONNECTION_RECOVERY, align 8
  br label %370

370:                                              ; preds = %368, %366
  %371 = phi i8* [ %367, %366 ], [ %369, %368 ]
  %372 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %373 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %372, i32 0, i32 6
  store i8* %371, i8** %373, align 8
  br label %374

374:                                              ; preds = %370, %353
  br label %402

375:                                              ; preds = %348
  %376 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %377 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %376, i32 0, i32 5
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %380 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %379, i32 0, i32 4
  %381 = load i64, i64* %380, align 8
  %382 = add nsw i64 %378, %381
  %383 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %384 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = icmp eq i64 %382, %385
  br i1 %386, label %387, label %401

387:                                              ; preds = %375
  %388 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %389 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @DATAIN_WITHIN_COMMAND_RECOVERY, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %395

393:                                              ; preds = %387
  %394 = load i8*, i8** @DATAIN_COMPLETE_WITHIN_COMMAND_RECOVERY, align 8
  br label %397

395:                                              ; preds = %387
  %396 = load i8*, i8** @DATAIN_COMPLETE_CONNECTION_RECOVERY, align 8
  br label %397

397:                                              ; preds = %395, %393
  %398 = phi i8* [ %394, %393 ], [ %396, %395 ]
  %399 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %400 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %399, i32 0, i32 6
  store i8* %398, i8** %400, align 8
  br label %401

401:                                              ; preds = %397, %375
  br label %402

402:                                              ; preds = %401, %374
  %403 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  store %struct.iscsi_datain_req* %403, %struct.iscsi_datain_req** %3, align 8
  br label %404

404:                                              ; preds = %402, %346, %88, %77, %36, %20
  %405 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %3, align 8
  ret %struct.iscsi_datain_req* %405
}

declare dso_local %struct.iscsi_datain_req* @iscsit_get_datain_req(%struct.iscsi_cmd*) #1

declare dso_local i64 @iscsit_create_recovery_datain_values_datasequenceinorder_no(%struct.iscsi_cmd*, %struct.iscsi_datain_req*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.iscsi_seq* @iscsit_get_seq_holder_for_datain(%struct.iscsi_cmd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
