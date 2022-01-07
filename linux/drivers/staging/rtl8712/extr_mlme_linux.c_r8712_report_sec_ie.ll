; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_mlme_linux.c_r8712_report_sec_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_mlme_linux.c_r8712_report_sec_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_WPA_IE_ID_ = common dso_local global i64 0, align 8
@IW_CUSTOM_MAX = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ASSOCINFO(ReqIEs=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@IWEVCUSTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_report_sec_ie(%struct._adapter* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.iwreq_data, align 4
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i64* null, i64** %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @_WPA_IE_ID_, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %101

15:                                               ; preds = %3
  %16 = load i64, i64* @IW_CUSTOM_MAX, align 8
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call i64* @kzalloc(i64 %16, i32 %17)
  store i64* %18, i64** %8, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %101

22:                                               ; preds = %15
  %23 = load i64*, i64** %8, align 8
  store i64* %23, i64** %9, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = call i32 (i64*, i8*, ...) @sprintf(i64* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load i64*, i64** %9, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64* %28, i64** %9, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 2
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @IW_CUSTOM_MAX, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i64, i64* %7, align 8
  br label %40

38:                                               ; preds = %22
  %39 = load i64, i64* @IW_CUSTOM_MAX, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  store i64 %41, i64* %7, align 8
  store i64 0, i64* %10, align 8
  br label %42

42:                                               ; preds = %56, %40
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i64*, i64** %9, align 8
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i64*, i8*, ...) @sprintf(i64* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i64*, i64** %9, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64* %55, i64** %9, align 8
  br label %56

56:                                               ; preds = %46
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %10, align 8
  br label %42

59:                                               ; preds = %42
  %60 = load i64*, i64** %9, align 8
  %61 = call i32 (i64*, i8*, ...) @sprintf(i64* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i64*, i64** %9, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64* %64, i64** %9, align 8
  %65 = call i32 @memset(%union.iwreq_data* %11, i32 0, i32 4)
  %66 = load i64*, i64** %9, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = ptrtoint i64* %66 to i64
  %69 = ptrtoint i64* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 8
  %72 = trunc i64 %71 to i32
  %73 = bitcast %union.iwreq_data* %11 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = bitcast %union.iwreq_data* %11 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @IW_CUSTOM_MAX, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %59
  %82 = bitcast %union.iwreq_data* %11 to %struct.TYPE_2__*
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  br label %88

86:                                               ; preds = %59
  %87 = load i64, i64* @IW_CUSTOM_MAX, align 8
  br label %88

88:                                               ; preds = %86, %81
  %89 = phi i64 [ %85, %81 ], [ %87, %86 ]
  %90 = trunc i64 %89 to i32
  %91 = bitcast %union.iwreq_data* %11 to %struct.TYPE_2__*
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct._adapter*, %struct._adapter** %4, align 8
  %94 = getelementptr inbounds %struct._adapter, %struct._adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IWEVCUSTOM, align 4
  %97 = load i64*, i64** %8, align 8
  %98 = call i32 @wireless_send_event(i32 %95, i32 %96, %union.iwreq_data* %11, i64* %97)
  %99 = load i64*, i64** %8, align 8
  %100 = call i32 @kfree(i64* %99)
  br label %101

101:                                              ; preds = %21, %88, %3
  ret void
}

declare dso_local i64* @kzalloc(i64, i32) #1

declare dso_local i32 @sprintf(i64*, i8*, ...) #1

declare dso_local i32 @memset(%union.iwreq_data*, i32, i32) #1

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i64*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
