; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_get_outbound_responses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_get_outbound_responses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32, i32, %struct.esas2r_request**, %struct.TYPE_4__, i32* }
%struct.esas2r_request = type { i32, i32, %struct.TYPE_6__*, %struct.esas2r_request*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.atto_vda_ob_rsp = type { i32, i32, %struct.esas2r_request* }

@comp_list = common dso_local global i32 0, align 4
@MU_OLC_WRT_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rspput_ptr: %x, rspget_ptr: %x\00", align 1
@num_requests = common dso_local global i64 0, align 8
@num_ae_requests = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"handle: %x\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rq: %p\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"req_status: %x\00", align 1
@VDA_FUNC_SCSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*)* @esas2r_get_outbound_responses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_get_outbound_responses(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca %struct.atto_vda_ob_rsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.esas2r_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %9 = load i32, i32* @comp_list, align 4
  %10 = call i32 @LIST_HEAD(i32 %9)
  %11 = call i32 (...) @esas2r_trace_enter()
  %12 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %12, i32 0, i32 2
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  %21 = load i32, i32* @MU_OLC_WRT_PTR, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i8*, ...) @esas2r_trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %36, i32 0, i32 2
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = call i32 (...) @esas2r_trace_exit()
  br label %183

41:                                               ; preds = %1
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %51, i32 0, i32 2
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = call i32 (...) @esas2r_bugon()
  %56 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %57 = call i32 @esas2r_local_reset_adapter(%struct.esas2r_adapter* %56)
  %58 = call i32 (...) @esas2r_trace_exit()
  br label %183

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %168, %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %60
  %70 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.atto_vda_ob_rsp*
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.atto_vda_ob_rsp, %struct.atto_vda_ob_rsp* %74, i64 %76
  store %struct.atto_vda_ob_rsp* %77, %struct.atto_vda_ob_rsp** %3, align 8
  %78 = load %struct.atto_vda_ob_rsp*, %struct.atto_vda_ob_rsp** %3, align 8
  %79 = getelementptr inbounds %struct.atto_vda_ob_rsp, %struct.atto_vda_ob_rsp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @LOWORD(i32 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @LOWORD(i32 %85)
  %87 = load i64, i64* @num_requests, align 8
  %88 = load i64, i64* @num_ae_requests, align 8
  %89 = add i64 %87, %88
  %90 = add i64 %89, 1
  %91 = icmp ugt i64 %86, %90
  br label %92

92:                                               ; preds = %84, %69
  %93 = phi i1 [ true, %69 ], [ %91, %84 ]
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 (...) @esas2r_bugon()
  br label %168

99:                                               ; preds = %92
  %100 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %101 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %100, i32 0, i32 3
  %102 = load %struct.esas2r_request**, %struct.esas2r_request*** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i64 @LOWORD(i32 %103)
  %105 = getelementptr inbounds %struct.esas2r_request*, %struct.esas2r_request** %102, i64 %104
  %106 = load %struct.esas2r_request*, %struct.esas2r_request** %105, align 8
  store %struct.esas2r_request* %106, %struct.esas2r_request** %6, align 8
  %107 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %108 = icmp eq %struct.esas2r_request* %107, null
  br i1 %108, label %118, label %109

109:                                              ; preds = %99
  %110 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %111 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %110, i32 0, i32 2
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %115, %116
  br label %118

118:                                              ; preds = %109, %99
  %119 = phi i1 [ true, %99 ], [ %117, %109 ]
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = call i32 (...) @esas2r_bugon()
  br label %168

125:                                              ; preds = %118
  %126 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %127 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %126, i32 0, i32 4
  %128 = call i32 @list_del(i32* %127)
  %129 = load %struct.atto_vda_ob_rsp*, %struct.atto_vda_ob_rsp** %3, align 8
  %130 = getelementptr inbounds %struct.atto_vda_ob_rsp, %struct.atto_vda_ob_rsp* %129, i32 0, i32 2
  %131 = load %struct.esas2r_request*, %struct.esas2r_request** %130, align 8
  %132 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %133 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %132, i32 0, i32 3
  store %struct.esas2r_request* %131, %struct.esas2r_request** %133, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 (i8*, ...) @esas2r_trace(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  %136 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %137 = call i32 (i8*, ...) @esas2r_trace(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.esas2r_request* %136)
  %138 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %139 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %138, i32 0, i32 3
  %140 = load %struct.esas2r_request*, %struct.esas2r_request** %139, align 8
  %141 = call i32 (i8*, ...) @esas2r_trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), %struct.esas2r_request* %140)
  %142 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %143 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %142, i32 0, i32 2
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @VDA_FUNC_SCSI, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i64 @likely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %125
  %154 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %155 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %156 = load %struct.atto_vda_ob_rsp*, %struct.atto_vda_ob_rsp** %3, align 8
  %157 = call i32 @esas2r_handle_outbound_rsp_err(%struct.esas2r_adapter* %154, %struct.esas2r_request* %155, %struct.atto_vda_ob_rsp* %156)
  br label %164

158:                                              ; preds = %125
  %159 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %160 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %159, i32 0, i32 1
  %161 = load %struct.atto_vda_ob_rsp*, %struct.atto_vda_ob_rsp** %3, align 8
  %162 = getelementptr inbounds %struct.atto_vda_ob_rsp, %struct.atto_vda_ob_rsp* %161, i32 0, i32 1
  %163 = call i32 @memcpy(i32* %160, i32* %162, i32 4)
  br label %164

164:                                              ; preds = %158, %153
  %165 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %166 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %165, i32 0, i32 0
  %167 = call i32 @list_add_tail(i32* %166, i32* @comp_list)
  br label %168

168:                                              ; preds = %164, %123, %97
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* %4, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %60, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %175 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %177 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %176, i32 0, i32 2
  %178 = load i64, i64* %8, align 8
  %179 = call i32 @spin_unlock_irqrestore(i32* %177, i64 %178)
  %180 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %181 = call i32 @esas2r_comp_list_drain(%struct.esas2r_adapter* %180, i32* @comp_list)
  %182 = call i32 (...) @esas2r_trace_exit()
  br label %183

183:                                              ; preds = %172, %50, %35
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @esas2r_trace(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

declare dso_local i32 @esas2r_bugon(...) #1

declare dso_local i32 @esas2r_local_reset_adapter(%struct.esas2r_adapter*) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @esas2r_handle_outbound_rsp_err(%struct.esas2r_adapter*, %struct.esas2r_request*, %struct.atto_vda_ob_rsp*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @esas2r_comp_list_drain(%struct.esas2r_adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
