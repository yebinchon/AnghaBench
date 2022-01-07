; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i64, i32, i32*, i32, i32, %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { %struct.bfa_fcs_s* }
%struct.bfa_fcs_s = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_RPORT_SM_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*)* @bfa_fcs_rport_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_free(%struct.bfa_fcs_rport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_rport_s*, align 8
  %3 = alloca %struct.bfa_fcs_lport_s*, align 8
  %4 = alloca %struct.bfa_fcs_s*, align 8
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %2, align 8
  %5 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %5, i32 0, i32 5
  %7 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  store %struct.bfa_fcs_lport_s* %7, %struct.bfa_fcs_lport_s** %3, align 8
  %8 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %8, i32 0, i32 0
  %10 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %9, align 8
  store %struct.bfa_fcs_s* %10, %struct.bfa_fcs_s** %4, align 8
  %11 = load i32, i32* @BFA_FALSE, align 4
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %15 = call i64 @bfa_fcs_lport_is_initiator(%struct.bfa_fcs_lport_s* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %19 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @bfa_fcs_itnim_delete(i32 %20)
  %22 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %28 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @BFA_FCS_PID_IS_WKA(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %34 = call i32 @bfa_fcs_rpf_rport_offline(%struct.bfa_fcs_rport_s* %33)
  br label %35

35:                                               ; preds = %32, %26, %17
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %38 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %43 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @BFA_RPORT_SM_DELETE, align 4
  %46 = call i32 @bfa_sm_send_event(i32* %44, i32 %45)
  %47 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %48 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %51 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %52 = call i32 @bfa_fcs_lport_del_rport(%struct.bfa_fcs_lport_s* %50, %struct.bfa_fcs_rport_s* %51)
  %53 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %4, align 8
  %54 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %58 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @kfree(i32 %59)
  ret void
}

declare dso_local i64 @bfa_fcs_lport_is_initiator(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_itnim_delete(i32) #1

declare dso_local i32 @BFA_FCS_PID_IS_WKA(i64) #1

declare dso_local i32 @bfa_fcs_rpf_rport_offline(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_sm_send_event(i32*, i32) #1

declare dso_local i32 @bfa_fcs_lport_del_rport(%struct.bfa_fcs_lport_s*, %struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
