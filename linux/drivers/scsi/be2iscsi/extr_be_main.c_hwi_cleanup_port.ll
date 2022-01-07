; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hwi_cleanup_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hwi_cleanup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, %struct.be_ctrl_info, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.hwi_controller* }
%struct.be_ctrl_info = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hwi_controller = type { %struct.hwi_context_memory* }
%struct.hwi_context_memory = type { %struct.TYPE_8__*, %struct.be_queue_info*, %struct.be_queue_info*, %struct.be_queue_info*, %struct.be_queue_info* }
%struct.TYPE_8__ = type { %struct.be_queue_info }
%struct.be_queue_info = type { i64 }

@BEISCSI_ULP_COUNT = common dso_local global i32 0, align 4
@QTYPE_WRBQ = common dso_local global i32 0, align 4
@QTYPE_DPDUQ = common dso_local global i32 0, align 4
@QTYPE_SGL = common dso_local global i32 0, align 4
@QTYPE_CQ = common dso_local global i32 0, align 4
@QTYPE_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @hwi_cleanup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwi_cleanup_port(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_queue_info*, align 8
  %4 = alloca %struct.be_ctrl_info*, align 8
  %5 = alloca %struct.hwi_controller*, align 8
  %6 = alloca %struct.hwi_context_memory*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 1
  store %struct.be_ctrl_info* %11, %struct.be_ctrl_info** %4, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %28, %1
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @BEISCSI_ULP_COUNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %19 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %17, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @beiscsi_cmd_iscsi_cleanup(%struct.beiscsi_hba* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %16
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %12

31:                                               ; preds = %12
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %33 = call i32 @hwi_purge_eq(%struct.beiscsi_hba* %32)
  %34 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %35 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %34, i32 0, i32 5
  %36 = load %struct.hwi_controller*, %struct.hwi_controller** %35, align 8
  store %struct.hwi_controller* %36, %struct.hwi_controller** %5, align 8
  %37 = load %struct.hwi_controller*, %struct.hwi_controller** %5, align 8
  %38 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %37, i32 0, i32 0
  %39 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %38, align 8
  store %struct.hwi_context_memory* %39, %struct.hwi_context_memory** %6, align 8
  %40 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %41 = call i32 @be_cmd_iscsi_remove_template_hdr(%struct.be_ctrl_info* %40)
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %66, %31
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %45 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %51 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %50, i32 0, i32 4
  %52 = load %struct.be_queue_info*, %struct.be_queue_info** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %52, i64 %54
  store %struct.be_queue_info* %55, %struct.be_queue_info** %3, align 8
  %56 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %57 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %62 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %63 = load i32, i32* @QTYPE_WRBQ, align 4
  %64 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %61, %struct.be_queue_info* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %49
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %42

69:                                               ; preds = %42
  %70 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %71 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %70, i32 0, i32 4
  %72 = load %struct.be_queue_info*, %struct.be_queue_info** %71, align 8
  %73 = call i32 @kfree(%struct.be_queue_info* %72)
  %74 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %75 = call i32 @free_wrb_handles(%struct.beiscsi_hba* %74)
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %121, %69
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @BEISCSI_ULP_COUNT, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %124

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %83 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i64 @test_bit(i32 %81, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %120

87:                                               ; preds = %80
  %88 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %89 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %88, i32 0, i32 3
  %90 = load %struct.be_queue_info*, %struct.be_queue_info** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %90, i64 %92
  store %struct.be_queue_info* %93, %struct.be_queue_info** %3, align 8
  %94 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %95 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %100 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %101 = load i32, i32* @QTYPE_DPDUQ, align 4
  %102 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %99, %struct.be_queue_info* %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %87
  %104 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %105 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %104, i32 0, i32 2
  %106 = load %struct.be_queue_info*, %struct.be_queue_info** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %106, i64 %108
  store %struct.be_queue_info* %109, %struct.be_queue_info** %3, align 8
  %110 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %111 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %103
  %115 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %116 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %117 = load i32, i32* @QTYPE_DPDUQ, align 4
  %118 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %115, %struct.be_queue_info* %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %103
  br label %120

120:                                              ; preds = %119, %80
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %76

124:                                              ; preds = %76
  %125 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %126 = load i32, i32* @QTYPE_SGL, align 4
  %127 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %125, %struct.be_queue_info* null, i32 %126)
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %154, %124
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %131 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %157

134:                                              ; preds = %128
  %135 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %136 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %135, i32 0, i32 1
  %137 = load %struct.be_queue_info*, %struct.be_queue_info** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %137, i64 %139
  store %struct.be_queue_info* %140, %struct.be_queue_info** %3, align 8
  %141 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %142 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %134
  %146 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %147 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %148 = call i32 @be_queue_free(%struct.beiscsi_hba* %146, %struct.be_queue_info* %147)
  %149 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %150 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %151 = load i32, i32* @QTYPE_CQ, align 4
  %152 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %149, %struct.be_queue_info* %150, i32 %151)
  br label %153

153:                                              ; preds = %145, %134
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %128

157:                                              ; preds = %128
  %158 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %159 = call i32 @be_mcc_queues_destroy(%struct.beiscsi_hba* %158)
  %160 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %161 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %160, i32 0, i32 2
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  store i32 1, i32* %8, align 4
  br label %168

167:                                              ; preds = %157
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %167, %166
  store i32 0, i32* %7, align 4
  br label %169

169:                                              ; preds = %198, %168
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %172 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %173, %174
  %176 = icmp slt i32 %170, %175
  br i1 %176, label %177, label %201

177:                                              ; preds = %169
  %178 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %179 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %178, i32 0, i32 0
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  store %struct.be_queue_info* %184, %struct.be_queue_info** %3, align 8
  %185 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %186 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %177
  %190 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %191 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %192 = call i32 @be_queue_free(%struct.beiscsi_hba* %190, %struct.be_queue_info* %191)
  %193 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %194 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %195 = load i32, i32* @QTYPE_EQ, align 4
  %196 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %193, %struct.be_queue_info* %194, i32 %195)
  br label %197

197:                                              ; preds = %189, %177
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %169

201:                                              ; preds = %169
  %202 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %203 = call i32 @beiscsi_cmd_function_reset(%struct.beiscsi_hba* %202)
  %204 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %205 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %204, i32 0, i32 1
  %206 = call i32 @beiscsi_cmd_special_wrb(%struct.be_ctrl_info* %205, i32 0)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @beiscsi_cmd_iscsi_cleanup(%struct.beiscsi_hba*, i32) #1

declare dso_local i32 @hwi_purge_eq(%struct.beiscsi_hba*) #1

declare dso_local i32 @be_cmd_iscsi_remove_template_hdr(%struct.be_ctrl_info*) #1

declare dso_local i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info*, %struct.be_queue_info*, i32) #1

declare dso_local i32 @kfree(%struct.be_queue_info*) #1

declare dso_local i32 @free_wrb_handles(%struct.beiscsi_hba*) #1

declare dso_local i32 @be_queue_free(%struct.beiscsi_hba*, %struct.be_queue_info*) #1

declare dso_local i32 @be_mcc_queues_destroy(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_cmd_function_reset(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_cmd_special_wrb(%struct.be_ctrl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
