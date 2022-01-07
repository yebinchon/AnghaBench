; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_itnim_s = type { i8*, i8*, i8*, i8*, i32*, %struct.bfad_itnim_s*, i32, %struct.bfa_fcs_rport_s* }
%struct.bfad_itnim_s = type { i32 }
%struct.bfa_fcs_rport_s = type { i32, i32, %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BFA_FALSE = common dso_local global i8* null, align 8
@bfa_fcs_itnim_sm_offline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfa_fcs_itnim_s* @bfa_fcs_itnim_create(%struct.bfa_fcs_rport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %3 = alloca %struct.bfa_fcs_rport_s*, align 8
  %4 = alloca %struct.bfa_fcs_lport_s*, align 8
  %5 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %6 = alloca %struct.bfad_itnim_s*, align 8
  %7 = alloca i32, align 4
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %3, align 8
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %8, i32 0, i32 2
  %10 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  store %struct.bfa_fcs_lport_s* %10, %struct.bfa_fcs_lport_s** %4, align 8
  %11 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bfa_fcb_itnim_alloc(i32 %15, %struct.bfa_fcs_itnim_s** %5, %struct.bfad_itnim_s** %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %21 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %24 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bfa_trc(%struct.TYPE_2__* %22, i32 %25)
  store %struct.bfa_fcs_itnim_s* null, %struct.bfa_fcs_itnim_s** %2, align 8
  br label %57

27:                                               ; preds = %1
  %28 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %29 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %29, i32 0, i32 7
  store %struct.bfa_fcs_rport_s* %28, %struct.bfa_fcs_rport_s** %30, align 8
  %31 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %35 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %6, align 8
  %37 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %38 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %37, i32 0, i32 5
  store %struct.bfad_itnim_s* %36, %struct.bfad_itnim_s** %38, align 8
  %39 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %40 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %39, i32 0, i32 4
  store i32* null, i32** %40, align 8
  %41 = load i8*, i8** @BFA_FALSE, align 8
  %42 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %43 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @BFA_FALSE, align 8
  %45 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @BFA_FALSE, align 8
  %48 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @BFA_FALSE, align 8
  %51 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %52 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %54 = load i32, i32* @bfa_fcs_itnim_sm_offline, align 4
  %55 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %53, i32 %54)
  %56 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  store %struct.bfa_fcs_itnim_s* %56, %struct.bfa_fcs_itnim_s** %2, align 8
  br label %57

57:                                               ; preds = %27, %19
  %58 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %2, align 8
  ret %struct.bfa_fcs_itnim_s* %58
}

declare dso_local i32 @bfa_fcb_itnim_alloc(i32, %struct.bfa_fcs_itnim_s**, %struct.bfad_itnim_s**) #1

declare dso_local i32 @bfa_trc(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
