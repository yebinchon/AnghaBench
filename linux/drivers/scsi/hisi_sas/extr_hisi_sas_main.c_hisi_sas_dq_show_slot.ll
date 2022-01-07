; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dq_show_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dq_show_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hisi_sas_dq = type { i64, %struct.hisi_hba* }
%struct.hisi_hba = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i8*)* @hisi_sas_dq_show_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_dq_show_slot(%struct.seq_file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hisi_sas_dq*, align 8
  %8 = alloca %struct.hisi_hba*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.hisi_sas_dq*
  store %struct.hisi_sas_dq* %12, %struct.hisi_sas_dq** %7, align 8
  %13 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %7, align 8
  %14 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %13, i32 0, i32 1
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %14, align 8
  store %struct.hisi_hba* %15, %struct.hisi_hba** %8, align 8
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %17 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %7, align 8
  %20 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8*, i8** %18, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = getelementptr i8, i8* %24, i64 %27
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %10, align 8
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @hisi_sas_show_row_32(%struct.seq_file* %30, i32 %31, i32 4, i32* %32)
  ret void
}

declare dso_local i32 @hisi_sas_show_row_32(%struct.seq_file*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
