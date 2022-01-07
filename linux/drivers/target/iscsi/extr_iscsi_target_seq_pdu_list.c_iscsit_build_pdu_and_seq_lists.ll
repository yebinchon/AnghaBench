; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_seq_pdu_list.c_iscsit_build_pdu_and_seq_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_seq_pdu_list.c_iscsit_build_pdu_and_seq_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i8*, %struct.iscsi_pdu*, i8*, %struct.iscsi_seq*, i64, i64, %struct.iscsi_conn* }
%struct.iscsi_pdu = type { i32 }
%struct.iscsi_seq = type { i32 }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.iscsi_build_list = type { i8*, i32, i8*, i32 }
%struct.iscsi_node_attrib = type { i64, i64, i64 }

@DMA_NONE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@ISCSI_PDU_READ = common dso_local global i32 0, align 4
@PDULIST_NORMAL = common dso_local global i8* null, align 8
@RANDOM_DATAIN_PDU_OFFSETS = common dso_local global i32 0, align 4
@RANDOM_DATAIN_SEQ_OFFSETS = common dso_local global i32 0, align 4
@ISCSI_PDU_WRITE = common dso_local global i32 0, align 4
@RANDOM_R2T_OFFSETS = common dso_local global i32 0, align 4
@PDULIST_IMMEDIATE = common dso_local global i8* null, align 8
@PDULIST_UNSOLICITED = common dso_local global i8* null, align 8
@PDULIST_IMMEDIATE_AND_UNSOLICITED = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to allocate struct iscsi_seq list\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Unable to allocate struct iscsi_pdu list.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_build_pdu_and_seq_lists(%struct.iscsi_cmd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iscsi_build_list, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iscsi_conn*, align 8
  %10 = alloca %struct.iscsi_pdu*, align 8
  %11 = alloca %struct.iscsi_seq*, align 8
  %12 = alloca %struct.iscsi_session*, align 8
  %13 = alloca %struct.iscsi_node_attrib*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %8, align 8
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %14, i32 0, i32 7
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  store %struct.iscsi_conn* %16, %struct.iscsi_conn** %9, align 8
  store %struct.iscsi_pdu* null, %struct.iscsi_pdu** %10, align 8
  store %struct.iscsi_seq* null, %struct.iscsi_seq** %11, align 8
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %17, i32 0, i32 0
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %18, align 8
  store %struct.iscsi_session* %19, %struct.iscsi_session** %12, align 8
  %20 = load %struct.iscsi_session*, %struct.iscsi_session** %12, align 8
  %21 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.iscsi_session*, %struct.iscsi_session** %12, align 8
  %28 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %206

34:                                               ; preds = %26, %2
  %35 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DMA_NONE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %206

41:                                               ; preds = %34
  %42 = load %struct.iscsi_session*, %struct.iscsi_session** %12, align 8
  %43 = call %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session* %42)
  store %struct.iscsi_node_attrib* %43, %struct.iscsi_node_attrib** %13, align 8
  %44 = call i32 @memset(%struct.iscsi_build_list* %6, i32 0, i32 32)
  %45 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %41
  %51 = load i32, i32* @ISCSI_PDU_READ, align 4
  %52 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %6, i32 0, i32 3
  store i32 %51, i32* %52, align 8
  %53 = load i8*, i8** @PDULIST_NORMAL, align 8
  %54 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %6, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %13, align 8
  %56 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i32, i32* @RANDOM_DATAIN_PDU_OFFSETS, align 4
  %61 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %6, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %59, %50
  %65 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %13, align 8
  %66 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* @RANDOM_DATAIN_SEQ_OFFSETS, align 4
  %71 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %6, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %69, %64
  br label %145

75:                                               ; preds = %41
  %76 = load i32, i32* @ISCSI_PDU_WRITE, align 4
  %77 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %6, i32 0, i32 3
  store i32 %76, i32* %77, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %6, i32 0, i32 2
  store i8* %78, i8** %79, align 8
  %80 = load %struct.iscsi_node_attrib*, %struct.iscsi_node_attrib** %13, align 8
  %81 = getelementptr inbounds %struct.iscsi_node_attrib, %struct.iscsi_node_attrib* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load i32, i32* @RANDOM_R2T_OFFSETS, align 4
  %86 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %6, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %85
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %84, %75
  %90 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %91 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %89
  %95 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %96 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** @PDULIST_NORMAL, align 8
  %101 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %6, i32 0, i32 0
  store i8* %100, i8** %101, align 8
  br label %144

102:                                              ; preds = %94, %89
  %103 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %104 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %109 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i8*, i8** @PDULIST_IMMEDIATE, align 8
  %114 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %6, i32 0, i32 0
  store i8* %113, i8** %114, align 8
  br label %143

115:                                              ; preds = %107, %102
  %116 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %117 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %115
  %121 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %122 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i8*, i8** @PDULIST_UNSOLICITED, align 8
  %127 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %6, i32 0, i32 0
  store i8* %126, i8** %127, align 8
  br label %142

128:                                              ; preds = %120, %115
  %129 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %130 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %135 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i8*, i8** @PDULIST_IMMEDIATE_AND_UNSOLICITED, align 8
  %140 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %6, i32 0, i32 0
  store i8* %139, i8** %140, align 8
  br label %141

141:                                              ; preds = %138, %133, %128
  br label %142

142:                                              ; preds = %141, %125
  br label %143

143:                                              ; preds = %142, %112
  br label %144

144:                                              ; preds = %143, %99
  br label %145

145:                                              ; preds = %144, %74
  %146 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %147 = call i32 @iscsit_determine_counts_for_list(%struct.iscsi_cmd* %146, %struct.iscsi_build_list* %6, i8** %8, i8** %7)
  %148 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %149 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %148, i32 0, i32 0
  %150 = load %struct.iscsi_session*, %struct.iscsi_session** %149, align 8
  %151 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %174, label %156

156:                                              ; preds = %145
  %157 = load i8*, i8** %8, align 8
  %158 = load i32, i32* @GFP_ATOMIC, align 4
  %159 = call i8* @kcalloc(i8* %157, i32 4, i32 %158)
  %160 = bitcast i8* %159 to %struct.iscsi_seq*
  store %struct.iscsi_seq* %160, %struct.iscsi_seq** %11, align 8
  %161 = load %struct.iscsi_seq*, %struct.iscsi_seq** %11, align 8
  %162 = icmp ne %struct.iscsi_seq* %161, null
  br i1 %162, label %167, label %163

163:                                              ; preds = %156
  %164 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %206

167:                                              ; preds = %156
  %168 = load %struct.iscsi_seq*, %struct.iscsi_seq** %11, align 8
  %169 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %170 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %169, i32 0, i32 4
  store %struct.iscsi_seq* %168, %struct.iscsi_seq** %170, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %173 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %167, %145
  %175 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %176 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %175, i32 0, i32 0
  %177 = load %struct.iscsi_session*, %struct.iscsi_session** %176, align 8
  %178 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %177, i32 0, i32 0
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %203, label %183

183:                                              ; preds = %174
  %184 = load i8*, i8** %7, align 8
  %185 = load i32, i32* @GFP_ATOMIC, align 4
  %186 = call i8* @kcalloc(i8* %184, i32 4, i32 %185)
  %187 = bitcast i8* %186 to %struct.iscsi_pdu*
  store %struct.iscsi_pdu* %187, %struct.iscsi_pdu** %10, align 8
  %188 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %10, align 8
  %189 = icmp ne %struct.iscsi_pdu* %188, null
  br i1 %189, label %196, label %190

190:                                              ; preds = %183
  %191 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %192 = load %struct.iscsi_seq*, %struct.iscsi_seq** %11, align 8
  %193 = call i32 @kfree(%struct.iscsi_seq* %192)
  %194 = load i32, i32* @ENOMEM, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %3, align 4
  br label %206

196:                                              ; preds = %183
  %197 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %10, align 8
  %198 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %199 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %198, i32 0, i32 2
  store %struct.iscsi_pdu* %197, %struct.iscsi_pdu** %199, align 8
  %200 = load i8*, i8** %7, align 8
  %201 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %202 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %196, %174
  %204 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %205 = call i32 @iscsit_do_build_pdu_and_seq_lists(%struct.iscsi_cmd* %204, %struct.iscsi_build_list* %6)
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %203, %190, %163, %40, %33
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.iscsi_node_attrib* @iscsit_tpg_get_node_attrib(%struct.iscsi_session*) #1

declare dso_local i32 @memset(%struct.iscsi_build_list*, i32, i32) #1

declare dso_local i32 @iscsit_determine_counts_for_list(%struct.iscsi_cmd*, %struct.iscsi_build_list*, i8**, i8**) #1

declare dso_local i8* @kcalloc(i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.iscsi_seq*) #1

declare dso_local i32 @iscsit_do_build_pdu_and_seq_lists(%struct.iscsi_cmd*, %struct.iscsi_build_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
