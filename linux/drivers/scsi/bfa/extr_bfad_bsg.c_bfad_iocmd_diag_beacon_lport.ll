; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_diag_beacon_lport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_diag_beacon_lport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_diag_beacon_s = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_diag_beacon_lport(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_diag_beacon_s*, align 8
  %6 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.bfa_bsg_diag_beacon_s*
  store %struct.bfa_bsg_diag_beacon_s* %8, %struct.bfa_bsg_diag_beacon_s** %5, align 8
  %9 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %13, i32 0, i32 1
  %15 = call i32 @BFA_DIAG_MOD(i32* %14)
  %16 = load %struct.bfa_bsg_diag_beacon_s*, %struct.bfa_bsg_diag_beacon_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_bsg_diag_beacon_s, %struct.bfa_bsg_diag_beacon_s* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bfa_bsg_diag_beacon_s*, %struct.bfa_bsg_diag_beacon_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_bsg_diag_beacon_s, %struct.bfa_bsg_diag_beacon_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfa_bsg_diag_beacon_s*, %struct.bfa_bsg_diag_beacon_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfa_bsg_diag_beacon_s, %struct.bfa_bsg_diag_beacon_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bfa_diag_beacon_port(i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.bfa_bsg_diag_beacon_s*, %struct.bfa_bsg_diag_beacon_s** %5, align 8
  %27 = getelementptr inbounds %struct.bfa_bsg_diag_beacon_s, %struct.bfa_bsg_diag_beacon_s* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_diag_beacon_port(i32, i32, i32, i32) #1

declare dso_local i32 @BFA_DIAG_MOD(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
