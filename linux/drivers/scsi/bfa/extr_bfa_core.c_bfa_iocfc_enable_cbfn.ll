; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_enable_cbfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_enable_cbfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@IOCFC_E_IOC_ENABLED = common dso_local global i32 0, align 4
@IOCFC_E_IOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bfa_iocfc_enable_cbfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocfc_enable_cbfn(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_s*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bfa_s*
  store %struct.bfa_s* %7, %struct.bfa_s** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @BFA_STATUS_OK, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %12, i32 0, i32 0
  %14 = load i32, i32* @IOCFC_E_IOC_ENABLED, align 4
  %15 = call i32 @bfa_fsm_send_event(i32* %13, i32 %14)
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %17, i32 0, i32 0
  %19 = load i32, i32* @IOCFC_E_IOC_FAILED, align 4
  %20 = call i32 @bfa_fsm_send_event(i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
