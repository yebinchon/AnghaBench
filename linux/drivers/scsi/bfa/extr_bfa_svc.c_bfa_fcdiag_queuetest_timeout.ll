; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_queuetest_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_queuetest_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcdiag_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i64, i8*, i32, i32 (i32, i8*)*, i64, %struct.bfa_diag_qtest_result_s* }
%struct.bfa_diag_qtest_result_s = type { i8*, i8*, i8* }

@BFA_STATUS_ETIMER = common dso_local global i8* null, align 8
@QTEST_CNT_DEFAULT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfa_fcdiag_queuetest_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcdiag_queuetest_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_fcdiag_s*, align 8
  %4 = alloca %struct.bfa_diag_qtest_result_s*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bfa_fcdiag_s*
  store %struct.bfa_fcdiag_s* %6, %struct.bfa_fcdiag_s** %3, align 8
  %7 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 7
  %10 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %9, align 8
  store %struct.bfa_diag_qtest_result_s* %10, %struct.bfa_diag_qtest_result_s** %4, align 8
  %11 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %12 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %11, i8* %15)
  %17 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %18 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %17, i8* %21)
  %23 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %24 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load i8*, i8** @BFA_STATUS_ETIMER, align 8
  %27 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %4, align 8
  %28 = getelementptr inbounds %struct.bfa_diag_qtest_result_s, %struct.bfa_diag_qtest_result_s* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @QTEST_CNT_DEFAULT, align 8
  %30 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %29 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %4, align 8
  %39 = getelementptr inbounds %struct.bfa_diag_qtest_result_s, %struct.bfa_diag_qtest_result_s* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %1
  %46 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %4, align 8
  %51 = getelementptr inbounds %struct.bfa_diag_qtest_result_s, %struct.bfa_diag_qtest_result_s* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %45, %1
  %53 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %54 = load i8*, i8** @BFA_STATUS_ETIMER, align 8
  %55 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %53, i8* %54)
  %56 = load i8*, i8** @BFA_STATUS_ETIMER, align 8
  %57 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i8* %56, i8** %59, align 8
  %60 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  %63 = load i32 (i32, i8*)*, i32 (i32, i8*)** %62, align 8
  %64 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %65 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %69 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 %63(i32 %67, i8* %71)
  %73 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %74 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_fcdiag_s*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
