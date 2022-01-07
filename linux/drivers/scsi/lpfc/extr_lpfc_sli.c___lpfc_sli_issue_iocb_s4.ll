; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli_issue_iocb_s4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli_issue_iocb_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.lpfc_queue*, %struct.TYPE_4__* }
%struct.lpfc_queue = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.lpfc_queue* }
%struct.lpfc_iocbq = type { i32, i64, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.lpfc_sglq = type { i64, i32 }
%union.lpfc_wqe128 = type { i32 }

@LPFC_IO_FCP = common dso_local global i32 0, align 4
@LPFC_USE_FCPWQIDX = common dso_local global i32 0, align 4
@NO_XRI = common dso_local global i64 0, align 8
@CMD_ABORT_XRI_CN = common dso_local global i64 0, align 8
@CMD_CLOSE_XRI_CN = common dso_local global i64 0, align 8
@SLI_IOCB_RET_IOCB = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@IOCB_BUSY = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32)* @__lpfc_sli_issue_iocb_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lpfc_sli_issue_iocb_s4(%struct.lpfc_hba* %0, i32 %1, %struct.lpfc_iocbq* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_sglq*, align 8
  %11 = alloca %union.lpfc_wqe128, align 4
  %12 = alloca %struct.lpfc_queue*, align 8
  %13 = alloca %struct.lpfc_sli_ring*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %15 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @LPFC_IO_FCP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @LPFC_USE_FCPWQIDX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20, %4
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %33 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.lpfc_queue*, %struct.lpfc_queue** %36, align 8
  store %struct.lpfc_queue* %37, %struct.lpfc_queue** %12, align 8
  br label %43

38:                                               ; preds = %20
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.lpfc_queue*, %struct.lpfc_queue** %41, align 8
  store %struct.lpfc_queue* %42, %struct.lpfc_queue** %12, align 8
  br label %43

43:                                               ; preds = %38, %27
  %44 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %45 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %44, i32 0, i32 0
  %46 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %45, align 8
  store %struct.lpfc_sli_ring* %46, %struct.lpfc_sli_ring** %13, align 8
  %47 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %13, align 8
  %48 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %47, i32 0, i32 1
  %49 = call i32 @lockdep_assert_held(i32* %48)
  %50 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %51 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NO_XRI, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %110

55:                                               ; preds = %43
  %56 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %57 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CMD_ABORT_XRI_CN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %64 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CMD_CLOSE_XRI_CN, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62, %55
  store %struct.lpfc_sglq* null, %struct.lpfc_sglq** %10, align 8
  br label %109

70:                                               ; preds = %62
  %71 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %13, align 8
  %72 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %71, i32 0, i32 0
  %73 = call i32 @list_empty(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SLI_IOCB_RET_IOCB, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %75
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %82 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %13, align 8
  %83 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %84 = call i32 @__lpfc_sli_ringtx_put(%struct.lpfc_hba* %81, %struct.lpfc_sli_ring* %82, %struct.lpfc_iocbq* %83)
  %85 = load i32, i32* @IOCB_SUCCESS, align 4
  store i32 %85, i32* %5, align 4
  br label %171

86:                                               ; preds = %75
  %87 = load i32, i32* @IOCB_BUSY, align 4
  store i32 %87, i32* %5, align 4
  br label %171

88:                                               ; preds = %70
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %90 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %91 = call %struct.lpfc_sglq* @__lpfc_sli_get_els_sglq(%struct.lpfc_hba* %89, %struct.lpfc_iocbq* %90)
  store %struct.lpfc_sglq* %91, %struct.lpfc_sglq** %10, align 8
  %92 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %10, align 8
  %93 = icmp ne %struct.lpfc_sglq* %92, null
  br i1 %93, label %107, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @SLI_IOCB_RET_IOCB, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %94
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %101 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %13, align 8
  %102 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %103 = call i32 @__lpfc_sli_ringtx_put(%struct.lpfc_hba* %100, %struct.lpfc_sli_ring* %101, %struct.lpfc_iocbq* %102)
  %104 = load i32, i32* @IOCB_SUCCESS, align 4
  store i32 %104, i32* %5, align 4
  br label %171

105:                                              ; preds = %94
  %106 = load i32, i32* @IOCB_BUSY, align 4
  store i32 %106, i32* %5, align 4
  br label %171

107:                                              ; preds = %88
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %69
  br label %130

110:                                              ; preds = %43
  %111 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %112 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @LPFC_IO_FCP, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store %struct.lpfc_sglq* null, %struct.lpfc_sglq** %10, align 8
  br label %129

118:                                              ; preds = %110
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %120 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %121 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call %struct.lpfc_sglq* @__lpfc_get_active_sglq(%struct.lpfc_hba* %119, i32 %122)
  store %struct.lpfc_sglq* %123, %struct.lpfc_sglq** %10, align 8
  %124 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %10, align 8
  %125 = icmp ne %struct.lpfc_sglq* %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %118
  %127 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %127, i32* %5, align 4
  br label %171

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %117
  br label %130

130:                                              ; preds = %129, %109
  %131 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %10, align 8
  %132 = icmp ne %struct.lpfc_sglq* %131, null
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  %134 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %10, align 8
  %135 = getelementptr inbounds %struct.lpfc_sglq, %struct.lpfc_sglq* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %138 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 8
  %139 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %10, align 8
  %140 = getelementptr inbounds %struct.lpfc_sglq, %struct.lpfc_sglq* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %143 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* @NO_XRI, align 8
  %145 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %146 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %147 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %10, align 8
  %148 = call i64 @lpfc_sli4_bpl2sgl(%struct.lpfc_hba* %145, %struct.lpfc_iocbq* %146, %struct.lpfc_sglq* %147)
  %149 = icmp eq i64 %144, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %133
  %151 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %151, i32* %5, align 4
  br label %171

152:                                              ; preds = %133
  br label %153

153:                                              ; preds = %152, %130
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %155 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %156 = call i64 @lpfc_sli4_iocb2wqe(%struct.lpfc_hba* %154, %struct.lpfc_iocbq* %155, %union.lpfc_wqe128* %11)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %159, i32* %5, align 4
  br label %171

160:                                              ; preds = %153
  %161 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %162 = call i64 @lpfc_sli4_wq_put(%struct.lpfc_queue* %161, %union.lpfc_wqe128* %11)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %165, i32* %5, align 4
  br label %171

166:                                              ; preds = %160
  %167 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %168 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %13, align 8
  %169 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %170 = call i32 @lpfc_sli_ringtxcmpl_put(%struct.lpfc_hba* %167, %struct.lpfc_sli_ring* %168, %struct.lpfc_iocbq* %169)
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %166, %164, %158, %150, %126, %105, %99, %86, %80
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__lpfc_sli_ringtx_put(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

declare dso_local %struct.lpfc_sglq* @__lpfc_sli_get_els_sglq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local %struct.lpfc_sglq* @__lpfc_get_active_sglq(%struct.lpfc_hba*, i32) #1

declare dso_local i64 @lpfc_sli4_bpl2sgl(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_sglq*) #1

declare dso_local i64 @lpfc_sli4_iocb2wqe(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %union.lpfc_wqe128*) #1

declare dso_local i64 @lpfc_sli4_wq_put(%struct.lpfc_queue*, %union.lpfc_wqe128*) #1

declare dso_local i32 @lpfc_sli_ringtxcmpl_put(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
