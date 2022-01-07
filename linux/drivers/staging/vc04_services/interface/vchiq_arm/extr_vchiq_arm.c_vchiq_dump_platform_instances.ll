; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_dump_platform_instances.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_dump_platform_instances.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_state = type { i32, %struct.vchiq_service** }
%struct.vchiq_service = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@service_callback = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Instance %pK: pid %d,%s completions %d/%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" connected, \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAX_COMPLETIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_dump_platform_instances(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vchiq_state*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vchiq_service*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.vchiq_service*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  %11 = call %struct.vchiq_state* (...) @vchiq_get_state()
  store %struct.vchiq_state* %11, %struct.vchiq_state** %3, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %46, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %15 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %12
  %19 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %20 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %19, i32 0, i32 1
  %21 = load %struct.vchiq_service**, %struct.vchiq_service*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.vchiq_service*, %struct.vchiq_service** %21, i64 %23
  %25 = load %struct.vchiq_service*, %struct.vchiq_service** %24, align 8
  store %struct.vchiq_service* %25, %struct.vchiq_service** %7, align 8
  %26 = load %struct.vchiq_service*, %struct.vchiq_service** %7, align 8
  %27 = icmp ne %struct.vchiq_service* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %18
  %29 = load %struct.vchiq_service*, %struct.vchiq_service** %7, align 8
  %30 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @service_callback, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.vchiq_service*, %struct.vchiq_service** %7, align 8
  %37 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %8, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44, %28, %18
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %12

49:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %114, %49
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %53 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %117

56:                                               ; preds = %50
  %57 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %58 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %57, i32 0, i32 1
  %59 = load %struct.vchiq_service**, %struct.vchiq_service*** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.vchiq_service*, %struct.vchiq_service** %59, i64 %61
  %63 = load %struct.vchiq_service*, %struct.vchiq_service** %62, align 8
  store %struct.vchiq_service* %63, %struct.vchiq_service** %9, align 8
  %64 = load %struct.vchiq_service*, %struct.vchiq_service** %9, align 8
  %65 = icmp ne %struct.vchiq_service* %64, null
  br i1 %65, label %66, label %113

66:                                               ; preds = %56
  %67 = load %struct.vchiq_service*, %struct.vchiq_service** %9, align 8
  %68 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @service_callback, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %113

73:                                               ; preds = %66
  %74 = load %struct.vchiq_service*, %struct.vchiq_service** %9, align 8
  %75 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %10, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %78 = icmp ne %struct.TYPE_5__* %77, null
  br i1 %78, label %79, label %112

79:                                               ; preds = %73
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %112, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %98, %101
  %103 = load i32, i32* @MAX_COMPLETIONS, align 4
  %104 = call i32 @snprintf(i8* %85, i32 80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %86, i32 %89, i8* %95, i32 %102, i32 %103)
  store i32 %104, i32* %5, align 4
  %105 = load i8*, i8** %2, align 8
  %106 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 @vchiq_dump(i8* %105, i8* %106, i32 %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %84, %79, %73
  br label %113

113:                                              ; preds = %112, %66, %56
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %50

117:                                              ; preds = %50
  ret void
}

declare dso_local %struct.vchiq_state* @vchiq_get_state(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, %struct.TYPE_5__*, i32, i8*, i32, i32) #1

declare dso_local i32 @vchiq_dump(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
