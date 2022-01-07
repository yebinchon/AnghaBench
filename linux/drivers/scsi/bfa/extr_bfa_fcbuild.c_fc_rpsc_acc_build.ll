; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_rpsc_acc_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_rpsc_acc_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_rpsc_acc_s = type { %struct.TYPE_2__*, i8*, i32 }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.fc_rpsc_speed_info_s = type { i32, i32 }

@FC_ELS_ACC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_rpsc_acc_build(%struct.fchs_s* %0, %struct.fc_rpsc_acc_s* %1, i32 %2, i32 %3, i32 %4, %struct.fc_rpsc_speed_info_s* %5) #0 {
  %7 = alloca %struct.fchs_s*, align 8
  %8 = alloca %struct.fc_rpsc_acc_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fc_rpsc_speed_info_s*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %7, align 8
  store %struct.fc_rpsc_acc_s* %1, %struct.fc_rpsc_acc_s** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fc_rpsc_speed_info_s* %5, %struct.fc_rpsc_speed_info_s** %12, align 8
  %13 = load %struct.fc_rpsc_acc_s*, %struct.fc_rpsc_acc_s** %8, align 8
  %14 = call i32 @memset(%struct.fc_rpsc_acc_s* %13, i32 0, i32 24)
  %15 = load %struct.fchs_s*, %struct.fchs_s** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @fc_els_rsp_build(%struct.fchs_s* %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* @FC_ELS_ACC, align 4
  %21 = load %struct.fc_rpsc_acc_s*, %struct.fc_rpsc_acc_s** %8, align 8
  %22 = getelementptr inbounds %struct.fc_rpsc_acc_s, %struct.fc_rpsc_acc_s* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = call i8* @cpu_to_be16(i32 1)
  %24 = load %struct.fc_rpsc_acc_s*, %struct.fc_rpsc_acc_s** %8, align 8
  %25 = getelementptr inbounds %struct.fc_rpsc_acc_s, %struct.fc_rpsc_acc_s* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.fc_rpsc_speed_info_s*, %struct.fc_rpsc_speed_info_s** %12, align 8
  %27 = getelementptr inbounds %struct.fc_rpsc_speed_info_s, %struct.fc_rpsc_speed_info_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @cpu_to_be16(i32 %28)
  %30 = load %struct.fc_rpsc_acc_s*, %struct.fc_rpsc_acc_s** %8, align 8
  %31 = getelementptr inbounds %struct.fc_rpsc_acc_s, %struct.fc_rpsc_acc_s* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i8* %29, i8** %34, align 8
  %35 = load %struct.fc_rpsc_speed_info_s*, %struct.fc_rpsc_speed_info_s** %12, align 8
  %36 = getelementptr inbounds %struct.fc_rpsc_speed_info_s, %struct.fc_rpsc_speed_info_s* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_be16(i32 %37)
  %39 = load %struct.fc_rpsc_acc_s*, %struct.fc_rpsc_acc_s** %8, align 8
  %40 = getelementptr inbounds %struct.fc_rpsc_acc_s, %struct.fc_rpsc_acc_s* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %38, i8** %43, align 8
  ret i32 24
}

declare dso_local i32 @memset(%struct.fc_rpsc_acc_s*, i32, i32) #1

declare dso_local i32 @fc_els_rsp_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
