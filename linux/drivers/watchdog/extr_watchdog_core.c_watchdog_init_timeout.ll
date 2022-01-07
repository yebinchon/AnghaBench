; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_core.c_watchdog_init_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_core.c_watchdog_init_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"%s: driver supplied timeout (%u) out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"timeout-sec\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%s: DT supplied timeout (%u) out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: falling back to default timeout (%u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @watchdog_init_timeout(%struct.watchdog_device* %0, i32 %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.watchdog_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device* %2, %struct.device** %7, align 8
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %12 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %17 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i8* @dev_name(i64 %18)
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %22 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  br label %27

27:                                               ; preds = %20, %15
  %28 = phi i8* [ %19, %15 ], [ %26, %20 ]
  store i8* %28, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %29 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %30 = call i32 @watchdog_check_min_max_timeout(%struct.watchdog_device* %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @watchdog_timeout_invalid(%struct.watchdog_device* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %41 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %4, align 4
  br label %96

42:                                               ; preds = %33
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %42, %27
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = icmp ne %struct.device* %49, null
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @of_property_read_u32(i64 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @watchdog_timeout_invalid(%struct.watchdog_device* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %73 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %4, align 4
  br label %96

74:                                               ; preds = %65, %62
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %75, i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %74, %56, %51, %48
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %85 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i8*, i8** %8, align 8
  %90 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %91 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %89, i32 %92)
  br label %94

94:                                               ; preds = %88, %83, %80
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %70, %38
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i8* @dev_name(i64) #1

declare dso_local i32 @watchdog_check_min_max_timeout(%struct.watchdog_device*) #1

declare dso_local i32 @watchdog_timeout_invalid(%struct.watchdog_device*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

declare dso_local i64 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local i32 @pr_warn(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
