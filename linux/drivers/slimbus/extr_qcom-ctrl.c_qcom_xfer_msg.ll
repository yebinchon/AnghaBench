; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_qcom_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_qcom_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_controller = type { i32 }
%struct.slim_msg_txn = type { i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qcom_slim_ctrl = type { i32 }

@done = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QCOM_BUF_ALLOC_RETRIES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SLIM_MSG_DEST_LOGICALADDR = common dso_local global i64 0, align 8
@MGR_TX_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"TX timed out:MC:0x%x,mt:0x%x\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_controller*, %struct.slim_msg_txn*)* @qcom_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_xfer_msg(%struct.slim_controller* %0, %struct.slim_msg_txn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.slim_controller*, align 8
  %5 = alloca %struct.slim_msg_txn*, align 8
  %6 = alloca %struct.qcom_slim_ctrl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.slim_controller* %0, %struct.slim_controller** %4, align 8
  store %struct.slim_msg_txn* %1, %struct.slim_msg_txn** %5, align 8
  %15 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %16 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.qcom_slim_ctrl* @dev_get_drvdata(i32 %17)
  store %struct.qcom_slim_ctrl* %18, %struct.qcom_slim_ctrl** %6, align 8
  %19 = load i32, i32* @done, align 4
  %20 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %19)
  %21 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %6, align 8
  %22 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %23 = call i8* @slim_alloc_txbuf(%struct.qcom_slim_ctrl* %21, %struct.slim_msg_txn* %22, i32* @done)
  store i8* %23, i8** %7, align 8
  %24 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %25 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HZ, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %30 = load i32, i32* @QCOM_BUF_ALLOC_RETRIES, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %32 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %35 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %53, %40
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %12, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = call i32 @usleep_range(i32 10000, i32 15000)
  %47 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %6, align 8
  %48 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %49 = call i8* @slim_alloc_txbuf(%struct.qcom_slim_ctrl* %47, %struct.slim_msg_txn* %48, i32* @done)
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %54

53:                                               ; preds = %45
  br label %41

54:                                               ; preds = %52, %41
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %195

64:                                               ; preds = %58, %55
  %65 = load i8*, i8** %7, align 8
  %66 = bitcast i8* %65 to i32*
  store i32* %66, i32** %9, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = bitcast i8* %67 to i32*
  store i32* %68, i32** %14, align 8
  %69 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %70 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SLIM_MSG_DEST_LOGICALADDR, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %64
  %75 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %76 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %79 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %82 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @SLIM_MSG_ASM_FIRST_WORD(i32 %77, i32 %80, i32 %83, i32 0, i32 %84)
  %86 = load i32*, i32** %14, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  store i32* %88, i32** %9, align 8
  br label %104

89:                                               ; preds = %64
  %90 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %91 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %94 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %97 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @SLIM_MSG_ASM_FIRST_WORD(i32 %92, i32 %95, i32 %98, i32 1, i32 %99)
  %101 = load i32*, i32** %14, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  store i32* %103, i32** %9, align 8
  br label %104

104:                                              ; preds = %89, %74
  %105 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %106 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %109 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @slim_tid_txn(i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %104
  %114 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %115 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %9, align 8
  store i32 %116, i32* %117, align 4
  br label %119

119:                                              ; preds = %113, %104
  %120 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %121 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %124 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @slim_ec_txn(i32 %122, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %119
  %129 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %130 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, 255
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %9, align 8
  store i32 %132, i32* %133, align 4
  %135 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %136 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = ashr i32 %137, 8
  %139 = and i32 %138, 255
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %9, align 8
  store i32 %139, i32* %140, align 4
  br label %142

142:                                              ; preds = %128, %119
  %143 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %144 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %143, i32 0, i32 5
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = icmp ne %struct.TYPE_2__* %145, null
  br i1 %146, label %147, label %167

147:                                              ; preds = %142
  %148 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %149 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %148, i32 0, i32 5
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %147
  %155 = load i32*, i32** %9, align 8
  %156 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %157 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %156, i32 0, i32 5
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %162 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %161, i32 0, i32 5
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @memcpy(i32* %155, i32 %160, i32 %165)
  br label %167

167:                                              ; preds = %154, %147, %142
  %168 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %6, align 8
  %169 = load i32*, i32** %14, align 8
  %170 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %171 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @MGR_TX_MSG, align 4
  %174 = call i32 @qcom_slim_queue_tx(%struct.qcom_slim_ctrl* %168, i32* %169, i32 %172, i32 %173)
  %175 = load i64, i64* %8, align 8
  %176 = call i32 @msecs_to_jiffies(i64 %175)
  %177 = call i32 @wait_for_completion_timeout(i32* @done, i32 %176)
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %193, label %180

180:                                              ; preds = %167
  %181 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %6, align 8
  %182 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %185 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %5, align 8
  %188 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @dev_err(i32 %183, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %186, i32 %189)
  %191 = load i32, i32* @ETIMEDOUT, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %180, %167
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %193, %61
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.qcom_slim_ctrl* @dev_get_drvdata(i32) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i8* @slim_alloc_txbuf(%struct.qcom_slim_ctrl*, %struct.slim_msg_txn*, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @SLIM_MSG_ASM_FIRST_WORD(i32, i32, i32, i32, i32) #1

declare dso_local i64 @slim_tid_txn(i32, i32) #1

declare dso_local i64 @slim_ec_txn(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @qcom_slim_queue_tx(%struct.qcom_slim_ctrl*, i32*, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
