; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_area_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_area_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32, i32, i32, i32 }
%struct.ab_task = type { i32, i64, %struct.area_priv }
%struct.area_priv = type { i32, i32, i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@REG_IND_AP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"timeout waiting for area\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@IND_AP_ABITS = common dso_local global i32 0, align 4
@task_fn_area_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anybuss_host*, %struct.ab_task*)* @task_fn_area_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_fn_area_2(%struct.anybuss_host* %0, %struct.ab_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anybuss_host*, align 8
  %5 = alloca %struct.ab_task*, align 8
  %6 = alloca %struct.area_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.anybuss_host* %0, %struct.anybuss_host** %4, align 8
  store %struct.ab_task* %1, %struct.ab_task** %5, align 8
  %9 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %10 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %9, i32 0, i32 2
  store %struct.area_priv* %10, %struct.area_priv** %6, align 8
  %11 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %12 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %110

18:                                               ; preds = %2
  %19 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %20 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @REG_IND_AP, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %7)
  %24 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %25 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %24, i32 0, i32 2
  %26 = call i32 @atomic_read(i32* %25)
  %27 = load %struct.area_priv*, %struct.area_priv** %6, align 8
  %28 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* @jiffies, align 4
  %34 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %35 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TIMEOUT, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i64 @time_after(i32 %33, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %43 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_warn(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 (...) @dump_stack()
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %110

49:                                               ; preds = %32
  %50 = load i32, i32* @EINPROGRESS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %110

52:                                               ; preds = %18
  %53 = load %struct.area_priv*, %struct.area_priv** %6, align 8
  %54 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %59 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.area_priv*, %struct.area_priv** %6, align 8
  %62 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.area_priv*, %struct.area_priv** %6, align 8
  %65 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.area_priv*, %struct.area_priv** %6, align 8
  %68 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @regmap_bulk_write(i32 %60, i32 %63, i32 %66, i32 %69)
  br label %85

71:                                               ; preds = %52
  %72 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %73 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.area_priv*, %struct.area_priv** %6, align 8
  %76 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.area_priv*, %struct.area_priv** %6, align 8
  %79 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.area_priv*, %struct.area_priv** %6, align 8
  %82 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @regmap_bulk_read(i32 %74, i32 %77, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %71, %57
  %86 = load i32, i32* @IND_AP_ABITS, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load %struct.area_priv*, %struct.area_priv** %6, align 8
  %91 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %96 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @write_ind_ap(i32 %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %85
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %110

104:                                              ; preds = %85
  %105 = load i32, i32* @task_fn_area_3, align 4
  %106 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %107 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @EINPROGRESS, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %104, %102, %49, %41, %15
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32, i32) #1

declare dso_local i32 @write_ind_ap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
