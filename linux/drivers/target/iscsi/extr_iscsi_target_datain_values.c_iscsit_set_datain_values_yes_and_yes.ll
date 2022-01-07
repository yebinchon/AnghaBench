; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_datain_values.c_iscsit_set_datain_values_yes_and_yes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_datain_values.c_iscsit_set_datain_values_yes_and_yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_datain_req = type { i64, i64, i64, i64, i64, i64, i8*, i64 }
%struct.iscsi_cmd = type { i64, i64, i32, i32, %struct.TYPE_5__, %struct.iscsi_conn* }
%struct.TYPE_5__ = type { i64 }
%struct.iscsi_conn = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.iscsi_datain = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"ITT: 0x%08x read_data_left is zero!\0A\00", align 1
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_STATUS = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_ACK = common dso_local global i32 0, align 4
@DATAIN_COMPLETE_NORMAL = common dso_local global i8* null, align 8
@DATAIN_WITHIN_COMMAND_RECOVERY = common dso_local global i64 0, align 8
@DATAIN_COMPLETE_WITHIN_COMMAND_RECOVERY = common dso_local global i8* null, align 8
@DATAIN_COMPLETE_CONNECTION_RECOVERY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_datain_req* (%struct.iscsi_cmd*, %struct.iscsi_datain*)* @iscsit_set_datain_values_yes_and_yes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_datain_req* @iscsit_set_datain_values_yes_and_yes(%struct.iscsi_cmd* %0, %struct.iscsi_datain* %1) #0 {
  %3 = alloca %struct.iscsi_datain_req*, align 8
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_datain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iscsi_conn*, align 8
  %10 = alloca %struct.iscsi_datain_req*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_datain* %1, %struct.iscsi_datain** %5, align 8
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %11, i32 0, i32 5
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  store %struct.iscsi_conn* %13, %struct.iscsi_conn** %9, align 8
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %15 = call %struct.iscsi_datain_req* @iscsit_get_datain_req(%struct.iscsi_cmd* %14)
  store %struct.iscsi_datain_req* %15, %struct.iscsi_datain_req** %10, align 8
  %16 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %17 = icmp ne %struct.iscsi_datain_req* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %312

19:                                               ; preds = %2
  %20 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %21 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %26 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %31 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %32 = call i64 @iscsit_create_recovery_datain_values_datasequenceinorder_yes(%struct.iscsi_cmd* %30, %struct.iscsi_datain_req* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %312

35:                                               ; preds = %29
  %36 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %37 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %24, %19
  %39 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %40 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  br label %51

47:                                               ; preds = %38
  %48 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %49 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i64 [ %46, %43 ], [ %50, %47 ]
  store i64 %52, i64* %6, align 8
  %53 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %54 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %59 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  br label %65

61:                                               ; preds = %51
  %62 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %63 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i64 [ %60, %57 ], [ %64, %61 ]
  store i64 %66, i64* %7, align 8
  %67 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %68 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = sub nsw i64 %70, %71
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %65
  %76 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %77 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %78)
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %312

80:                                               ; preds = %65
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %83 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sle i64 %81, %86
  br i1 %87, label %88, label %126

88:                                               ; preds = %80
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %91 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = sub nsw i64 %96, %97
  %99 = icmp sle i64 %89, %98
  br i1 %99, label %100, label %126

100:                                              ; preds = %88
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %103 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %105 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %108 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %112 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %100
  %120 = load i32, i32* @ISCSI_FLAG_DATA_ACK, align 4
  %121 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %122 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %100
  br label %188

126:                                              ; preds = %88, %80
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %129 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %128, i32 0, i32 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %127, %132
  %134 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %135 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp slt i64 %133, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %126
  %143 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %144 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %149 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %151 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %6, align 8
  %154 = add nsw i64 %153, %152
  store i64 %154, i64* %6, align 8
  br label %187

155:                                              ; preds = %126
  %156 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %157 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %156, i32 0, i32 0
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %6, align 8
  %164 = sub nsw i64 %162, %163
  %165 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %166 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  store i64 0, i64* %6, align 8
  %167 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %168 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %169 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %173 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %172, i32 0, i32 0
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp sgt i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %155
  %181 = load i32, i32* @ISCSI_FLAG_DATA_ACK, align 4
  %182 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %183 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %180, %155
  br label %187

187:                                              ; preds = %186, %142
  br label %188

188:                                              ; preds = %187, %125
  %189 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %190 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %188
  %194 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %195 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 8
  %198 = sext i32 %196 to i64
  br label %204

199:                                              ; preds = %188
  %200 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %201 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %201, align 8
  br label %204

204:                                              ; preds = %199, %193
  %205 = phi i64 [ %198, %193 ], [ %202, %199 ]
  %206 = trunc i64 %205 to i32
  %207 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %208 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 8
  %209 = load i64, i64* %7, align 8
  %210 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %211 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  %212 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %213 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %227, label %216

216:                                              ; preds = %204
  %217 = load i64, i64* %6, align 8
  %218 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %219 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %218, i32 0, i32 0
  store i64 %217, i64* %219, align 8
  %220 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %221 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %224 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = add nsw i64 %225, %222
  store i64 %226, i64* %224, align 8
  br label %238

227:                                              ; preds = %204
  %228 = load i64, i64* %6, align 8
  %229 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %230 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %229, i32 0, i32 1
  store i64 %228, i64* %230, align 8
  %231 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %232 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %235 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %236, %233
  store i64 %237, i64* %235, align 8
  br label %238

238:                                              ; preds = %227, %216
  %239 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %240 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %256, label %243

243:                                              ; preds = %238
  %244 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %245 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %243
  %251 = load i8*, i8** @DATAIN_COMPLETE_NORMAL, align 8
  %252 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %253 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %252, i32 0, i32 6
  store i8* %251, i8** %253, align 8
  br label %254

254:                                              ; preds = %250, %243
  %255 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  store %struct.iscsi_datain_req* %255, %struct.iscsi_datain_req** %3, align 8
  br label %312

256:                                              ; preds = %238
  %257 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %258 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %283, label %261

261:                                              ; preds = %256
  %262 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %263 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %282

268:                                              ; preds = %261
  %269 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %270 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @DATAIN_WITHIN_COMMAND_RECOVERY, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = load i8*, i8** @DATAIN_COMPLETE_WITHIN_COMMAND_RECOVERY, align 8
  br label %278

276:                                              ; preds = %268
  %277 = load i8*, i8** @DATAIN_COMPLETE_CONNECTION_RECOVERY, align 8
  br label %278

278:                                              ; preds = %276, %274
  %279 = phi i8* [ %275, %274 ], [ %277, %276 ]
  %280 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %281 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %280, i32 0, i32 6
  store i8* %279, i8** %281, align 8
  br label %282

282:                                              ; preds = %278, %261
  br label %310

283:                                              ; preds = %256
  %284 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %285 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %284, i32 0, i32 5
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %288 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %287, i32 0, i32 4
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %286, %289
  %291 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %292 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = icmp eq i64 %290, %293
  br i1 %294, label %295, label %309

295:                                              ; preds = %283
  %296 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %297 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @DATAIN_WITHIN_COMMAND_RECOVERY, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %295
  %302 = load i8*, i8** @DATAIN_COMPLETE_WITHIN_COMMAND_RECOVERY, align 8
  br label %305

303:                                              ; preds = %295
  %304 = load i8*, i8** @DATAIN_COMPLETE_CONNECTION_RECOVERY, align 8
  br label %305

305:                                              ; preds = %303, %301
  %306 = phi i8* [ %302, %301 ], [ %304, %303 ]
  %307 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  %308 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %307, i32 0, i32 6
  store i8* %306, i8** %308, align 8
  br label %309

309:                                              ; preds = %305, %283
  br label %310

310:                                              ; preds = %309, %282
  %311 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %10, align 8
  store %struct.iscsi_datain_req* %311, %struct.iscsi_datain_req** %3, align 8
  br label %312

312:                                              ; preds = %310, %254, %75, %34, %18
  %313 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %3, align 8
  ret %struct.iscsi_datain_req* %313
}

declare dso_local %struct.iscsi_datain_req* @iscsit_get_datain_req(%struct.iscsi_cmd*) #1

declare dso_local i64 @iscsit_create_recovery_datain_values_datasequenceinorder_yes(%struct.iscsi_cmd*, %struct.iscsi_datain_req*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
