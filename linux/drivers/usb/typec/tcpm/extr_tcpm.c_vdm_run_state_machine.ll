; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_vdm_run_state_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_vdm_run_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pd_message = type { i32*, i32 }

@VDM_STATE_ERR_BUSY = common dso_local global i32 0, align 4
@SRC_READY = common dso_local global i32 0, align 4
@SNK_READY = common dso_local global i32 0, align 4
@PD_DATA_VENDOR_DEF = common dso_local global i32 0, align 4
@TCPC_TX_SOP = common dso_local global i32 0, align 4
@VDM_STATE_ERR_TMOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"VDM Tx error, retry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*)* @vdm_run_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdm_run_state_machine(%struct.tcpm_port* %0) #0 {
  %2 = alloca %struct.tcpm_port*, align 8
  %3 = alloca %struct.pd_message, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %2, align 8
  %7 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %8 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %134 [
    i32 129, label %10
    i32 128, label %103
    i32 131, label %115
    i32 130, label %119
  ]

10:                                               ; preds = %1
  %11 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %12 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @VDM_STATE_ERR_BUSY, align 4
  %17 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %18 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %135

19:                                               ; preds = %10
  %20 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %21 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SRC_READY, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %27 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SNK_READY, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %135

32:                                               ; preds = %25, %19
  %33 = call i32 @memset(%struct.pd_message* %3, i32 0, i32 16)
  %34 = load i32, i32* @PD_DATA_VENDOR_DEF, align 4
  %35 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %36 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %39 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %42 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %45 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %48 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PD_HEADER_LE(i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49)
  %51 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %3, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %72, %32
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %55 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %60 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cpu_to_le32(i32 %65)
  %67 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %3, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %66, i32* %71, align 4
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %52

75:                                               ; preds = %52
  %76 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %77 = load i32, i32* @TCPC_TX_SOP, align 4
  %78 = call i32 @tcpm_pd_transmit(%struct.tcpm_port* %76, i32 %77, %struct.pd_message* %3)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %83 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %82, i32 0, i32 0
  store i32 130, i32* %83, align 8
  br label %102

84:                                               ; preds = %75
  %85 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %86 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %85, i32 0, i32 2
  store i32 0, i32* %86, align 8
  %87 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %88 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %87, i32 0, i32 0
  store i32 131, i32* %88, align 8
  %89 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %90 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @vdm_ready_timeout(i32 %93)
  store i64 %94, i64* %6, align 8
  %95 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %96 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %99 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %98, i32 0, i32 5
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @mod_delayed_work(i32 %97, i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %84, %81
  br label %135

103:                                              ; preds = %1
  %104 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %105 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %108 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %106, i32* %110, align 4
  %111 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %112 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %114 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %113, i32 0, i32 0
  store i32 129, i32* %114, align 8
  br label %135

115:                                              ; preds = %1
  %116 = load i32, i32* @VDM_STATE_ERR_TMOUT, align 4
  %117 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %118 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %135

119:                                              ; preds = %1
  %120 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %121 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %122, 3
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %126 = call i32 @tcpm_log(%struct.tcpm_port* %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %127 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %128 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %132 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %131, i32 0, i32 0
  store i32 129, i32* %132, align 8
  br label %133

133:                                              ; preds = %124, %119
  br label %135

134:                                              ; preds = %1
  br label %135

135:                                              ; preds = %134, %133, %115, %103, %102, %31, %15
  ret void
}

declare dso_local i32 @memset(%struct.pd_message*, i32, i32) #1

declare dso_local i32 @PD_HEADER_LE(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @tcpm_pd_transmit(%struct.tcpm_port*, i32, %struct.pd_message*) #1

declare dso_local i64 @vdm_ready_timeout(i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
