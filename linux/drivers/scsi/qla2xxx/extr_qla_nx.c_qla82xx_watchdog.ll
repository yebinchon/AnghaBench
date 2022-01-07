; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.qla_hw_data* }
%struct.TYPE_10__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@QLA82XX_CRB_DEV_STATE = common dso_local global i64 0, align 8
@ISP_UNRECOVERABLE = common dso_local global i32 0, align 4
@QLA8XXX_DEV_NEED_RESET = common dso_local global i64 0, align 8
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Adapter reset needed.\0A\00", align 1
@QLA8XXX_DEV_NEED_QUIESCENT = common dso_local global i64 0, align 8
@ISP_QUIESCE_NEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Quiescent needed.\0A\00", align 1
@QLA8XXX_DEV_FAILED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Adapter state is failed. Offlining.\0A\00", align 1
@ql_dbg_timer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"disabling pause transmit on port 0 & 1.\0A\00", align 1
@QLA82XX_CRB_NIU = common dso_local global i64 0, align 8
@CRB_NIU_XG_PAUSE_CTL_P0 = common dso_local global i32 0, align 4
@CRB_NIU_XG_PAUSE_CTL_P1 = common dso_local global i32 0, align 4
@QLA82XX_PEG_HALT_STATUS1 = common dso_local global i64 0, align 8
@ql_log_info = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [186 x i8] c"dumping hw/fw registers:.\0A  PEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,.\0A  PEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,.\0A  PEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,.\0A  PEG_NET_4_PC: 0x%x.\0A\00", align 1
@QLA82XX_PEG_HALT_STATUS2 = common dso_local global i64 0, align 8
@QLA82XX_CRB_PEG_NET_0 = common dso_local global i64 0, align 8
@QLA82XX_CRB_PEG_NET_1 = common dso_local global i64 0, align 8
@QLA82XX_CRB_PEG_NET_2 = common dso_local global i64 0, align 8
@QLA82XX_CRB_PEG_NET_3 = common dso_local global i64 0, align 8
@QLA82XX_CRB_PEG_NET_4 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [69 x i8] c"Firmware aborted with error code 0x00006700. Device is being reset.\0A\00", align 1
@HALT_STATUS_UNRECOVERABLE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"Detect abort  needed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Firmware hung.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla82xx_watchdog(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %5, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %181, label %14

14:                                               ; preds = %1
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %16 = load i64, i64* @QLA82XX_CRB_DEV_STATE, align 8
  %17 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %15, i64 %16)
  store i64 %17, i64* %3, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = call i64 @qla82xx_check_temp(%struct.TYPE_12__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load i32, i32* @ISP_UNRECOVERABLE, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %27 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = call i32 @qla82xx_clear_pending_mbx(%struct.TYPE_12__* %29)
  br label %180

31:                                               ; preds = %14
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @QLA8XXX_DEV_NEED_RESET, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ql_log_warn, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_log(i32 %42, %struct.TYPE_12__* %43, i32 24577, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  br label %179

49:                                               ; preds = %35, %31
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @QLA8XXX_DEV_NEED_QUIESCENT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i32, i32* @ISP_QUIESCE_NEEDED, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = call i32 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ql_log_warn, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %62 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_log(i32 %60, %struct.TYPE_12__* %61, i32 24578, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @ISP_QUIESCE_NEEDED, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  br label %178

67:                                               ; preds = %53, %49
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* @QLA8XXX_DEV_FAILED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load i32, i32* @ISP_UNRECOVERABLE, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = call i32 @test_bit(i32 %72, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load i32, i32* @ql_log_warn, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %86 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_log(i32 %84, %struct.TYPE_12__* %85, i32 45141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @ISP_UNRECOVERABLE, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %92 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %95 = call i32 @qla82xx_clear_pending_mbx(%struct.TYPE_12__* %94)
  br label %177

96:                                               ; preds = %77, %71, %67
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %98 = call i64 @qla82xx_check_fw_alive(%struct.TYPE_12__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %176

100:                                              ; preds = %96
  %101 = load i32, i32* @ql_dbg_timer, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %103 = call i32 @ql_dbg(i32 %101, %struct.TYPE_12__* %102, i32 24593, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %105 = load i64, i64* @QLA82XX_CRB_NIU, align 8
  %106 = add nsw i64 %105, 152
  %107 = load i32, i32* @CRB_NIU_XG_PAUSE_CTL_P0, align 4
  %108 = load i32, i32* @CRB_NIU_XG_PAUSE_CTL_P1, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %104, i64 %106, i32 %109)
  %111 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %112 = load i64, i64* @QLA82XX_PEG_HALT_STATUS1, align 8
  %113 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %111, i64 %112)
  store i64 %113, i64* %4, align 8
  %114 = load i32, i32* @ql_log_info, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %116 = load i64, i64* %4, align 8
  %117 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %118 = load i64, i64* @QLA82XX_PEG_HALT_STATUS2, align 8
  %119 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %117, i64 %118)
  %120 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %121 = load i64, i64* @QLA82XX_CRB_PEG_NET_0, align 8
  %122 = add nsw i64 %121, 60
  %123 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %120, i64 %122)
  %124 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %125 = load i64, i64* @QLA82XX_CRB_PEG_NET_1, align 8
  %126 = add nsw i64 %125, 60
  %127 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %124, i64 %126)
  %128 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %129 = load i64, i64* @QLA82XX_CRB_PEG_NET_2, align 8
  %130 = add nsw i64 %129, 60
  %131 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %128, i64 %130)
  %132 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %133 = load i64, i64* @QLA82XX_CRB_PEG_NET_3, align 8
  %134 = add nsw i64 %133, 60
  %135 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %132, i64 %134)
  %136 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %137 = load i64, i64* @QLA82XX_CRB_PEG_NET_4, align 8
  %138 = add nsw i64 %137, 60
  %139 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %136, i64 %138)
  %140 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_log(i32 %114, %struct.TYPE_12__* %115, i32 24581, i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.4, i64 0, i64 0), i64 %116, i64 %119, i64 %123, i64 %127, i64 %131, i64 %135, i64 %139)
  %141 = load i64, i64* %4, align 8
  %142 = and i64 %141, 536870656
  %143 = ashr i64 %142, 8
  %144 = icmp eq i64 %143, 103
  br i1 %144, label %145, label %149

145:                                              ; preds = %100
  %146 = load i32, i32* @ql_log_warn, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %148 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_log(i32 %146, %struct.TYPE_12__* %147, i32 45138, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  br label %149

149:                                              ; preds = %145, %100
  %150 = load i64, i64* %4, align 8
  %151 = load i64, i64* @HALT_STATUS_UNRECOVERABLE, align 8
  %152 = and i64 %150, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load i32, i32* @ISP_UNRECOVERABLE, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = call i32 @set_bit(i32 %155, i32* %157)
  br label %167

159:                                              ; preds = %149
  %160 = load i32, i32* @ql_log_info, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %162 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_log(i32 %160, %struct.TYPE_12__* %161, i32 24582, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %163 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = call i32 @set_bit(i32 %163, i32* %165)
  br label %167

167:                                              ; preds = %159, %154
  %168 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %169 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  store i32 1, i32* %170, align 4
  %171 = load i32, i32* @ql_log_warn, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %173 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_log(i32 %171, %struct.TYPE_12__* %172, i32 24583, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %175 = call i32 @qla82xx_clear_pending_mbx(%struct.TYPE_12__* %174)
  br label %176

176:                                              ; preds = %167, %96
  br label %177

177:                                              ; preds = %176, %83
  br label %178

178:                                              ; preds = %177, %59
  br label %179

179:                                              ; preds = %178, %41
  br label %180

180:                                              ; preds = %179, %21
  br label %181

181:                                              ; preds = %180, %1
  ret void
}

declare dso_local i64 @qla82xx_rd_32(%struct.qla_hw_data*, i64) #1

declare dso_local i64 @qla82xx_check_temp(%struct.TYPE_12__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla82xx_clear_pending_mbx(%struct.TYPE_12__*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i64 @qla82xx_check_fw_alive(%struct.TYPE_12__*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
