; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_sm_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_sm_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_itnim_s = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bfad_s = type { i32 }

@BFA_STRING_32 = common dso_local global i32 0, align 4
@bfa_fcs_itnim_sm_hcb_offline = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Target (WWN = %s) connectivity lost for initiator (WWN = %s)\0A\00", align 1
@BFA_ITNIM_AEN_DISCONNECT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Target (WWN = %s) offlined by initiator (WWN = %s)\0A\00", align 1
@BFA_ITNIM_AEN_OFFLINE = common dso_local global i32 0, align 4
@bfa_fcs_itnim_sm_offline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_itnim_s*, i32)* @bfa_fcs_itnim_sm_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_itnim_sm_online(%struct.bfa_fcs_itnim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bfa_fcs_itnim_s* %0, %struct.bfa_fcs_itnim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.bfad_s*
  store %struct.bfad_s* %14, %struct.bfad_s** %5, align 8
  %15 = load i32, i32* @BFA_STRING_32, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @BFA_STRING_32, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bfa_trc(%struct.TYPE_5__* %24, i32 %29)
  %31 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @bfa_trc(%struct.TYPE_5__* %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %93 [
    i32 128, label %37
    i32 129, label %87
  ]

37:                                               ; preds = %2
  %38 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %39 = load i32, i32* @bfa_fcs_itnim_sm_hcb_offline, align 4
  %40 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %38, i32 %39)
  %41 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bfa_fcb_itnim_offline(i32 %43)
  %45 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bfa_itnim_offline(i32 %47)
  %49 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %50 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bfa_fcs_lport_get_pwwn(i32 %53)
  %55 = call i32 @wwn2str(i8* %18, i32 %54)
  %56 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %57 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wwn2str(i8* %21, i32 %60)
  %62 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %63 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bfa_fcs_lport_is_online(i32 %66)
  %68 = load i32, i32* @BFA_TRUE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %37
  %71 = load i32, i32* @KERN_ERR, align 4
  %72 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %73 = load i32, i32* @bfa_log_level, align 4
  %74 = call i32 @BFA_LOG(i32 %71, %struct.bfad_s* %72, i32 %73, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %18)
  %75 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %76 = load i32, i32* @BFA_ITNIM_AEN_DISCONNECT, align 4
  %77 = call i32 @bfa_fcs_itnim_aen_post(%struct.bfa_fcs_itnim_s* %75, i32 %76)
  br label %86

78:                                               ; preds = %37
  %79 = load i32, i32* @KERN_INFO, align 4
  %80 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %81 = load i32, i32* @bfa_log_level, align 4
  %82 = call i32 @BFA_LOG(i32 %79, %struct.bfad_s* %80, i32 %81, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %18)
  %83 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %84 = load i32, i32* @BFA_ITNIM_AEN_OFFLINE, align 4
  %85 = call i32 @bfa_fcs_itnim_aen_post(%struct.bfa_fcs_itnim_s* %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %70
  br label %99

87:                                               ; preds = %2
  %88 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %89 = load i32, i32* @bfa_fcs_itnim_sm_offline, align 4
  %90 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %88, i32 %89)
  %91 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %92 = call i32 @bfa_fcs_itnim_free(%struct.bfa_fcs_itnim_s* %91)
  br label %99

93:                                               ; preds = %2
  %94 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %95 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @bfa_sm_fault(%struct.TYPE_5__* %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %87, %86
  %100 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %100)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bfa_trc(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s*, i32) #2

declare dso_local i32 @bfa_fcb_itnim_offline(i32) #2

declare dso_local i32 @bfa_itnim_offline(i32) #2

declare dso_local i32 @wwn2str(i8*, i32) #2

declare dso_local i32 @bfa_fcs_lport_get_pwwn(i32) #2

declare dso_local i32 @bfa_fcs_lport_is_online(i32) #2

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @bfa_fcs_itnim_aen_post(%struct.bfa_fcs_itnim_s*, i32) #2

declare dso_local i32 @bfa_fcs_itnim_free(%struct.bfa_fcs_itnim_s*) #2

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_5__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
