; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_process_sei_link_incident.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_process_sei_link_incident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_sei_nt0_area = type { i32, i32, i32* }
%struct.lir = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@PARAMS_LEN = common dso_local global i32 0, align 4
@NODEID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"chsc: link incident (rs=%02x, rs_id=%04x, iq=%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"Link degraded: RS=%02x RSID=%04x IC=%02x IUPARAMS=%s IUNODEID=%s AUPARAMS=%s AUNODEID=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"Link stopped: RS=%02x RSID=%04x IC=%02x IUPARAMS=%s IUNODEID=%s AUPARAMS=%s AUNODEID=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chsc_sei_nt0_area*)* @chsc_process_sei_link_incident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_process_sei_link_incident(%struct.chsc_sei_nt0_area* %0) #0 {
  %2 = alloca %struct.chsc_sei_nt0_area*, align 8
  %3 = alloca %struct.lir*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.chsc_sei_nt0_area* %0, %struct.chsc_sei_nt0_area** %2, align 8
  %10 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %11 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %10, i32 0, i32 2
  %12 = bitcast i32** %11 to %struct.lir*
  store %struct.lir* %12, %struct.lir** %3, align 8
  %13 = load i32, i32* @PARAMS_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load i32, i32* @NODEID_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = load i32, i32* @PARAMS_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %23 = load i32, i32* @NODEID_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  %26 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %27 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %30 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %33 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CIO_CRW_EVENT(i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %36)
  %38 = load %struct.lir*, %struct.lir** %3, align 8
  %39 = getelementptr inbounds %struct.lir, %struct.lir* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  br label %79

44:                                               ; preds = %1
  %45 = load %struct.lir*, %struct.lir** %3, align 8
  %46 = getelementptr inbounds %struct.lir, %struct.lir* %45, i32 0, i32 3
  %47 = call i32 @format_node_data(i8* %16, i8* %19, i32* %46)
  %48 = load %struct.lir*, %struct.lir** %3, align 8
  %49 = getelementptr inbounds %struct.lir, %struct.lir* %48, i32 0, i32 2
  %50 = call i32 @format_node_data(i8* %22, i8* %25, i32* %49)
  %51 = load %struct.lir*, %struct.lir** %3, align 8
  %52 = getelementptr inbounds %struct.lir, %struct.lir* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %77 [
    i32 129, label %55
    i32 128, label %66
  ]

55:                                               ; preds = %44
  %56 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %57 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %60 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.lir*, %struct.lir** %3, align 8
  %63 = getelementptr inbounds %struct.lir, %struct.lir* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pr_warn(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61, i32 %64, i8* %16, i8* %19, i8* %22, i8* %25)
  br label %78

66:                                               ; preds = %44
  %67 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %68 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %71 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.lir*, %struct.lir** %3, align 8
  %74 = getelementptr inbounds %struct.lir, %struct.lir* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72, i32 %75, i8* %16, i8* %19, i8* %22, i8* %25)
  br label %78

77:                                               ; preds = %44
  br label %78

78:                                               ; preds = %77, %66, %55
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %43
  %80 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %9, align 4
  switch i32 %81, label %83 [
    i32 0, label %82
    i32 1, label %82
  ]

82:                                               ; preds = %79, %79
  ret void

83:                                               ; preds = %79
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @format_node_data(i8*, i8*, i32*) #2

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
