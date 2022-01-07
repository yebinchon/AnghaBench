; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_determine_channel_path_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_determine_channel_path_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.chp_id = type { i32, i32 }
%struct.chsc_scpd = type { i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@css_general_characteristics = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"chsc: scpd failed (rc=%04x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chsc_determine_channel_path_desc(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.chp_id, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.chsc_scpd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = bitcast %struct.chp_id* %8 to i64*
  store i64 %0, i64* %17, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20, %6
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @css_general_characteristics, i32 0, i32 2), align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %117

32:                                               ; preds = %26, %23, %20
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @css_general_characteristics, i32 0, i32 1), align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %117

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @css_general_characteristics, i32 0, i32 0), align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %117

50:                                               ; preds = %44, %41
  %51 = load i8*, i8** %13, align 8
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = call i32 @memset(i8* %51, i32 0, i32 %52)
  %54 = load i8*, i8** %13, align 8
  %55 = bitcast i8* %54 to %struct.chsc_scpd*
  store %struct.chsc_scpd* %55, %struct.chsc_scpd** %14, align 8
  %56 = load %struct.chsc_scpd*, %struct.chsc_scpd** %14, align 8
  %57 = getelementptr inbounds %struct.chsc_scpd, %struct.chsc_scpd* %56, i32 0, i32 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 16, i32* %58, align 4
  %59 = load %struct.chsc_scpd*, %struct.chsc_scpd** %14, align 8
  %60 = getelementptr inbounds %struct.chsc_scpd, %struct.chsc_scpd* %59, i32 0, i32 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 2, i32* %61, align 4
  %62 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %8, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.chsc_scpd*, %struct.chsc_scpd** %14, align 8
  %65 = getelementptr inbounds %struct.chsc_scpd, %struct.chsc_scpd* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 4
  %66 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.chsc_scpd*, %struct.chsc_scpd** %14, align 8
  %69 = getelementptr inbounds %struct.chsc_scpd, %struct.chsc_scpd* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.chsc_scpd*, %struct.chsc_scpd** %14, align 8
  %73 = getelementptr inbounds %struct.chsc_scpd, %struct.chsc_scpd* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.chsc_scpd*, %struct.chsc_scpd** %14, align 8
  %76 = getelementptr inbounds %struct.chsc_scpd, %struct.chsc_scpd* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.chsc_scpd*, %struct.chsc_scpd** %14, align 8
  %79 = getelementptr inbounds %struct.chsc_scpd, %struct.chsc_scpd* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.chsc_scpd*, %struct.chsc_scpd** %14, align 8
  %82 = getelementptr inbounds %struct.chsc_scpd, %struct.chsc_scpd* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.chsc_scpd*, %struct.chsc_scpd** %14, align 8
  %85 = getelementptr inbounds %struct.chsc_scpd, %struct.chsc_scpd* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.chsc_scpd*, %struct.chsc_scpd** %14, align 8
  %87 = call i32 @chsc(%struct.chsc_scpd* %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %50
  %91 = load i32, i32* %15, align 4
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  br label %99

96:                                               ; preds = %90
  %97 = load i32, i32* @EBUSY, align 4
  %98 = sub nsw i32 0, %97
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i32 [ %95, %93 ], [ %98, %96 ]
  store i32 %100, i32* %7, align 4
  br label %117

101:                                              ; preds = %50
  %102 = load %struct.chsc_scpd*, %struct.chsc_scpd** %14, align 8
  %103 = getelementptr inbounds %struct.chsc_scpd, %struct.chsc_scpd* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @chsc_error_from_response(i32 %105)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load %struct.chsc_scpd*, %struct.chsc_scpd** %14, align 8
  %111 = getelementptr inbounds %struct.chsc_scpd, %struct.chsc_scpd* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %109, %101
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %115, %99, %47, %38, %29
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @chsc(%struct.chsc_scpd*) #1

declare dso_local i32 @chsc_error_from_response(i32) #1

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
