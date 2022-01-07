; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_start_submod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_start_submod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@BFA_TRUE = common dso_local global i8* null, align 8
@BFI_IOC_MAX_CQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*)* @bfa_iocfc_start_submod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocfc_start_submod(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  %3 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %4 = load i8*, i8** @BFA_TRUE, align 8
  %5 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %5, i32 0, i32 1
  store i8* %4, i8** %6, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BFI_IOC_MAX_CQS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @bfa_rspq_ci(%struct.bfa_s* %14, i32 %15)
  %17 = call i32 @bfa_isr_rspq_ack(%struct.bfa_s* %12, i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %23 = call i32 @bfa_fcport_start(%struct.bfa_s* %22)
  %24 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %25 = call i32 @bfa_uf_start(%struct.bfa_s* %24)
  %26 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %27 = call %struct.TYPE_4__* @BFA_FCP_MOD(%struct.bfa_s* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bfa_ioim_lm_init(i32 %29)
  %31 = load i8*, i8** @BFA_TRUE, align 8
  %32 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %33 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  ret void
}

declare dso_local i32 @bfa_isr_rspq_ack(%struct.bfa_s*, i32, i32) #1

declare dso_local i32 @bfa_rspq_ci(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_fcport_start(%struct.bfa_s*) #1

declare dso_local i32 @bfa_uf_start(%struct.bfa_s*) #1

declare dso_local i32 @bfa_ioim_lm_init(i32) #1

declare dso_local %struct.TYPE_4__* @BFA_FCP_MOD(%struct.bfa_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
