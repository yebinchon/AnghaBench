; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_adisc_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_adisc_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_adisc_s = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FC_ELS_ACC = common dso_local global i64 0, align 8
@FC_PARSE_FAILURE = common dso_local global i32 0, align 4
@FC_PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_adisc_parse(%struct.fchs_s* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fchs_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fc_adisc_s*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.fc_adisc_s*
  store %struct.fc_adisc_s* %14, %struct.fc_adisc_s** %12, align 8
  %15 = load %struct.fc_adisc_s*, %struct.fc_adisc_s** %12, align 8
  %16 = getelementptr inbounds %struct.fc_adisc_s, %struct.fc_adisc_s* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FC_ELS_ACC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %22, i32* %6, align 4
  br label %47

23:                                               ; preds = %5
  %24 = load %struct.fc_adisc_s*, %struct.fc_adisc_s** %12, align 8
  %25 = getelementptr inbounds %struct.fc_adisc_s, %struct.fc_adisc_s* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.fc_adisc_s*, %struct.fc_adisc_s** %12, align 8
  %31 = getelementptr inbounds %struct.fc_adisc_s, %struct.fc_adisc_s* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @wwn_is_equal(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.fc_adisc_s*, %struct.fc_adisc_s** %12, align 8
  %38 = getelementptr inbounds %struct.fc_adisc_s, %struct.fc_adisc_s* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @wwn_is_equal(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @FC_PARSE_OK, align 4
  store i32 %44, i32* %6, align 4
  br label %47

45:                                               ; preds = %36, %29, %23
  %46 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %43, %21
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i64 @wwn_is_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
