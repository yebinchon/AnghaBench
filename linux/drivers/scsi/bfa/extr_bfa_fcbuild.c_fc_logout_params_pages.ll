; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_logout_params_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_logout_params_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_prlo_s = type { i32 }
%struct.fc_tprlo_s = type { i32 }

@FC_ELS_PRLO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_logout_params_pages(%struct.fchs_s* %0, i64 %1) #0 {
  %3 = alloca %struct.fchs_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_prlo_s*, align 8
  %7 = alloca %struct.fc_tprlo_s*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @FC_ELS_PRLO, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.fchs_s*, %struct.fchs_s** %3, align 8
  %13 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %12, i64 1
  %14 = bitcast %struct.fchs_s* %13 to %struct.fc_prlo_s*
  store %struct.fc_prlo_s* %14, %struct.fc_prlo_s** %6, align 8
  %15 = load %struct.fc_prlo_s*, %struct.fc_prlo_s** %6, align 8
  %16 = getelementptr inbounds %struct.fc_prlo_s, %struct.fc_prlo_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be16_to_cpu(i32 %17)
  %19 = sub nsw i32 %18, 4
  %20 = sdiv i32 %19, 16
  store i32 %20, i32* %5, align 4
  br label %31

21:                                               ; preds = %2
  %22 = load %struct.fchs_s*, %struct.fchs_s** %3, align 8
  %23 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %22, i64 1
  %24 = bitcast %struct.fchs_s* %23 to %struct.fc_tprlo_s*
  store %struct.fc_tprlo_s* %24, %struct.fc_tprlo_s** %7, align 8
  %25 = load %struct.fc_tprlo_s*, %struct.fc_tprlo_s** %7, align 8
  %26 = getelementptr inbounds %struct.fc_tprlo_s, %struct.fc_tprlo_s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be16_to_cpu(i32 %27)
  %29 = sub nsw i32 %28, 4
  %30 = sdiv i32 %29, 16
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %21, %11
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
