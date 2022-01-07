; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_24xx_process_atio_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_24xx_process_atio_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_13__, i32, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.atio_from_isp = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@ATIO_PROCESSED = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"corrupted fcp frame SID[%3phN] OXID[%04x] EXCG[%x] %64phN\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlt_24xx_process_atio_queue(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.atio_from_isp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 0
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %5, align 8
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %152

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %142, %18
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ATIO_PROCESSED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %19
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = call i64 @fcpcmd_is_corrupted(%struct.TYPE_14__* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %28, %19
  %36 = phi i1 [ true, %19 ], [ %34, %28 ]
  br i1 %36, label %37, label %144

37:                                               ; preds = %35
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = bitcast %struct.TYPE_14__* %41 to %struct.atio_from_isp*
  store %struct.atio_from_isp* %42, %struct.atio_from_isp** %6, align 8
  %43 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %44 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = call i64 @fcpcmd_is_corrupted(%struct.TYPE_14__* %51)
  %53 = call i64 @unlikely(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %37
  %56 = load i32, i32* @ql_log_warn, align 4
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %58 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %59 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %64 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be16_to_cpu(i32 %68)
  %70 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %71 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %77 = call i32 @ql_log(i32 %56, %struct.scsi_qla_host* %57, i32 53308, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32* %62, i32 %69, i32 %75, %struct.atio_from_isp* %76)
  %78 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %79 = call i32 @adjust_corrupted_atio(%struct.atio_from_isp* %78)
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %81 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @qlt_send_term_exchange(i32 %82, i32* null, %struct.atio_from_isp* %83, i32 %84, i32 0)
  br label %91

86:                                               ; preds = %37
  %87 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %88 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @qlt_24xx_atio_pkt_all_vps(%struct.scsi_qla_host* %87, %struct.atio_from_isp* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %55
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %139, %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %142

96:                                               ; preds = %92
  %97 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %98 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %103 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %107 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %105, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %96
  %112 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %113 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %116 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %120 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %121, align 8
  br label %128

122:                                              ; preds = %96
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %124 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 1
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %125, align 8
  br label %128

128:                                              ; preds = %122, %111
  %129 = load i64, i64* @ATIO_PROCESSED, align 8
  %130 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %131 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  store i64 %129, i64* %133, align 8
  %134 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %135 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = bitcast %struct.TYPE_14__* %137 to %struct.atio_from_isp*
  store %struct.atio_from_isp* %138, %struct.atio_from_isp** %6, align 8
  br label %139

139:                                              ; preds = %128
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %92

142:                                              ; preds = %92
  %143 = call i32 (...) @wmb()
  br label %19

144:                                              ; preds = %35
  %145 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %146 = call i32 @ISP_ATIO_Q_OUT(%struct.scsi_qla_host* %145)
  %147 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %148 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @WRT_REG_DWORD(i32 %146, i64 %150)
  br label %152

152:                                              ; preds = %144, %17
  ret void
}

declare dso_local i64 @fcpcmd_is_corrupted(%struct.TYPE_14__*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, i32*, i32, i32, %struct.atio_from_isp*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @adjust_corrupted_atio(%struct.atio_from_isp*) #1

declare dso_local i32 @qlt_send_term_exchange(i32, i32*, %struct.atio_from_isp*, i32, i32) #1

declare dso_local i32 @qlt_24xx_atio_pkt_all_vps(%struct.scsi_qla_host*, %struct.atio_from_isp*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @WRT_REG_DWORD(i32, i64) #1

declare dso_local i32 @ISP_ATIO_Q_OUT(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
