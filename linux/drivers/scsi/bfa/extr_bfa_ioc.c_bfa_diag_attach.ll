; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_diag_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_diag_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_diag_s = type { %struct.bfa_ioc_s*, %struct.TYPE_3__, i32, i32*, i32*, i32*, i64, %struct.bfa_trc_mod_s*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_ioc_s = type { i32 }
%struct.bfa_trc_mod_s = type { i32 }

@BFI_MC_DIAG = common dso_local global i32 0, align 4
@bfa_diag_intr = common dso_local global i32 0, align 4
@bfa_diag_notify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_diag_attach(%struct.bfa_diag_s* %0, %struct.bfa_ioc_s* %1, i8* %2, i32 %3, %struct.bfa_trc_mod_s* %4) #0 {
  %6 = alloca %struct.bfa_diag_s*, align 8
  %7 = alloca %struct.bfa_ioc_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bfa_trc_mod_s*, align 8
  store %struct.bfa_diag_s* %0, %struct.bfa_diag_s** %6, align 8
  store %struct.bfa_ioc_s* %1, %struct.bfa_ioc_s** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.bfa_trc_mod_s* %4, %struct.bfa_trc_mod_s** %10, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %13 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %12, i32 0, i32 8
  store i8* %11, i8** %13, align 8
  %14 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %7, align 8
  %15 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %16 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %15, i32 0, i32 0
  store %struct.bfa_ioc_s* %14, %struct.bfa_ioc_s** %16, align 8
  %17 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %10, align 8
  %18 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %19 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %18, i32 0, i32 7
  store %struct.bfa_trc_mod_s* %17, %struct.bfa_trc_mod_s** %19, align 8
  %20 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %21 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %23 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %22, i32 0, i32 5
  store i32* null, i32** %23, align 8
  %24 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %25 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %24, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %27 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %30 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %32 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %31, i32 0, i32 0
  %33 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %32, align 8
  %34 = load i32, i32* @BFI_MC_DIAG, align 4
  %35 = load i32, i32* @bfa_diag_intr, align 4
  %36 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %37 = call i32 @bfa_ioc_mbox_regisr(%struct.bfa_ioc_s* %33, i32 %34, i32 %35, %struct.bfa_diag_s* %36)
  %38 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %39 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %38, i32 0, i32 1
  %40 = call i32 @bfa_q_qe_init(%struct.TYPE_3__* %39)
  %41 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %42 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %41, i32 0, i32 1
  %43 = load i32, i32* @bfa_diag_notify, align 4
  %44 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %45 = call i32 @bfa_ioc_notify_init(%struct.TYPE_3__* %42, i32 %43, %struct.bfa_diag_s* %44)
  %46 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %47 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %6, align 8
  %50 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %49, i32 0, i32 0
  %51 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %50, align 8
  %52 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %51, i32 0, i32 0
  %53 = call i32 @list_add_tail(i32* %48, i32* %52)
  ret void
}

declare dso_local i32 @bfa_ioc_mbox_regisr(%struct.bfa_ioc_s*, i32, i32, %struct.bfa_diag_s*) #1

declare dso_local i32 @bfa_q_qe_init(%struct.TYPE_3__*) #1

declare dso_local i32 @bfa_ioc_notify_init(%struct.TYPE_3__*, i32, %struct.bfa_diag_s*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
