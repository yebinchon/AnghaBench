; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_find_service_for_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_find_service_for_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { i64, i64, i64, i64 }

@service_spinlock = common dso_local global i32 0, align 4
@VCHIQ_SRVSTATE_FREE = common dso_local global i64 0, align 8
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid service handle 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vchiq_service* @find_service_for_instance(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vchiq_service*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 @spin_lock(i32* @service_spinlock)
  %7 = load i64, i64* %4, align 8
  %8 = call %struct.vchiq_service* @handle_to_service(i64 %7)
  store %struct.vchiq_service* %8, %struct.vchiq_service** %5, align 8
  %9 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %10 = icmp ne %struct.vchiq_service* %9, null
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %13 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VCHIQ_SRVSTATE_FREE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %19 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %25 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %31 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %37 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  br label %41

40:                                               ; preds = %23, %17, %11, %2
  store %struct.vchiq_service* null, %struct.vchiq_service** %5, align 8
  br label %41

41:                                               ; preds = %40, %29
  %42 = call i32 @spin_unlock(i32* @service_spinlock)
  %43 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %44 = icmp ne %struct.vchiq_service* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @vchiq_core_log_level, align 4
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @vchiq_log_info(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  ret %struct.vchiq_service* %50
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.vchiq_service* @handle_to_service(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vchiq_log_info(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
