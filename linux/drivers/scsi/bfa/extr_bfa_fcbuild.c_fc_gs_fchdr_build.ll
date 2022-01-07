; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_gs_fchdr_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_gs_fchdr_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32, i8*, i8*, i32, i32, i32, i32, i32 }

@FC_RTG_FC4_DEV_DATA = common dso_local global i32 0, align 4
@FC_CAT_UNSOLICIT_CTRL = common dso_local global i32 0, align 4
@FC_TYPE_SERVICES = common dso_local global i32 0, align 4
@FCTL_SEQ_INI = common dso_local global i32 0, align 4
@FCTL_FS_EXCH = common dso_local global i32 0, align 4
@FCTL_END_SEQ = common dso_local global i32 0, align 4
@FCTL_SI_XFER = common dso_local global i32 0, align 4
@FC_RXID_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fchs_s*, i8*, i8*, i8*)* @fc_gs_fchdr_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_gs_fchdr_build(%struct.fchs_s* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.fchs_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %10 = call i32 @memset(%struct.fchs_s* %9, i32 0, i32 48)
  %11 = load i32, i32* @FC_RTG_FC4_DEV_DATA, align 4
  %12 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %13 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @FC_CAT_UNSOLICIT_CTRL, align 4
  %15 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %16 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @FC_TYPE_SERVICES, align 4
  %18 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %19 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @FCTL_SEQ_INI, align 4
  %21 = load i32, i32* @FCTL_FS_EXCH, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FCTL_END_SEQ, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @FCTL_SI_XFER, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @bfa_hton3b(i32 %26)
  %28 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %29 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @FC_RXID_ANY, align 4
  %31 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %32 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %35 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %38 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @cpu_to_be16(i8* %39)
  %41 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %42 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  ret void
}

declare dso_local i32 @memset(%struct.fchs_s*, i32, i32) #1

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local i32 @cpu_to_be16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
