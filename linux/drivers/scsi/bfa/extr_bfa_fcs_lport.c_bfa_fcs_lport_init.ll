; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { %struct.TYPE_4__*, %struct.bfa_lport_cfg_s, %struct.TYPE_3__*, i32, %struct.bfa_fcs_vport_s* }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_lport_cfg_s = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.bfa_fcs_vport_s = type { i32* }
%struct.bfad_s = type { i32 }

@BFA_STRING_32 = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"New logical port created: WWN = %s Role = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Initiator\00", align 1
@BFA_LPORT_AEN_NEW = common dso_local global i32 0, align 4
@bfa_fcs_lport_sm_uninit = common dso_local global i32 0, align 4
@BFA_FCS_PORT_SM_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_lport_init(%struct.bfa_fcs_lport_s* %0, %struct.bfa_lport_cfg_s* %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_s*, align 8
  %4 = alloca %struct.bfa_lport_cfg_s*, align 8
  %5 = alloca %struct.bfa_fcs_vport_s*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %3, align 8
  store %struct.bfa_lport_cfg_s* %1, %struct.bfa_lport_cfg_s** %4, align 8
  %9 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %9, i32 0, i32 4
  %11 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %10, align 8
  store %struct.bfa_fcs_vport_s* %11, %struct.bfa_fcs_vport_s** %5, align 8
  %12 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.bfad_s*
  store %struct.bfad_s* %17, %struct.bfad_s** %6, align 8
  %18 = load i32, i32* @BFA_STRING_32, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %22, i32 0, i32 1
  %24 = load %struct.bfa_lport_cfg_s*, %struct.bfa_lport_cfg_s** %4, align 8
  %25 = bitcast %struct.bfa_lport_cfg_s* %23 to i8*
  %26 = bitcast %struct.bfa_lport_cfg_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %33 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.bfa_lport_cfg_s, %struct.bfa_lport_cfg_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %5, align 8
  %43 = icmp ne %struct.bfa_fcs_vport_s* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %5, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  br label %49

48:                                               ; preds = %2
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32* [ %47, %44 ], [ null, %48 ]
  %51 = call i32 @bfa_fcb_lport_new(i64 %31, %struct.bfa_fcs_lport_s* %32, i32 %36, i32 %41, i32* %50)
  %52 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %55 = call i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s* %54)
  %56 = call i32 @wwn2str(i8* %21, i32 %55)
  %57 = load i32, i32* @KERN_INFO, align 4
  %58 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %59 = load i32, i32* @bfa_log_level, align 4
  %60 = call i32 @BFA_LOG(i32 %57, %struct.bfad_s* %58, i32 %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %62 = load i32, i32* @BFA_LPORT_AEN_NEW, align 4
  %63 = call i32 @bfa_fcs_lport_aen_post(%struct.bfa_fcs_lport_s* %61, i32 %62)
  %64 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %65 = load i32, i32* @bfa_fcs_lport_sm_uninit, align 4
  %66 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_s* %64, i32 %65)
  %67 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %68 = load i32, i32* @BFA_FCS_PORT_SM_CREATE, align 4
  %69 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_s* %67, i32 %68)
  %70 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %70)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bfa_fcb_lport_new(i64, %struct.bfa_fcs_lport_s*, i32, i32, i32*) #3

declare dso_local i32 @wwn2str(i8*, i32) #3

declare dso_local i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s*) #3

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, i8*, i8*) #3

declare dso_local i32 @bfa_fcs_lport_aen_post(%struct.bfa_fcs_lport_s*, i32) #3

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_s*, i32) #3

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_s*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
