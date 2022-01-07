; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_recalculate_dataout_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_recalculate_dataout_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i64, i64, i32, i64, %struct.iscsi_pdu*, i64, i32, i32, i64, %struct.iscsi_conn* }
%struct.iscsi_pdu = type { i64, i64, i64 }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.iscsi_seq = type { i64, i64, i64, i32, i32, i32, i64, i64 }

@ISCSI_PDU_RECEIVED_OK = common dso_local global i64 0, align 8
@ISCSI_PDU_NOT_RECEIVED = common dso_local global i8* null, align 8
@DATAOUT_SEQUENCE_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i64, i64, i64*, i64*)* @iscsit_recalculate_dataout_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_recalculate_dataout_values(%struct.iscsi_cmd* %0, i64 %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iscsi_conn*, align 8
  %14 = alloca %struct.iscsi_pdu*, align 8
  %15 = alloca %struct.iscsi_seq*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %16, i32 0, i32 10
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  store %struct.iscsi_conn* %18, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_pdu* null, %struct.iscsi_pdu** %14, align 8
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %143

27:                                               ; preds = %5
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %28, i32 0, i32 9
  store i64 0, i64* %29, align 8
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %27
  %39 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %10, align 8
  store i64 %41, i64* %42, align 8
  %43 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = load i64*, i64** %11, align 8
  store i64 %49, i64* %50, align 8
  store i32 0, i32* %6, align 4
  br label %237

51:                                               ; preds = %27
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %53 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %10, align 8
  store i64 %54, i64* %55, align 8
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %60 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = load i64*, i64** %11, align 8
  store i64 %62, i64* %63, align 8
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %139, %51
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %142

70:                                               ; preds = %64
  %71 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %71, i32 0, i32 5
  %73 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %73, i64 %75
  store %struct.iscsi_pdu* %76, %struct.iscsi_pdu** %14, align 8
  %77 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %78 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ISCSI_PDU_RECEIVED_OK, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %139

83:                                               ; preds = %70
  %84 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %85 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %88 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %86, %89
  br i1 %90, label %91, label %138

91:                                               ; preds = %83
  %92 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %93 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %96 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %100 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp sle i64 %98, %101
  br i1 %102, label %103, label %138

103:                                              ; preds = %91
  %104 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %105 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %103
  %109 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %110 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 8
  br label %126

118:                                              ; preds = %103
  %119 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %120 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %124, %121
  store i64 %125, i64* %123, align 8
  br label %126

126:                                              ; preds = %118, %108
  %127 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %128 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  %134 = load i8*, i8** @ISCSI_PDU_NOT_RECEIVED, align 8
  %135 = ptrtoint i8* %134 to i64
  %136 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %137 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %126, %91, %83
  br label %139

139:                                              ; preds = %138, %82
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %64

142:                                              ; preds = %64
  br label %236

143:                                              ; preds = %5
  store %struct.iscsi_seq* null, %struct.iscsi_seq** %15, align 8
  %144 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call %struct.iscsi_seq* @iscsit_get_seq_holder(%struct.iscsi_cmd* %144, i64 %145, i64 %146)
  store %struct.iscsi_seq* %147, %struct.iscsi_seq** %15, align 8
  %148 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %149 = icmp ne %struct.iscsi_seq* %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %143
  store i32 -1, i32* %6, align 4
  br label %237

151:                                              ; preds = %143
  %152 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %153 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64*, i64** %10, align 8
  store i64 %154, i64* %155, align 8
  %156 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %157 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %11, align 8
  store i64 %158, i64* %159, align 8
  %160 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %161 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %164 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %162, %165
  %167 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %168 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %169, %166
  store i64 %170, i64* %168, align 8
  %171 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %172 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %151
  %176 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %177 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %180 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %179, i32 0, i32 4
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %175, %151
  %182 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %183 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %182, i32 0, i32 7
  store i64 0, i64* %183, align 8
  %184 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %185 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %188 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  %189 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %190 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %189, i32 0, i32 6
  store i64 0, i64* %190, align 8
  %191 = load i32, i32* @DATAOUT_SEQUENCE_WITHIN_COMMAND_RECOVERY, align 4
  %192 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %193 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 8
  %194 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  %195 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %194, i32 0, i32 0
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %181
  store i32 0, i32* %6, align 4
  br label %237

203:                                              ; preds = %181
  store i32 0, i32* %12, align 4
  br label %204

204:                                              ; preds = %232, %203
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %207 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = icmp slt i32 %205, %208
  br i1 %209, label %210, label %235

210:                                              ; preds = %204
  %211 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %212 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %211, i32 0, i32 5
  %213 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %212, align 8
  %214 = load i32, i32* %12, align 4
  %215 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %216 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %214, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %213, i64 %219
  store %struct.iscsi_pdu* %220, %struct.iscsi_pdu** %14, align 8
  %221 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %222 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @ISCSI_PDU_RECEIVED_OK, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %210
  br label %232

227:                                              ; preds = %210
  %228 = load i8*, i8** @ISCSI_PDU_NOT_RECEIVED, align 8
  %229 = ptrtoint i8* %228 to i64
  %230 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %231 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  br label %232

232:                                              ; preds = %227, %226
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %12, align 4
  br label %204

235:                                              ; preds = %204
  br label %236

236:                                              ; preds = %235, %142
  store i32 0, i32* %6, align 4
  br label %237

237:                                              ; preds = %236, %202, %150, %38
  %238 = load i32, i32* %6, align 4
  ret i32 %238
}

declare dso_local %struct.iscsi_seq* @iscsit_get_seq_holder(%struct.iscsi_cmd*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
