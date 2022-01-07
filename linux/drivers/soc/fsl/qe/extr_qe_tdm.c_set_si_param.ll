; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe_tdm.c_set_si_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe_tdm.c_set_si_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_tdm = type { i64 }
%struct.ucc_tdm_info = type { %struct.si_mode_info }
%struct.si_mode_info = type { i32, i64 }

@TDM_INTERNAL_LOOPBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucc_tdm*, %struct.ucc_tdm_info*)* @set_si_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_si_param(%struct.ucc_tdm* %0, %struct.ucc_tdm_info* %1) #0 {
  %3 = alloca %struct.ucc_tdm*, align 8
  %4 = alloca %struct.ucc_tdm_info*, align 8
  %5 = alloca %struct.si_mode_info*, align 8
  store %struct.ucc_tdm* %0, %struct.ucc_tdm** %3, align 8
  store %struct.ucc_tdm_info* %1, %struct.ucc_tdm_info** %4, align 8
  %6 = load %struct.ucc_tdm_info*, %struct.ucc_tdm_info** %4, align 8
  %7 = getelementptr inbounds %struct.ucc_tdm_info, %struct.ucc_tdm_info* %6, i32 0, i32 0
  store %struct.si_mode_info* %7, %struct.si_mode_info** %5, align 8
  %8 = load %struct.ucc_tdm*, %struct.ucc_tdm** %3, align 8
  %9 = getelementptr inbounds %struct.ucc_tdm, %struct.ucc_tdm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TDM_INTERNAL_LOOPBACK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.si_mode_info*, %struct.si_mode_info** %5, align 8
  %15 = getelementptr inbounds %struct.si_mode_info, %struct.si_mode_info* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.si_mode_info*, %struct.si_mode_info** %5, align 8
  %17 = getelementptr inbounds %struct.si_mode_info, %struct.si_mode_info* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %13, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
