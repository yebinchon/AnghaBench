; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i64, i32, %struct.TYPE_6__*, i32, %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_s* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_fcs_s = type { i32 }
%struct.bfa_fcs_vport_s = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_lport_attach(%struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_s* %1, i32 %2, %struct.bfa_fcs_vport_s* %3) #0 {
  %5 = alloca %struct.bfa_fcs_lport_s*, align 8
  %6 = alloca %struct.bfa_fcs_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfa_fcs_vport_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %5, align 8
  store %struct.bfa_fcs_s* %1, %struct.bfa_fcs_s** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.bfa_fcs_vport_s* %3, %struct.bfa_fcs_vport_s** %8, align 8
  %9 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %6, align 8
  %10 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %10, i32 0, i32 5
  store %struct.bfa_fcs_s* %9, %struct.bfa_fcs_s** %11, align 8
  %12 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.TYPE_6__* @bfa_fcs_vf_lookup(%struct.bfa_fcs_s* %12, i32 %13)
  %15 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %15, i32 0, i32 2
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %16, align 8
  %17 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %8, align 8
  %18 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %18, i32 0, i32 4
  store %struct.bfa_fcs_vport_s* %17, %struct.bfa_fcs_vport_s** %19, align 8
  %20 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %8, align 8
  %21 = icmp ne %struct.bfa_fcs_vport_s* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %8, align 8
  %24 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %36

28:                                               ; preds = %4
  %29 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %28, %22
  %37 = phi i32 [ %27, %22 ], [ %35, %28 ]
  %38 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %40, i32 0, i32 1
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  ret void
}

declare dso_local %struct.TYPE_6__* @bfa_fcs_vf_lookup(%struct.bfa_fcs_s*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
