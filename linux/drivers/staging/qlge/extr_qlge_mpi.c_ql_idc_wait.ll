; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_idc_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_idc_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, %struct.mbox_params }
%struct.mbox_params = type { i32* }

@ETIMEDOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"IDC Timeout.\0A\00", align 1
@AEN_IDC_EXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"IDC Time Extension from function.\0A\00", align 1
@AEN_IDC_CMPLT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"IDC Success.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"IDC: Invalid State 0x%.04x.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_idc_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_idc_wait(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.mbox_params*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %6 = load i32, i32* @ETIMEDOUT, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @HZ, align 4
  %9 = mul nsw i32 1, %8
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %11, i32 0, i32 2
  store %struct.mbox_params* %12, %struct.mbox_params** %5, align 8
  br label %13

13:                                               ; preds = %82, %1
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 1
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @wait_for_completion_timeout(i32* %15, i64 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %22 = load i32, i32* @drv, align 4
  %23 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %85

27:                                               ; preds = %13
  %28 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %29 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AEN_IDC_EXT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %27
  %36 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %37 = load i32, i32* @drv, align 4
  %38 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %36, i32 %37, i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %43 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 15
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %4, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %4, align 8
  br label %81

52:                                               ; preds = %27
  %53 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %54 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AEN_IDC_CMPLT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %62 = load i32, i32* @drv, align 4
  %63 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %85

67:                                               ; preds = %52
  %68 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %69 = load i32, i32* @drv, align 4
  %70 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %74 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %68, i32 %69, i32 %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %85

81:                                               ; preds = %35
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %4, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %13, label %85

85:                                               ; preds = %82, %67, %60, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
