; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym2_set_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym2_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sym_hcb = type { i32, %struct.sym_tcb* }
%struct.sym_tcb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*, i32)* @sym2_set_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym2_set_period(%struct.scsi_target* %0, i32 %1) #0 {
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
  %16 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %15, i32 0, i32 1
  %17 = load %struct.sym_tcb*, %struct.sym_tcb** %16, align 8
  %18 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %17, i64 %20
  store %struct.sym_tcb* %21, %struct.sym_tcb** %7, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.sym_hcb*, %struct.sym_hcb** %6, align 8
  %24 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %29 = call i64 @spi_width(%struct.scsi_target* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %33 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %27, %2
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %38 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %41 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32 1, i32* %42, align 4
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sym_hcb* @sym_get_hcb(%struct.Scsi_Host*) #1

declare dso_local i64 @spi_width(%struct.scsi_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
