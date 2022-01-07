; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_sm_hcb_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_sm_hcb_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_itnim_s = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bfad_s = type { i32 }

@BFA_STRING_32 = common dso_local global i32 0, align 4
@bfa_fcs_itnim_sm_online = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Target (WWN = %s) is online for initiator (WWN = %s)\0A\00", align 1
@BFA_ITNIM_AEN_ONLINE = common dso_local global i32 0, align 4
@bfa_fcs_itnim_sm_hcb_offline = common dso_local global i32 0, align 4
@bfa_fcs_itnim_sm_offline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_itnim_s*, i32)* @bfa_fcs_itnim_sm_hcb_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_itnim_sm_hcb_online(%struct.bfa_fcs_itnim_s* %0, i32 %1) #0 {
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
  %26 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %25, i32 0, i32 2
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
  switch i32 %36, label %79 [
    i32 129, label %37
    i32 128, label %65
    i32 130, label %73
  ]

37:                                               ; preds = %2
  %38 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %39 = load i32, i32* @bfa_fcs_itnim_sm_online, align 4
  %40 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %38, i32 %39)
  %41 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bfa_fcb_itnim_online(i32 %43)
  %45 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bfa_fcs_lport_get_pwwn(i32 %49)
  %51 = call i32 @wwn2str(i8* %18, i32 %50)
  %52 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @wwn2str(i8* %21, i32 %56)
  %58 = load i32, i32* @KERN_INFO, align 4
  %59 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %60 = load i32, i32* @bfa_log_level, align 4
  %61 = call i32 @BFA_LOG(i32 %58, %struct.bfad_s* %59, i32 %60, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %18)
  %62 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %63 = load i32, i32* @BFA_ITNIM_AEN_ONLINE, align 4
  %64 = call i32 @bfa_fcs_itnim_aen_post(%struct.bfa_fcs_itnim_s* %62, i32 %63)
  br label %85

65:                                               ; preds = %2
  %66 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %67 = load i32, i32* @bfa_fcs_itnim_sm_hcb_offline, align 4
  %68 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %66, i32 %67)
  %69 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %70 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @bfa_itnim_offline(i32 %71)
  br label %85

73:                                               ; preds = %2
  %74 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %75 = load i32, i32* @bfa_fcs_itnim_sm_offline, align 4
  %76 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %74, i32 %75)
  %77 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %78 = call i32 @bfa_fcs_itnim_free(%struct.bfa_fcs_itnim_s* %77)
  br label %85

79:                                               ; preds = %2
  %80 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %81 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @bfa_sm_fault(%struct.TYPE_5__* %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %73, %65, %37
  %86 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bfa_trc(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s*, i32) #2

declare dso_local i32 @bfa_fcb_itnim_online(i32) #2

declare dso_local i32 @wwn2str(i8*, i32) #2

declare dso_local i32 @bfa_fcs_lport_get_pwwn(i32) #2

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @bfa_fcs_itnim_aen_post(%struct.bfa_fcs_itnim_s*, i32) #2

declare dso_local i32 @bfa_itnim_offline(i32) #2

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
