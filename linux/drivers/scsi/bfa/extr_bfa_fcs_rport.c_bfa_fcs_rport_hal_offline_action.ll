; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_hal_offline_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_hal_offline_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, %struct.bfa_fcs_lport_s*, i32, %struct.TYPE_4__, i32 }
%struct.bfa_fcs_lport_s = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.bfad_s = type { i32 }

@BFA_STRING_32 = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Remote port (WWN = %s) connectivity lost for logical port (WWN = %s)\0A\00", align 1
@BFA_RPORT_AEN_DISCONNECT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Remote port (WWN = %s) offlined by logical port (WWN = %s)\0A\00", align 1
@BFA_RPORT_AEN_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*)* @bfa_fcs_rport_hal_offline_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_rport_s*, align 8
  %3 = alloca %struct.bfa_fcs_lport_s*, align 8
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %2, align 8
  %9 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %9, i32 0, i32 2
  %11 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %10, align 8
  store %struct.bfa_fcs_lport_s* %11, %struct.bfa_fcs_lport_s** %3, align 8
  %12 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.bfad_s*
  store %struct.bfad_s* %17, %struct.bfad_s** %4, align 8
  %18 = load i32, i32* @BFA_STRING_32, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = load i32, i32* @BFA_STRING_32, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %25 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %26 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %31 = call i32 @bfa_fcs_rport_fcs_offline_action(%struct.bfa_fcs_rport_s* %30)
  store i32 1, i32* %8, align 4
  br label %93

32:                                               ; preds = %1
  %33 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %34 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %39 = call i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s* %38)
  %40 = call i32 @wwn2str(i8* %21, i32 %39)
  %41 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @wwn2str(i8* %24, i32 %43)
  %45 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @BFA_FCS_PID_IS_WKA(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %32
  %51 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %52 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %51, i32 0, i32 2
  %53 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %52, align 8
  %54 = call i64 @bfa_fcs_lport_is_online(%struct.bfa_fcs_lport_s* %53)
  %55 = load i64, i64* @BFA_TRUE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* @KERN_ERR, align 4
  %59 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %60 = load i32, i32* @bfa_log_level, align 4
  %61 = call i32 @BFA_LOG(i32 %58, %struct.bfad_s* %59, i32 %60, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %21)
  %62 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %63 = load i32, i32* @BFA_RPORT_AEN_DISCONNECT, align 4
  %64 = call i32 @bfa_fcs_rport_aen_post(%struct.bfa_fcs_rport_s* %62, i32 %63, i32* null)
  br label %73

65:                                               ; preds = %50
  %66 = load i32, i32* @KERN_INFO, align 4
  %67 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %68 = load i32, i32* @bfa_log_level, align 4
  %69 = call i32 @BFA_LOG(i32 %66, %struct.bfad_s* %67, i32 %68, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %21)
  %70 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %71 = load i32, i32* @BFA_RPORT_AEN_OFFLINE, align 4
  %72 = call i32 @bfa_fcs_rport_aen_post(%struct.bfa_fcs_rport_s* %70, i32 %71, i32* null)
  br label %73

73:                                               ; preds = %65, %57
  br label %74

74:                                               ; preds = %73, %32
  %75 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %76 = call i64 @bfa_fcs_lport_is_initiator(%struct.bfa_fcs_lport_s* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %80 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bfa_fcs_itnim_rport_offline(i32 %81)
  %83 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %84 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @BFA_FCS_PID_IS_WKA(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %78
  %89 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %90 = call i32 @bfa_fcs_rpf_rport_offline(%struct.bfa_fcs_rport_s* %89)
  br label %91

91:                                               ; preds = %88, %78
  br label %92

92:                                               ; preds = %91, %74
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %29
  %94 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %8, align 4
  switch i32 %95, label %97 [
    i32 0, label %96
    i32 1, label %96
  ]

96:                                               ; preds = %93, %93
  ret void

97:                                               ; preds = %93
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bfa_fcs_rport_fcs_offline_action(%struct.bfa_fcs_rport_s*) #2

declare dso_local i32 @wwn2str(i8*, i32) #2

declare dso_local i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s*) #2

declare dso_local i32 @BFA_FCS_PID_IS_WKA(i32) #2

declare dso_local i64 @bfa_fcs_lport_is_online(%struct.bfa_fcs_lport_s*) #2

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @bfa_fcs_rport_aen_post(%struct.bfa_fcs_rport_s*, i32, i32*) #2

declare dso_local i64 @bfa_fcs_lport_is_initiator(%struct.bfa_fcs_lport_s*) #2

declare dso_local i32 @bfa_fcs_itnim_rport_offline(i32) #2

declare dso_local i32 @bfa_fcs_rpf_rport_offline(%struct.bfa_fcs_rport_s*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
