; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_process_sei_ap_cfg_chg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_process_sei_ap_cfg_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_sei_nt0_area = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"chsc: ap config changed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chsc_sei_nt0_area*)* @chsc_process_sei_ap_cfg_chg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_process_sei_ap_cfg_chg(%struct.chsc_sei_nt0_area* %0) #0 {
  %2 = alloca %struct.chsc_sei_nt0_area*, align 8
  store %struct.chsc_sei_nt0_area* %0, %struct.chsc_sei_nt0_area** %2, align 8
  %3 = call i32 @CIO_CRW_EVENT(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %5 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 5
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @ap_bus_cfg_chg()
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*) #1

declare dso_local i32 @ap_bus_cfg_chg(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
