; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_controller = type { i32 }
%struct.slim_msg_txn = type { i64, i32, i64, i32, i32, %struct.TYPE_2__*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32* }
%struct.qcom_slim_ngd_ctrl = type { i32 }

@tx_sent = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@SLIM_MSGQ_BUF_LEN = common dso_local global i32 0, align 4
@SLIM_MSG_MT_CORE = common dso_local global i64 0, align 8
@SLIM_MSG_MC_BEGIN_RECONFIGURATION = common dso_local global i32 0, align 4
@SLIM_MSG_MC_RECONFIGURE_NOW = common dso_local global i32 0, align 4
@SLIM_MSG_DEST_ENUMADDR = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"msg exceeds HW limit\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Message buffer unavailable\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SLIM_MSG_MT_DEST_REFERRED_USER = common dso_local global i64 0, align 8
@SLIM_USR_MC_CONNECT_SRC = common dso_local global i32 0, align 4
@SLIM_USR_MC_CONNECT_SINK = common dso_local global i32 0, align 4
@SLIM_USR_MC_DISCONNECT_PORT = common dso_local global i32 0, align 4
@SLIM_LA_MGR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Unable to allocate TID\0A\00", align 1
@SLIM_MSG_DEST_LOGICALADDR = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"TX timed out:MC:0x%x,mt:0x%x\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_controller*, %struct.slim_msg_txn*)* @qcom_slim_ngd_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_ngd_xfer_msg(%struct.slim_controller* %0, %struct.slim_msg_txn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.slim_controller*, align 8
  %5 = alloca %struct.slim_msg_txn*, align 8
  %6 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.slim_controller* %0, %struct.slim_controller** %4, align 8
  store %struct.slim_msg_txn* %1, %struct.slim_msg_txn** %5, align 8
  %18 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %19 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.qcom_slim_ngd_ctrl* @dev_get_drvdata(i32 %20)
  store %struct.qcom_slim_ngd_ctrl* %21, %struct.qcom_slim_ngd_ctrl** %6, align 8
  %22 = load i32, i32* @tx_sent, align 4
  %23 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %22)
  %24 = load i32, i32* @done, align 4
  %25 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %24)
  %26 = load i32, i32* @SLIM_MSGQ_BUF_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %30 = load i32, i32* @SLIM_MSGQ_BUF_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %33 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %34 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %36 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %37 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SLIM_MSG_MT_CORE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %2
  %42 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %43 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SLIM_MSG_MC_BEGIN_RECONFIGURATION, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %49 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SLIM_MSG_MC_RECONFIGURE_NOW, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %380

54:                                               ; preds = %47, %41, %2
  %55 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %56 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SLIM_MSG_DEST_ENUMADDR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EPROTONOSUPPORT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %380

63:                                               ; preds = %54
  %64 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %65 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %64, i32 0, i32 5
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SLIM_MSGQ_BUF_LEN, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %63
  %72 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %73 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SLIM_MSGQ_BUF_LEN, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71, %63
  %78 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %6, align 8
  %79 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %380

84:                                               ; preds = %71
  %85 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %6, align 8
  %86 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %87 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i64* @qcom_slim_ngd_tx_msg_get(%struct.qcom_slim_ngd_ctrl* %85, i32 %88, i32* @tx_sent)
  store i64* %89, i64** %13, align 8
  %90 = load i64*, i64** %13, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %84
  %93 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %6, align 8
  %94 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %380

99:                                               ; preds = %84
  %100 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %101 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SLIM_MSG_MT_CORE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %222

105:                                              ; preds = %99
  %106 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %107 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 129
  br i1 %109, label %120, label %110

110:                                              ; preds = %105
  %111 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %112 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 130
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %117 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 128
  br i1 %119, label %120, label %222

120:                                              ; preds = %115, %110, %105
  %121 = load i64, i64* @SLIM_MSG_MT_DEST_REFERRED_USER, align 8
  %122 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %123 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %125 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %139 [
    i32 129, label %127
    i32 130, label %131
    i32 128, label %135
  ]

127:                                              ; preds = %120
  %128 = load i32, i32* @SLIM_USR_MC_CONNECT_SRC, align 4
  %129 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %130 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  br label %142

131:                                              ; preds = %120
  %132 = load i32, i32* @SLIM_USR_MC_CONNECT_SINK, align 4
  %133 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %134 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  br label %142

135:                                              ; preds = %120
  %136 = load i32, i32* @SLIM_USR_MC_DISCONNECT_PORT, align 4
  %137 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %138 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  br label %142

139:                                              ; preds = %120
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %380

142:                                              ; preds = %135, %131, %127
  store i32 1, i32* %16, align 4
  store i32 0, i32* %9, align 4
  %143 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %144 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %29, i64 %148
  store i32 %145, i32* %149, align 4
  %150 = load i32, i32* @SLIM_LA_MGR, align 4
  store i32 %150, i32* %15, align 4
  %151 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %152 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %151, i32 0, i32 5
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %29, i64 %160
  store i32 %157, i32* %161, align 4
  %162 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %163 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @SLIM_USR_MC_DISCONNECT_PORT, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %142
  %168 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %169 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %168, i32 0, i32 5
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %29, i64 %177
  store i32 %174, i32* %178, align 4
  br label %179

179:                                              ; preds = %167, %142
  %180 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %181 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %180, i32 0, i32 7
  store i32* @done, i32** %181, align 8
  %182 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %183 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %184 = call i32 @slim_alloc_txn_tid(%struct.slim_controller* %182, %struct.slim_msg_txn* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %179
  %188 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %6, align 8
  %189 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i8*, ...) @dev_err(i32 %190, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %192 = load i32, i32* %7, align 4
  store i32 %192, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %380

193:                                              ; preds = %179
  %194 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %195 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %29, i64 %199
  store i32 %196, i32* %200, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %203 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %202, i32 0, i32 5
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  store i32 %201, i32* %205, align 8
  %206 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %207 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %206, i32 0, i32 5
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  store i32* %29, i32** %209, align 8
  %210 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %211 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %210, i32 0, i32 5
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 2
  store i32* %32, i32** %213, align 8
  %214 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %215 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %214, i32 0, i32 5
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, 4
  %220 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %221 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 8
  br label %222

222:                                              ; preds = %193, %115, %99
  %223 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %224 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %224, align 8
  %227 = load i64*, i64** %13, align 8
  %228 = bitcast i64* %227 to i32*
  store i32* %228, i32** %14, align 8
  %229 = load i64*, i64** %13, align 8
  store i64 0, i64* %229, align 8
  %230 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %231 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @SLIM_MSG_DEST_LOGICALADDR, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %250

235:                                              ; preds = %222
  %236 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %237 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %240 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %243 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %15, align 4
  %246 = call i64 @SLIM_MSG_ASM_FIRST_WORD(i32 %238, i64 %241, i32 %244, i32 0, i32 %245)
  %247 = load i64*, i64** %13, align 8
  store i64 %246, i64* %247, align 8
  %248 = load i32*, i32** %14, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 3
  store i32* %249, i32** %14, align 8
  br label %265

250:                                              ; preds = %222
  %251 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %252 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %255 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %258 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %15, align 4
  %261 = call i64 @SLIM_MSG_ASM_FIRST_WORD(i32 %253, i64 %256, i32 %259, i32 1, i32 %260)
  %262 = load i64*, i64** %13, align 8
  store i64 %261, i64* %262, align 8
  %263 = load i32*, i32** %14, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 2
  store i32* %264, i32** %14, align 8
  br label %265

265:                                              ; preds = %250, %235
  %266 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %267 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %270 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = call i64 @slim_tid_txn(i64 %268, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %265
  %275 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %276 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = load i32*, i32** %14, align 8
  %279 = getelementptr inbounds i32, i32* %278, i32 1
  store i32* %279, i32** %14, align 8
  store i32 %277, i32* %278, align 4
  br label %280

280:                                              ; preds = %274, %265
  %281 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %282 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %285 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i64 @slim_ec_txn(i64 %283, i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %303

289:                                              ; preds = %280
  %290 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %291 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, 255
  %294 = load i32*, i32** %14, align 8
  %295 = getelementptr inbounds i32, i32* %294, i32 1
  store i32* %295, i32** %14, align 8
  store i32 %293, i32* %294, align 4
  %296 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %297 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 4
  %299 = ashr i32 %298, 8
  %300 = and i32 %299, 255
  %301 = load i32*, i32** %14, align 8
  %302 = getelementptr inbounds i32, i32* %301, i32 1
  store i32* %302, i32** %14, align 8
  store i32 %300, i32* %301, align 4
  br label %303

303:                                              ; preds = %289, %280
  %304 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %305 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %304, i32 0, i32 5
  %306 = load %struct.TYPE_2__*, %struct.TYPE_2__** %305, align 8
  %307 = icmp ne %struct.TYPE_2__* %306, null
  br i1 %307, label %308, label %328

308:                                              ; preds = %303
  %309 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %310 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %309, i32 0, i32 5
  %311 = load %struct.TYPE_2__*, %struct.TYPE_2__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = icmp ne i32* %313, null
  br i1 %314, label %315, label %328

315:                                              ; preds = %308
  %316 = load i32*, i32** %14, align 8
  %317 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %318 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %317, i32 0, i32 5
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %323 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %322, i32 0, i32 5
  %324 = load %struct.TYPE_2__*, %struct.TYPE_2__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @memcpy(i32* %316, i32* %321, i32 %326)
  br label %328

328:                                              ; preds = %315, %308, %303
  %329 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %6, align 8
  %330 = load i64*, i64** %13, align 8
  %331 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %332 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @qcom_slim_ngd_tx_msg_post(%struct.qcom_slim_ngd_ctrl* %329, i64* %330, i32 %333)
  store i32 %334, i32* %7, align 4
  %335 = load i32, i32* %7, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %328
  %338 = load i32, i32* %7, align 4
  store i32 %338, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %380

339:                                              ; preds = %328
  %340 = load i32, i32* @HZ, align 4
  %341 = call i32 @wait_for_completion_timeout(i32* @tx_sent, i32 %340)
  store i32 %341, i32* %8, align 4
  %342 = load i32, i32* %8, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %357, label %344

344:                                              ; preds = %339
  %345 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %346 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %349 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %352 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = call i32 (i32, i8*, ...) @dev_err(i32 %347, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %350, i64 %353)
  %355 = load i32, i32* @ETIMEDOUT, align 4
  %356 = sub nsw i32 0, %355
  store i32 %356, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %380

357:                                              ; preds = %339
  %358 = load i32, i32* %16, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %379

360:                                              ; preds = %357
  %361 = load i32, i32* @HZ, align 4
  %362 = call i32 @wait_for_completion_timeout(i32* @done, i32 %361)
  store i32 %362, i32* %8, align 4
  %363 = load i32, i32* %8, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %378, label %365

365:                                              ; preds = %360
  %366 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %367 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %370 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %373 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = call i32 (i32, i8*, ...) @dev_err(i32 %368, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %371, i64 %374)
  %376 = load i32, i32* @ETIMEDOUT, align 4
  %377 = sub nsw i32 0, %376
  store i32 %377, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %380

378:                                              ; preds = %360
  br label %379

379:                                              ; preds = %378, %357
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %380

380:                                              ; preds = %379, %365, %344, %337, %187, %139, %92, %77, %60, %53
  %381 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %381)
  %382 = load i32, i32* %3, align 4
  ret i32 %382
}

declare dso_local %struct.qcom_slim_ngd_ctrl* @dev_get_drvdata(i32) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64* @qcom_slim_ngd_tx_msg_get(%struct.qcom_slim_ngd_ctrl*, i32, i32*) #1

declare dso_local i32 @slim_alloc_txn_tid(%struct.slim_controller*, %struct.slim_msg_txn*) #1

declare dso_local i64 @SLIM_MSG_ASM_FIRST_WORD(i32, i64, i32, i32, i32) #1

declare dso_local i64 @slim_tid_txn(i64, i32) #1

declare dso_local i64 @slim_ec_txn(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qcom_slim_ngd_tx_msg_post(%struct.qcom_slim_ngd_ctrl*, i64*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
