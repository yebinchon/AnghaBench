; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_dataout_datapduinorder_no_fbit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_dataout_datapduinorder_no_fbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, %struct.iscsi_pdu*, %struct.iscsi_seq*, %struct.iscsi_conn* }
%struct.iscsi_seq = type { i64, i32 }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iscsi_pdu = type { i64, i32, i64, i32 }

@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4
@ISCSI_PDU_RECEIVED_OK = common dso_local global i64 0, align 8
@ISCSI_PDU_NOT_RECEIVED = common dso_local global i64 0, align 8
@DATAOUT_NORMAL = common dso_local global i32 0, align 4
@DATAOUT_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_dataout_datapduinorder_no_fbit(%struct.iscsi_cmd* %0, %struct.iscsi_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_pdu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iscsi_conn*, align 8
  %14 = alloca %struct.iscsi_pdu*, align 8
  %15 = alloca %struct.iscsi_seq*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_pdu* %1, %struct.iscsi_pdu** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %16, i32 0, i32 3
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  store %struct.iscsi_conn* %18, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_pdu* null, %struct.iscsi_pdu** %14, align 8
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %80

27:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %76, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %79

34:                                               ; preds = %28
  %35 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %35, i32 0, i32 1
  %37 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %37, i64 %39
  %41 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %5, align 8
  %44 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %34
  %48 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %49 = icmp ne %struct.iscsi_pdu* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %51, i32 0, i32 1
  %53 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %53, i64 %55
  store %struct.iscsi_pdu* %56, %struct.iscsi_pdu** %14, align 8
  br label %57

57:                                               ; preds = %50, %47
  %58 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %59 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %58, i32 0, i32 1
  %60 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %60, i64 %62
  %64 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %75

70:                                               ; preds = %34
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %79

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %57
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %28

79:                                               ; preds = %73, %28
  br label %94

80:                                               ; preds = %2
  %81 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %82 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %81, i32 0, i32 2
  %83 = load %struct.iscsi_seq*, %struct.iscsi_seq** %82, align 8
  store %struct.iscsi_seq* %83, %struct.iscsi_seq** %15, align 8
  %84 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %85 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %84, i32 0, i32 1
  %86 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %85, align 8
  %87 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %88 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %86, i64 %89
  store %struct.iscsi_pdu* %90, %struct.iscsi_pdu** %14, align 8
  %91 = load %struct.iscsi_seq*, %struct.iscsi_seq** %15, align 8
  %92 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %80, %79
  %95 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %96 = icmp ne %struct.iscsi_pdu* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %101, i32* %3, align 4
  br label %182

102:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %158, %102
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %161

107:                                              ; preds = %103
  %108 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %108, i64 %110
  %112 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ISCSI_PDU_RECEIVED_OK, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %107
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  br label %158

120:                                              ; preds = %116
  %121 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i64 @iscsit_send_recovery_r2t(%struct.iscsi_cmd* %121, i32 %122, i32 %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %127, i32* %3, align 4
  br label %182

128:                                              ; preds = %120
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %158

129:                                              ; preds = %107
  store i32 1, i32* %8, align 4
  %130 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %130, i64 %132
  %134 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ISCSI_PDU_NOT_RECEIVED, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %158

139:                                              ; preds = %129
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %139
  %143 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %143, i64 %145
  %147 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %142, %139
  %150 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %14, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %150, i64 %152
  %154 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %9, align 4
  store i32 1, i32* %7, align 4
  br label %158

158:                                              ; preds = %149, %138, %128, %119
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %103

161:                                              ; preds = %103
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %9, align 4
  %168 = call i64 @iscsit_send_recovery_r2t(%struct.iscsi_cmd* %165, i32 %166, i32 %167)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %171, i32* %3, align 4
  br label %182

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %161
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* @DATAOUT_NORMAL, align 4
  br label %180

178:                                              ; preds = %173
  %179 = load i32, i32* @DATAOUT_WITHIN_COMMAND_RECOVERY, align 4
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i32 [ %177, %176 ], [ %179, %178 ]
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %180, %170, %126, %100
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i64 @iscsit_send_recovery_r2t(%struct.iscsi_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
