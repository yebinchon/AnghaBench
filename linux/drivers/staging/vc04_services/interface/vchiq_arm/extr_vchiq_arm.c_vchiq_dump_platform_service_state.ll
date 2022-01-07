; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_dump_platform_service_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_dump_platform_service_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.user_service = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"  instance %pK\00", align 1
@service_callback = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c", %d/%d messages\00", align 1
@MSG_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c" (dequeue pending)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_dump_platform_service_state(i8* %0, %struct.vchiq_service* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vchiq_service*, align 8
  %5 = alloca %struct.user_service*, align 8
  %6 = alloca [80 x i8], align 16
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.vchiq_service* %1, %struct.vchiq_service** %4, align 8
  %8 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %9 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.user_service*
  store %struct.user_service* %12, %struct.user_service** %5, align 8
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %14 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %15 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %13, i32 80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %19 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @service_callback, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %2
  %25 = load %struct.user_service*, %struct.user_service** %5, align 8
  %26 = getelementptr inbounds %struct.user_service, %struct.user_service* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %24
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 80, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.user_service*, %struct.user_service** %5, align 8
  %39 = getelementptr inbounds %struct.user_service, %struct.user_service* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.user_service*, %struct.user_service** %5, align 8
  %42 = getelementptr inbounds %struct.user_service, %struct.user_service* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = load i32, i32* @MSG_QUEUE_SIZE, align 4
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %33, i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.user_service*, %struct.user_service** %5, align 8
  %50 = getelementptr inbounds %struct.user_service, %struct.user_service* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %29
  %54 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = sub i64 80, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %57, i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %53, %29
  br label %66

66:                                               ; preds = %65, %24, %2
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @vchiq_dump(i8* %67, i8* %68, i32 %70)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @vchiq_dump(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
