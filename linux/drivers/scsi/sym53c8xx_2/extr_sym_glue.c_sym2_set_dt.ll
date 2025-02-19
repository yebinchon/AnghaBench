; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym2_set_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym2_set_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sym_hcb = type { %struct.sym_tcb* }
%struct.sym_tcb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*, i32)* @sym2_set_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym2_set_dt(%struct.scsi_target* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.sym_hcb*, align 8
  %7 = alloca %struct.sym_tcb*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.Scsi_Host* @dev_to_shost(i32 %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %5, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %14 = call %struct.sym_hcb* @sym_get_hcb(%struct.Scsi_Host* %13)
  store %struct.sym_hcb* %14, %struct.sym_hcb** %6, align 8
  %15 = load %struct.sym_hcb*, %struct.sym_hcb** %6, align 8
  %16 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %15, i32 0, i32 0
  %17 = load %struct.sym_tcb*, %struct.sym_tcb** %16, align 8
  %18 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %17, i64 %20
  store %struct.sym_tcb* %21, %struct.sym_tcb** %7, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %26 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %30 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %33 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %36 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %28, %24
  %39 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %40 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i32 1, i32* %41, align 4
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sym_hcb* @sym_get_hcb(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
