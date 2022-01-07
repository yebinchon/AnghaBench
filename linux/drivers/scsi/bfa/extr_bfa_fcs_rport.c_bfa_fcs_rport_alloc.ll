; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, i32*, i64, i32, %struct.bfad_rport_s*, %struct.bfa_fcs_s*, %struct.bfa_fcs_lport_s* }
%struct.bfad_rport_s = type { i32 }
%struct.bfa_fcs_s = type { i64, i32 }
%struct.bfa_fcs_lport_s = type { %struct.bfa_fcs_s* }

@bfa_fcs_rport_max_logins = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@bfa_fcs_rport_sm_uninit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfa_fcs_rport_s* (%struct.bfa_fcs_lport_s*, i32, i32)* @bfa_fcs_rport_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfa_fcs_rport_s* @bfa_fcs_rport_alloc(%struct.bfa_fcs_lport_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_fcs_rport_s*, align 8
  %5 = alloca %struct.bfa_fcs_lport_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfa_fcs_s*, align 8
  %9 = alloca %struct.bfa_fcs_rport_s*, align 8
  %10 = alloca %struct.bfad_rport_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %11, i32 0, i32 0
  %13 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %12, align 8
  store %struct.bfa_fcs_s* %13, %struct.bfa_fcs_s** %8, align 8
  %14 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %8, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @bfa_fcs_rport_max_logins, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @bfa_trc(%struct.bfa_fcs_s* %20, i32 %21)
  store %struct.bfa_fcs_rport_s* null, %struct.bfa_fcs_rport_s** %4, align 8
  br label %100

23:                                               ; preds = %3
  %24 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %8, align 8
  %25 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @bfa_fcb_rport_alloc(i32 %26, %struct.bfa_fcs_rport_s** %9, %struct.bfad_rport_s** %10)
  %28 = load i64, i64* @BFA_STATUS_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @bfa_trc(%struct.bfa_fcs_s* %31, i32 %32)
  store %struct.bfa_fcs_rport_s* null, %struct.bfa_fcs_rport_s** %4, align 8
  br label %100

34:                                               ; preds = %23
  %35 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %36 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %37 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %36, i32 0, i32 7
  store %struct.bfa_fcs_lport_s* %35, %struct.bfa_fcs_lport_s** %37, align 8
  %38 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %8, align 8
  %39 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %40 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %39, i32 0, i32 6
  store %struct.bfa_fcs_s* %38, %struct.bfa_fcs_s** %40, align 8
  %41 = load %struct.bfad_rport_s*, %struct.bfad_rport_s** %10, align 8
  %42 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %43 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %42, i32 0, i32 5
  store %struct.bfad_rport_s* %41, %struct.bfad_rport_s** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %49 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %51 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  %54 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %55 = call i64 @bfa_fcs_lport_is_initiator(%struct.bfa_fcs_lport_s* %54)
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ON(i32 %58)
  %60 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %61 = call i64 @bfa_fcs_lport_is_initiator(%struct.bfa_fcs_lport_s* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %34
  %64 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %65 = call i32 @bfa_fcs_itnim_create(%struct.bfa_fcs_rport_s* %64)
  %66 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %69 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %63
  %73 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %8, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @bfa_trc(%struct.bfa_fcs_s* %73, i32 %74)
  %76 = load %struct.bfad_rport_s*, %struct.bfad_rport_s** %10, align 8
  %77 = call i32 @kfree(%struct.bfad_rport_s* %76)
  store %struct.bfa_fcs_rport_s* null, %struct.bfa_fcs_rport_s** %4, align 8
  br label %100

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78, %34
  %80 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %81 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %82 = call i32 @bfa_fcs_lport_add_rport(%struct.bfa_fcs_lport_s* %80, %struct.bfa_fcs_rport_s* %81)
  %83 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %8, align 8
  %84 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %88 = load i32, i32* @bfa_fcs_rport_sm_uninit, align 4
  %89 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %87, i32 %88)
  %90 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %91 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @BFA_FCS_PID_IS_WKA(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %79
  %96 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %97 = call i32 @bfa_fcs_rpf_init(%struct.bfa_fcs_rport_s* %96)
  br label %98

98:                                               ; preds = %95, %79
  %99 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  store %struct.bfa_fcs_rport_s* %99, %struct.bfa_fcs_rport_s** %4, align 8
  br label %100

100:                                              ; preds = %98, %72, %30, %19
  %101 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  ret %struct.bfa_fcs_rport_s* %101
}

declare dso_local i32 @bfa_trc(%struct.bfa_fcs_s*, i32) #1

declare dso_local i64 @bfa_fcb_rport_alloc(i32, %struct.bfa_fcs_rport_s**, %struct.bfad_rport_s**) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @bfa_fcs_lport_is_initiator(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_itnim_create(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @kfree(%struct.bfad_rport_s*) #1

declare dso_local i32 @bfa_fcs_lport_add_rport(%struct.bfa_fcs_lport_s*, %struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @BFA_FCS_PID_IS_WKA(i32) #1

declare dso_local i32 @bfa_fcs_rpf_init(%struct.bfa_fcs_rport_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
