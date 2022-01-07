; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_task_reassign_prepare_unsolicited_dataout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_task_reassign_prepare_unsolicited_dataout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i64, i32, i64, i32, %struct.iscsi_pdu*, i32, %struct.iscsi_seq*, i64, i32, i64 }
%struct.iscsi_pdu = type { i64, i64, i64 }
%struct.iscsi_seq = type { i64, i32, i32, i32, i64, i64, i64, i64 }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@ISCSI_PDU_RECEIVED_OK = common dso_local global i64 0, align 8
@ISCSI_PDU_NOT_RECEIVED = common dso_local global i8* null, align 8
@SEQTYPE_UNSOLICITED = common dso_local global i64 0, align 8
@DATAOUT_SEQUENCE_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cmd*, %struct.iscsi_conn*)* @iscsit_task_reassign_prepare_unsolicited_dataout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsit_task_reassign_prepare_unsolicited_dataout(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_pdu*, align 8
  %8 = alloca %struct.iscsi_seq*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %3, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_pdu* null, %struct.iscsi_pdu** %7, align 8
  store %struct.iscsi_seq* null, %struct.iscsi_seq** %8, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %140

17:                                               ; preds = %2
  %18 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %18, i32 0, i32 10
  store i64 0, i64* %19, align 8
  %20 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %26 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 8
  br label %38

38:                                               ; preds = %24, %17
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %40 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %38
  %48 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %54 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %57 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  br label %64

60:                                               ; preds = %47
  %61 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %62 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  br label %64

64:                                               ; preds = %60, %52
  %65 = phi i64 [ %59, %52 ], [ %63, %60 ]
  %66 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %67 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %73 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %234

74:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %136, %74
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %78 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %139

81:                                               ; preds = %75
  %82 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %83 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %82, i32 0, i32 5
  %84 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %84, i64 %86
  store %struct.iscsi_pdu* %87, %struct.iscsi_pdu** %7, align 8
  %88 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %7, align 8
  %89 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ISCSI_PDU_RECEIVED_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %136

94:                                               ; preds = %81
  %95 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %7, align 8
  %96 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %99 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %97, %100
  br i1 %101, label %102, label %135

102:                                              ; preds = %94
  %103 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %7, align 8
  %104 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %7, align 8
  %107 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %111 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp sle i64 %109, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %102
  %115 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %7, align 8
  %116 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %119 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %7, align 8
  %123 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %126 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = sub nsw i64 %128, %124
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 8
  %131 = load i8*, i8** @ISCSI_PDU_NOT_RECEIVED, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %7, align 8
  %134 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %114, %102, %94
  br label %136

136:                                              ; preds = %135, %93
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %75

139:                                              ; preds = %75
  br label %234

140:                                              ; preds = %2
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %230, %140
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %144 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %233

147:                                              ; preds = %141
  %148 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %149 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %148, i32 0, i32 7
  %150 = load %struct.iscsi_seq*, %struct.iscsi_seq** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %150, i64 %152
  store %struct.iscsi_seq* %153, %struct.iscsi_seq** %8, align 8
  %154 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %155 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SEQTYPE_UNSOLICITED, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %147
  br label %230

160:                                              ; preds = %147
  %161 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %162 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %165 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %163, %166
  %168 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %169 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = sub nsw i64 %171, %167
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %169, align 8
  %174 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %175 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %174, i32 0, i32 0
  store i64 0, i64* %175, align 8
  %176 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %177 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %176, i32 0, i32 7
  store i64 0, i64* %177, align 8
  %178 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %179 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %182 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %181, i32 0, i32 6
  store i64 %180, i64* %182, align 8
  %183 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %184 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %183, i32 0, i32 4
  store i64 0, i64* %184, align 8
  %185 = load i32, i32* @DATAOUT_SEQUENCE_WITHIN_COMMAND_RECOVERY, align 4
  %186 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %187 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 8
  %188 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %189 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %160
  br label %230

197:                                              ; preds = %160
  store i32 0, i32* %6, align 4
  br label %198

198:                                              ; preds = %226, %197
  %199 = load i32, i32* %6, align 4
  %200 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %201 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %229

204:                                              ; preds = %198
  %205 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %206 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %205, i32 0, i32 5
  %207 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %210 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %208, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %207, i64 %213
  store %struct.iscsi_pdu* %214, %struct.iscsi_pdu** %7, align 8
  %215 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %7, align 8
  %216 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @ISCSI_PDU_RECEIVED_OK, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %204
  br label %226

221:                                              ; preds = %204
  %222 = load i8*, i8** @ISCSI_PDU_NOT_RECEIVED, align 8
  %223 = ptrtoint i8* %222 to i64
  %224 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %7, align 8
  %225 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %221, %220
  %227 = load i32, i32* %6, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %6, align 4
  br label %198

229:                                              ; preds = %198
  br label %230

230:                                              ; preds = %229, %196, %159
  %231 = load i32, i32* %5, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %5, align 4
  br label %141

233:                                              ; preds = %141
  br label %234

234:                                              ; preds = %64, %233, %139
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
