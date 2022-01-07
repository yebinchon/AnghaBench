; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_scsi_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_scsi_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { i64, %struct.scsi_cmnd*, %struct.TYPE_3__* }
%struct.scsi_cmnd = type { i32, i64, i32 (%struct.scsi_cmnd*)*, i32, i32 }
%struct.TYPE_3__ = type { %struct.ibmvfc_cmd }
%struct.ibmvfc_cmd = type { i64, i64, i64, i64, %struct.ibmvfc_fcp_rsp }
%struct.ibmvfc_fcp_rsp = type { i32, %struct.TYPE_4__, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@IBMVFC_ADAPTER_RESID_VALID = common dso_local global i32 0, align 4
@FCP_RESID_UNDER = common dso_local global i32 0, align 4
@FCP_RSP_LEN_VALID = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i64 0, align 8
@FCP_SNS_LEN_VALID = common dso_local global i32 0, align 4
@IBMVFC_VIOS_FAILURE = common dso_local global i32 0, align 4
@IBMVFC_PLOGI_REQUIRED = common dso_local global i32 0, align 4
@FCP_RESID_OVER = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_scsi_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_scsi_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_cmd*, align 8
  %4 = alloca %struct.ibmvfc_fcp_rsp*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %8 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %9 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.ibmvfc_cmd* %11, %struct.ibmvfc_cmd** %3, align 8
  %12 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %12, i32 0, i32 4
  store %struct.ibmvfc_fcp_rsp* %13, %struct.ibmvfc_fcp_rsp** %4, align 8
  %14 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %15 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %14, i32 0, i32 1
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  store %struct.scsi_cmnd* %16, %struct.scsi_cmnd** %5, align 8
  store i64 0, i64* %6, align 8
  %17 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %18 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @be32_to_cpu(i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %22 = icmp ne %struct.scsi_cmnd* %21, null
  br i1 %22, label %23, label %186

23:                                               ; preds = %1
  %24 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @be16_to_cpu(i64 %26)
  %28 = load i32, i32* @IBMVFC_ADAPTER_RESID_VALID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %33 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %34 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @be32_to_cpu(i64 %35)
  %37 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %32, i64 %36)
  br label %56

38:                                               ; preds = %23
  %39 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %40 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FCP_RESID_UNDER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %47 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %48 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @be32_to_cpu(i64 %49)
  %51 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %46, i64 %50)
  br label %55

52:                                               ; preds = %38
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %54 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %53, i64 0)
  br label %55

55:                                               ; preds = %52, %45
  br label %56

56:                                               ; preds = %55, %31
  %57 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %58 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %158

61:                                               ; preds = %56
  %62 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %63 = call i32 @ibmvfc_get_err_result(%struct.ibmvfc_cmd* %62)
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %67 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @FCP_RSP_LEN_VALID, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %74 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @be32_to_cpu(i64 %75)
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %72, %61
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %6, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %85 = load i64, i64* %6, align 8
  %86 = sub nsw i64 %84, %85
  store i64 %86, i64* %7, align 8
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %89 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @FCP_SNS_LEN_VALID, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %87
  %95 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %96 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load i64, i64* %6, align 8
  %101 = icmp sle i64 %100, 8
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %107 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @memcpy(i32 %105, i64 %111, i64 %112)
  br label %114

114:                                              ; preds = %102, %99, %94, %87
  %115 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %116 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @be16_to_cpu(i64 %117)
  %119 = load i32, i32* @IBMVFC_VIOS_FAILURE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %114
  %123 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %124 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @be16_to_cpu(i64 %125)
  %127 = load i32, i32* @IBMVFC_PLOGI_REQUIRED, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %131 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ibmvfc_relogin(i32 %132)
  br label %134

134:                                              ; preds = %129, %122, %114
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %136 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %155, label %139

139:                                              ; preds = %134
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %141 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %145 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @FCP_RESID_OVER, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %143, %139
  %151 = load i32, i32* @DID_ERROR, align 4
  %152 = shl i32 %151, 16
  %153 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %154 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %143, %134
  %156 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %157 = call i32 @ibmvfc_log_error(%struct.ibmvfc_event* %156)
  br label %158

158:                                              ; preds = %155, %56
  %159 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %160 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %178, label %163

163:                                              ; preds = %158
  %164 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %165 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %164)
  %166 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %167 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %166)
  %168 = sub nsw i64 %165, %167
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %170 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp slt i64 %168, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %163
  %174 = load i32, i32* @DID_ERROR, align 4
  %175 = shl i32 %174, 16
  %176 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %177 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  br label %178

178:                                              ; preds = %173, %163, %158
  %179 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %180 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %179)
  %181 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %182 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %181, i32 0, i32 2
  %183 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %182, align 8
  %184 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %185 = call i32 %183(%struct.scsi_cmnd* %184)
  br label %186

186:                                              ; preds = %178, %1
  %187 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %188 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %193 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @complete(i64 %194)
  br label %196

196:                                              ; preds = %191, %186
  %197 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %198 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %197)
  ret void
}

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i32 @ibmvfc_get_err_result(%struct.ibmvfc_cmd*) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @ibmvfc_relogin(i32) #1

declare dso_local i64 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @ibmvfc_log_error(%struct.ibmvfc_event*) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
