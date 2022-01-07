; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_fru_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_fru_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fru_s = type { i64, i32*, %struct.bfa_ioc_s*, %struct.TYPE_3__, i64, i32*, i32*, %struct.bfa_trc_mod_s* }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_ioc_s = type { i32 }
%struct.bfa_trc_mod_s = type { i32 }

@BFI_MC_FRU = common dso_local global i32 0, align 4
@bfa_fru_intr = common dso_local global i32 0, align 4
@bfa_fru_notify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fru_attach(%struct.bfa_fru_s* %0, %struct.bfa_ioc_s* %1, i8* %2, %struct.bfa_trc_mod_s* %3, i64 %4) #0 {
  %6 = alloca %struct.bfa_fru_s*, align 8
  %7 = alloca %struct.bfa_ioc_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfa_trc_mod_s*, align 8
  %10 = alloca i64, align 8
  store %struct.bfa_fru_s* %0, %struct.bfa_fru_s** %6, align 8
  store %struct.bfa_ioc_s* %1, %struct.bfa_ioc_s** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.bfa_trc_mod_s* %3, %struct.bfa_trc_mod_s** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %7, align 8
  %12 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %13 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %12, i32 0, i32 2
  store %struct.bfa_ioc_s* %11, %struct.bfa_ioc_s** %13, align 8
  %14 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %9, align 8
  %15 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %16 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %15, i32 0, i32 7
  store %struct.bfa_trc_mod_s* %14, %struct.bfa_trc_mod_s** %16, align 8
  %17 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %18 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %17, i32 0, i32 6
  store i32* null, i32** %18, align 8
  %19 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %20 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %22 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %24 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %23, i32 0, i32 2
  %25 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %24, align 8
  %26 = load i32, i32* @BFI_MC_FRU, align 4
  %27 = load i32, i32* @bfa_fru_intr, align 4
  %28 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %29 = call i32 @bfa_ioc_mbox_regisr(%struct.bfa_ioc_s* %25, i32 %26, i32 %27, %struct.bfa_fru_s* %28)
  %30 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %31 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %30, i32 0, i32 3
  %32 = call i32 @bfa_q_qe_init(%struct.TYPE_3__* %31)
  %33 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %34 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %33, i32 0, i32 3
  %35 = load i32, i32* @bfa_fru_notify, align 4
  %36 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %37 = call i32 @bfa_ioc_notify_init(%struct.TYPE_3__* %34, i32 %35, %struct.bfa_fru_s* %36)
  %38 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %39 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %42 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %41, i32 0, i32 2
  %43 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %42, align 8
  %44 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %43, i32 0, i32 0
  %45 = call i32 @list_add_tail(i32* %40, i32* %44)
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %5
  %49 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %50 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load %struct.bfa_fru_s*, %struct.bfa_fru_s** %6, align 8
  %52 = getelementptr inbounds %struct.bfa_fru_s, %struct.bfa_fru_s* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %5
  ret void
}

declare dso_local i32 @bfa_ioc_mbox_regisr(%struct.bfa_ioc_s*, i32, i32, %struct.bfa_fru_s*) #1

declare dso_local i32 @bfa_q_qe_init(%struct.TYPE_3__*) #1

declare dso_local i32 @bfa_ioc_notify_init(%struct.TYPE_3__*, i32, %struct.bfa_fru_s*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
