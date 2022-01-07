; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_rffid_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_rffid_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.ct_hdr_s = type { i32 }
%struct.fcgs_rffid_req_s = type { i8*, i8*, i32 }

@FC_NAME_SERVER = common dso_local global i32 0, align 4
@GS_RFF_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_rffid_build(%struct.fchs_s* %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.fchs_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ct_hdr_s*, align 8
  %14 = alloca %struct.fcgs_rffid_req_s*, align 8
  %15 = alloca i32, align 4
  store %struct.fchs_s* %0, %struct.fchs_s** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.ct_hdr_s*
  store %struct.ct_hdr_s* %17, %struct.ct_hdr_s** %13, align 8
  %18 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %13, align 8
  %19 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %18, i64 1
  %20 = bitcast %struct.ct_hdr_s* %19 to %struct.fcgs_rffid_req_s*
  store %struct.fcgs_rffid_req_s* %20, %struct.fcgs_rffid_req_s** %14, align 8
  %21 = load i32, i32* @FC_NAME_SERVER, align 4
  %22 = call i32 @bfa_hton3b(i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.fchs_s*, %struct.fchs_s** %7, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @fc_gs_fchdr_build(%struct.fchs_s* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %13, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @GS_RFF_ID, align 4
  %31 = call i32 @fc_gs_cthdr_build(%struct.ct_hdr_s* %28, i32 %29, i32 %30)
  %32 = load %struct.fcgs_rffid_req_s*, %struct.fcgs_rffid_req_s** %14, align 8
  %33 = call i32 @memset(%struct.fcgs_rffid_req_s* %32, i32 0, i32 24)
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.fcgs_rffid_req_s*, %struct.fcgs_rffid_req_s** %14, align 8
  %36 = getelementptr inbounds %struct.fcgs_rffid_req_s, %struct.fcgs_rffid_req_s* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load %struct.fcgs_rffid_req_s*, %struct.fcgs_rffid_req_s** %14, align 8
  %39 = getelementptr inbounds %struct.fcgs_rffid_req_s, %struct.fcgs_rffid_req_s* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load %struct.fcgs_rffid_req_s*, %struct.fcgs_rffid_req_s** %14, align 8
  %42 = getelementptr inbounds %struct.fcgs_rffid_req_s, %struct.fcgs_rffid_req_s* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  ret i32 28
}

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local i32 @fc_gs_fchdr_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @fc_gs_cthdr_build(%struct.ct_hdr_s*, i32, i32) #1

declare dso_local i32 @memset(%struct.fcgs_rffid_req_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
