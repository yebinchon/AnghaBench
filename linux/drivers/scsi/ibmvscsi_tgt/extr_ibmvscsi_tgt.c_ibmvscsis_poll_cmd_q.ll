; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_poll_cmd_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_poll_cmd_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.viosrp_crq* }
%struct.viosrp_crq = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"poll_cmd_q: flags 0x%x, state 0x%hx, q index %ud\0A\00", align 1
@SCHEDULE_DISCONNECT = common dso_local global i64 0, align 8
@VALID_TRANS_EVENT = common dso_local global i64 0, align 8
@TRANS_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"poll_cmd_q, ignoring\0A\00", align 1
@INVALIDATE_CMD_RESP_EL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"poll_cmd_q, reenabling interrupts\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Leaving poll_cmd_q: rc %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_info*)* @ibmvscsis_poll_cmd_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsis_poll_cmd_q(%struct.scsi_info* %0) #0 {
  %2 = alloca %struct.scsi_info*, align 8
  %3 = alloca %struct.viosrp_crq*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %2, align 8
  store i32 1, i32* %5, align 4
  %7 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %7, i32 0, i32 1
  %9 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %8, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %14, i32 %18)
  %20 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SCHEDULE_DISCONNECT, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %4, align 8
  %25 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load %struct.viosrp_crq*, %struct.viosrp_crq** %27, align 8
  %29 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %30 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %28, i64 %33
  store %struct.viosrp_crq* %34, %struct.viosrp_crq** %3, align 8
  %35 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %36 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store volatile i64 %37, i64* %6, align 8
  %38 = call i32 (...) @dma_rmb()
  br label %39

39:                                               ; preds = %107, %1
  %40 = load volatile i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %125

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %146, %42
  %44 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %45 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  %49 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %50 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %48, %52
  %54 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %55 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load i64, i64* %4, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %43
  %60 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %61 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %62 = call i64 @ibmvscsis_parse_command(%struct.scsi_info* %60, %struct.viosrp_crq* %61)
  store i64 %62, i64* %4, align 8
  br label %107

63:                                               ; preds = %43
  %64 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %65 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VALID_TRANS_EVENT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %71 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %72 = call i64 @ibmvscsis_trans_event(%struct.scsi_info* %70, %struct.viosrp_crq* %71)
  store i64 %72, i64* %4, align 8
  br label %106

73:                                               ; preds = %63
  %74 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %75 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @TRANS_EVENT, align 4
  %78 = sext i32 %77 to i64
  %79 = and i64 %76, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %73
  %82 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %83 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %82, i32 0, i32 1
  %84 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %86 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %92 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %104

96:                                               ; preds = %81
  %97 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %98 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %102 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  br label %104

104:                                              ; preds = %96, %90
  br label %125

105:                                              ; preds = %73
  br label %106

106:                                              ; preds = %105, %69
  br label %107

107:                                              ; preds = %106, %59
  %108 = load i64, i64* @INVALIDATE_CMD_RESP_EL, align 8
  %109 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %110 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %112 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load %struct.viosrp_crq*, %struct.viosrp_crq** %113, align 8
  %115 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %116 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %114, i64 %119
  store %struct.viosrp_crq* %120, %struct.viosrp_crq** %3, align 8
  %121 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %122 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store volatile i64 %123, i64* %6, align 8
  %124 = call i32 (...) @dma_rmb()
  br label %39

125:                                              ; preds = %104, %39
  %126 = load i64, i64* %4, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %148, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %133 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @vio_enable_interrupts(i32 %134)
  store i32 0, i32* %5, align 4
  %136 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %137 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %136, i32 0, i32 1
  %138 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %139

139:                                              ; preds = %131, %128
  %140 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %141 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  store volatile i64 %142, i64* %6, align 8
  %143 = call i32 (...) @dma_rmb()
  %144 = load volatile i64, i64* %6, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %43

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %125
  %149 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %150 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %149, i32 0, i32 1
  %151 = load i64, i64* %4, align 8
  %152 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %151)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @ibmvscsis_parse_command(%struct.scsi_info*, %struct.viosrp_crq*) #1

declare dso_local i64 @ibmvscsis_trans_event(%struct.scsi_info*, %struct.viosrp_crq*) #1

declare dso_local i32 @vio_enable_interrupts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
