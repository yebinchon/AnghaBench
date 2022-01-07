; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_create_uid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_create_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_eckd_private = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.dasd_uid }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dasd_uid = type { i64, i64, i32, i32, i32, i32, i32 }

@UA_BASE_PAV_ALIAS = common dso_local global i64 0, align 8
@UA_BASE_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_eckd_private*)* @create_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_uid(%struct.dasd_eckd_private* %0) #0 {
  %2 = alloca %struct.dasd_eckd_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_uid*, align 8
  store %struct.dasd_eckd_private* %0, %struct.dasd_eckd_private** %2, align 8
  %5 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %2, align 8
  %6 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %5, i32 0, i32 4
  store %struct.dasd_uid* %6, %struct.dasd_uid** %4, align 8
  %7 = load %struct.dasd_uid*, %struct.dasd_uid** %4, align 8
  %8 = call i32 @memset(%struct.dasd_uid* %7, i32 0, i32 40)
  %9 = load %struct.dasd_uid*, %struct.dasd_uid** %4, align 8
  %10 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %2, align 8
  %13 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memcpy(i32 %11, i32 %16, i32 3)
  %18 = load %struct.dasd_uid*, %struct.dasd_uid** %4, align 8
  %19 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @EBCASC(i32 %20, i32 3)
  %22 = load %struct.dasd_uid*, %struct.dasd_uid** %4, align 8
  %23 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %2, align 8
  %26 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %24, i32 %29, i32 3)
  %31 = load %struct.dasd_uid*, %struct.dasd_uid** %4, align 8
  %32 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @EBCASC(i32 %33, i32 3)
  %35 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %2, align 8
  %36 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %35, i32 0, i32 3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dasd_uid*, %struct.dasd_uid** %4, align 8
  %41 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %2, align 8
  %43 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dasd_uid*, %struct.dasd_uid** %4, align 8
  %48 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %2, align 8
  %50 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %75

53:                                               ; preds = %1
  %54 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %2, align 8
  %55 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dasd_uid*, %struct.dasd_uid** %4, align 8
  %60 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.dasd_uid*, %struct.dasd_uid** %4, align 8
  %62 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @UA_BASE_PAV_ALIAS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %53
  %67 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %2, align 8
  %68 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.dasd_uid*, %struct.dasd_uid** %4, align 8
  %73 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %66, %53
  br label %79

75:                                               ; preds = %1
  %76 = load i64, i64* @UA_BASE_DEVICE, align 8
  %77 = load %struct.dasd_uid*, %struct.dasd_uid** %4, align 8
  %78 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %74
  %80 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %2, align 8
  %81 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = icmp ne %struct.TYPE_8__* %82, null
  br i1 %83, label %84, label %110

84:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %106, %84
  %86 = load i32, i32* %3, align 4
  %87 = icmp slt i32 %86, 16
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load %struct.dasd_uid*, %struct.dasd_uid** %4, align 8
  %90 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = mul nsw i32 2, %92
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %91, %94
  %96 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %2, align 8
  %97 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @sprintf(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %88
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %3, align 4
  br label %85

109:                                              ; preds = %85
  br label %110

110:                                              ; preds = %109, %79
  ret void
}

declare dso_local i32 @memset(%struct.dasd_uid*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @EBCASC(i32, i32) #1

declare dso_local i32 @sprintf(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
