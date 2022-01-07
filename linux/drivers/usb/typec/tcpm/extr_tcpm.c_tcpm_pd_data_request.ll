; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_data_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_data_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, i32, i8*, i32, i8**, i8*, i32, i8** }
%struct.pd_message = type { i32*, i32 }

@TYPEC_SINK = common dso_local global i32 0, align 4
@PD_REV10 = common dso_local global i32 0, align 4
@PD_MAX_REV = common dso_local global i32 0, align 4
@SNK_NEGOTIATE_CAPABILITIES = common dso_local global i32 0, align 4
@TYPEC_SOURCE = common dso_local global i32 0, align 4
@PD_MSG_CTRL_REJECT = common dso_local global i32 0, align 4
@SRC_NEGOTIATE_CAPABILITIES = common dso_local global i32 0, align 4
@SRC_READY = common dso_local global i32 0, align 4
@SNK_READY = common dso_local global i32 0, align 4
@BIST_RX = common dso_local global i32 0, align 4
@PD_MSG_CTRL_NOT_SUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unhandled data message type %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*, %struct.pd_message*)* @tcpm_pd_data_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpm_pd_data_request(%struct.tcpm_port* %0, %struct.pd_message* %1) #0 {
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca %struct.pd_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  store %struct.pd_message* %1, %struct.pd_message** %4, align 8
  %9 = load %struct.pd_message*, %struct.pd_message** %4, align 8
  %10 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pd_header_type_le(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.pd_message*, %struct.pd_message** %4, align 8
  %14 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pd_header_cnt_le(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.pd_message*, %struct.pd_message** %4, align 8
  %18 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pd_header_rev_le(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %193 [
    i32 129, label %22
    i32 131, label %82
    i32 130, label %123
    i32 128, label %150
    i32 133, label %157
    i32 135, label %182
    i32 134, label %189
    i32 132, label %189
  ]

22:                                               ; preds = %2
  %23 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %24 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TYPEC_SINK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %197

29:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load %struct.pd_message*, %struct.pd_message** %4, align 8
  %36 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le32_to_cpu(i32 %41)
  %43 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %44 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %43, i32 0, i32 8
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  store i8* %42, i8** %48, align 8
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %30

52:                                               ; preds = %30
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %55 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %57 = call i32 @tcpm_log_source_caps(%struct.tcpm_port* %56)
  %58 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %59 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %60 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %59, i32 0, i32 8
  %61 = load i8**, i8*** %60, align 8
  %62 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %63 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @tcpm_validate_caps(%struct.tcpm_port* %58, i8** %61, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @PD_REV10, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %52
  br label %197

70:                                               ; preds = %52
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @PD_MAX_REV, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %77 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %80 = load i32, i32* @SNK_NEGOTIATE_CAPABILITIES, align 4
  %81 = call i32 @tcpm_set_state(%struct.tcpm_port* %79, i32 %80, i32 0)
  br label %197

82:                                               ; preds = %2
  %83 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %84 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @TYPEC_SOURCE, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %95

91:                                               ; preds = %88, %82
  %92 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %93 = load i32, i32* @PD_MSG_CTRL_REJECT, align 4
  %94 = call i32 @tcpm_queue_message(%struct.tcpm_port* %92, i32 %93)
  br label %197

95:                                               ; preds = %88
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @PD_REV10, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %101 = load i32, i32* @PD_MSG_CTRL_REJECT, align 4
  %102 = call i32 @tcpm_queue_message(%struct.tcpm_port* %100, i32 %101)
  br label %197

103:                                              ; preds = %95
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @PD_MAX_REV, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %110 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %103
  %112 = load %struct.pd_message*, %struct.pd_message** %4, align 8
  %113 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @le32_to_cpu(i32 %116)
  %118 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %119 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %118, i32 0, i32 6
  store i8* %117, i8** %119, align 8
  %120 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %121 = load i32, i32* @SRC_NEGOTIATE_CAPABILITIES, align 4
  %122 = call i32 @tcpm_set_state(%struct.tcpm_port* %120, i32 %121, i32 0)
  br label %197

123:                                              ; preds = %2
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %143, %123
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load %struct.pd_message*, %struct.pd_message** %4, align 8
  %130 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @le32_to_cpu(i32 %135)
  %137 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %138 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %137, i32 0, i32 5
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %136, i8** %142, align 8
  br label %143

143:                                              ; preds = %128
  %144 = load i32, i32* %8, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %124

146:                                              ; preds = %124
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %149 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  br label %197

150:                                              ; preds = %2
  %151 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %152 = load %struct.pd_message*, %struct.pd_message** %4, align 8
  %153 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @tcpm_handle_vdm_request(%struct.tcpm_port* %151, i32* %154, i32 %155)
  br label %197

157:                                              ; preds = %2
  %158 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %159 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @SRC_READY, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %165 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @SNK_READY, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %163, %157
  %170 = load %struct.pd_message*, %struct.pd_message** %4, align 8
  %171 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @le32_to_cpu(i32 %174)
  %176 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %177 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %176, i32 0, i32 3
  store i8* %175, i8** %177, align 8
  %178 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %179 = load i32, i32* @BIST_RX, align 4
  %180 = call i32 @tcpm_set_state(%struct.tcpm_port* %178, i32 %179, i32 0)
  br label %181

181:                                              ; preds = %169, %163
  br label %197

182:                                              ; preds = %2
  %183 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %184 = load %struct.pd_message*, %struct.pd_message** %4, align 8
  %185 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @tcpm_handle_alert(%struct.tcpm_port* %183, i32* %186, i32 %187)
  br label %197

189:                                              ; preds = %2, %2
  %190 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %191 = load i32, i32* @PD_MSG_CTRL_NOT_SUPP, align 4
  %192 = call i32 @tcpm_queue_message(%struct.tcpm_port* %190, i32 %191)
  br label %197

193:                                              ; preds = %2
  %194 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @tcpm_log(%struct.tcpm_port* %194, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %193, %189, %182, %181, %150, %146, %111, %99, %91, %78, %69, %28
  ret void
}

declare dso_local i32 @pd_header_type_le(i32) #1

declare dso_local i32 @pd_header_cnt_le(i32) #1

declare dso_local i32 @pd_header_rev_le(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @tcpm_log_source_caps(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_validate_caps(%struct.tcpm_port*, i8**, i32) #1

declare dso_local i32 @tcpm_set_state(%struct.tcpm_port*, i32, i32) #1

declare dso_local i32 @tcpm_queue_message(%struct.tcpm_port*, i32) #1

declare dso_local i32 @tcpm_handle_vdm_request(%struct.tcpm_port*, i32*, i32) #1

declare dso_local i32 @tcpm_handle_alert(%struct.tcpm_port*, i32*, i32) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
