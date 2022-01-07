; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_handle_crq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_handle_crq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i64, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.viosrp_crq* }
%struct.viosrp_crq = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"got interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"handle_crq, don't process: flags 0x%x, state 0x%hx\0A\00", align 1
@SCHEDULE_DISCONNECT = common dso_local global i64 0, align 8
@VALID_TRANS_EVENT = common dso_local global i64 0, align 8
@TRANS_EVENT = common dso_local global i32 0, align 4
@INVALIDATE_CMD_RESP_EL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"handle_crq, reenabling interrupts\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"handle_crq, error: flags 0x%x, state 0x%hx, crq index 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Leaving handle_crq: schedule_q empty %d, flags 0x%x, state 0x%hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ibmvscsis_handle_crq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsis_handle_crq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca %struct.viosrp_crq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.scsi_info*
  store %struct.scsi_info* %9, %struct.scsi_info** %3, align 8
  store i32 1, i32* %6, align 4
  %10 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %10, i32 0, i32 2
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %13, i32 0, i32 4
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %17 = call i64 @TARGET_STOP(%struct.scsi_info* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %1
  %20 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @vio_enable_interrupts(i32 %22)
  %24 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %24, i32 0, i32 4
  %26 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %28, i32 %31)
  %33 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock_bh(i32* %34)
  br label %193

36:                                               ; preds = %1
  %37 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SCHEDULE_DISCONNECT, align 8
  %41 = and i64 %39, %40
  store i64 %41, i64* %5, align 8
  %42 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %43 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load %struct.viosrp_crq*, %struct.viosrp_crq** %44, align 8
  %46 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %47 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %45, i64 %50
  store %struct.viosrp_crq* %51, %struct.viosrp_crq** %4, align 8
  %52 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %53 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store volatile i64 %54, i64* %7, align 8
  %55 = call i32 (...) @dma_rmb()
  br label %56

56:                                               ; preds = %121, %36
  %57 = load volatile i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %139

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %160, %59
  %61 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %62 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %67 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %65, %69
  %71 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %72 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %60
  %77 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %78 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %79 = call i64 @ibmvscsis_parse_command(%struct.scsi_info* %77, %struct.viosrp_crq* %78)
  store i64 %79, i64* %5, align 8
  br label %121

80:                                               ; preds = %60
  %81 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %82 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @VALID_TRANS_EVENT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %88 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %89 = call i64 @ibmvscsis_trans_event(%struct.scsi_info* %87, %struct.viosrp_crq* %88)
  store i64 %89, i64* %5, align 8
  br label %120

90:                                               ; preds = %80
  %91 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %92 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @TRANS_EVENT, align 4
  %95 = sext i32 %94 to i64
  %96 = and i64 %93, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %90
  %99 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %100 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %106 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %118

110:                                              ; preds = %98
  %111 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %112 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %116 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  br label %118

118:                                              ; preds = %110, %104
  br label %139

119:                                              ; preds = %90
  br label %120

120:                                              ; preds = %119, %86
  br label %121

121:                                              ; preds = %120, %76
  %122 = load i64, i64* @INVALIDATE_CMD_RESP_EL, align 8
  %123 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %124 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %126 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load %struct.viosrp_crq*, %struct.viosrp_crq** %127, align 8
  %129 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %130 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %128, i64 %133
  store %struct.viosrp_crq* %134, %struct.viosrp_crq** %4, align 8
  %135 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %136 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  store volatile i64 %137, i64* %7, align 8
  %138 = call i32 (...) @dma_rmb()
  br label %56

139:                                              ; preds = %118, %56
  %140 = load i64, i64* %5, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %147 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @vio_enable_interrupts(i32 %148)
  store i32 0, i32* %6, align 4
  %150 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %151 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %150, i32 0, i32 4
  %152 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %151, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %153

153:                                              ; preds = %145, %142
  %154 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %155 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  store volatile i64 %156, i64* %7, align 8
  %157 = call i32 (...) @dma_rmb()
  %158 = load volatile i64, i64* %7, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %60

161:                                              ; preds = %153
  br label %176

162:                                              ; preds = %139
  %163 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %164 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %163, i32 0, i32 4
  %165 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %166 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %169 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %172 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %164, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %167, i32 %170, i32 %174)
  br label %176

176:                                              ; preds = %162, %161
  %177 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %178 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %177, i32 0, i32 4
  %179 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %180 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %179, i32 0, i32 3
  %181 = call i64 @list_empty(i32* %180)
  %182 = trunc i64 %181 to i32
  %183 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %184 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %187 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %178, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %182, i64 %185, i32 %188)
  %190 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %191 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %190, i32 0, i32 2
  %192 = call i32 @spin_unlock_bh(i32* %191)
  br label %193

193:                                              ; preds = %176, %19
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i64 @TARGET_STOP(%struct.scsi_info*) #1

declare dso_local i32 @vio_enable_interrupts(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @ibmvscsis_parse_command(%struct.scsi_info*, %struct.viosrp_crq*) #1

declare dso_local i64 @ibmvscsis_trans_event(%struct.scsi_info*, %struct.viosrp_crq*) #1

declare dso_local i64 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
