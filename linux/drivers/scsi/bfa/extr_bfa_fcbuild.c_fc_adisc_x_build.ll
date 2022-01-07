; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_adisc_x_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_adisc_x_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_adisc_s = type { i32, i8*, i8*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FC_ELS_ADISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fchs_s*, %struct.fc_adisc_s*, i32, i32, i32, i8*, i8*, i64)* @fc_adisc_x_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_adisc_x_build(%struct.fchs_s* %0, %struct.fc_adisc_s* %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6, i64 %7) #0 {
  %9 = alloca %struct.fchs_s*, align 8
  %10 = alloca %struct.fc_adisc_s*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %9, align 8
  store %struct.fc_adisc_s* %1, %struct.fc_adisc_s** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i64 %7, i64* %16, align 8
  %17 = load %struct.fc_adisc_s*, %struct.fc_adisc_s** %10, align 8
  %18 = call i32 @memset(%struct.fc_adisc_s* %17, i8 signext 0, i32 40)
  %19 = load i64, i64* %16, align 8
  %20 = load %struct.fc_adisc_s*, %struct.fc_adisc_s** %10, align 8
  %21 = getelementptr inbounds %struct.fc_adisc_s, %struct.fc_adisc_s* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load i64, i64* %16, align 8
  %24 = load i64, i64* @FC_ELS_ADISC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %8
  %27 = load %struct.fchs_s*, %struct.fchs_s** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @fc_els_req_build(%struct.fchs_s* %27, i32 %28, i32 %29, i32 %30)
  br label %38

32:                                               ; preds = %8
  %33 = load %struct.fchs_s*, %struct.fchs_s** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @fc_els_rsp_build(%struct.fchs_s* %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.fc_adisc_s*, %struct.fc_adisc_s** %10, align 8
  %40 = getelementptr inbounds %struct.fc_adisc_s, %struct.fc_adisc_s* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load %struct.fc_adisc_s*, %struct.fc_adisc_s** %10, align 8
  %43 = getelementptr inbounds %struct.fc_adisc_s, %struct.fc_adisc_s* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load %struct.fc_adisc_s*, %struct.fc_adisc_s** %10, align 8
  %46 = getelementptr inbounds %struct.fc_adisc_s, %struct.fc_adisc_s* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.fc_adisc_s*, %struct.fc_adisc_s** %10, align 8
  %49 = getelementptr inbounds %struct.fc_adisc_s, %struct.fc_adisc_s* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  ret i32 40
}

declare dso_local i32 @memset(%struct.fc_adisc_s*, i8 signext, i32) #1

declare dso_local i32 @fc_els_req_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @fc_els_rsp_build(%struct.fchs_s*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
