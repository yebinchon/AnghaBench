; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32, i32, i32 }
%struct.ab_task = type { i32, i64, %struct.mbox_priv }
%struct.mbox_priv = type { i32, i32*, i32 }

@EIO = common dso_local global i32 0, align 4
@REG_IND_AP = common dso_local global i32 0, align 4
@IND_AX_MIN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TIMEOUT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@MBOX_IN_AREA = common dso_local global i64 0, align 8
@task_fn_mbox_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anybuss_host*, %struct.ab_task*)* @task_fn_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_fn_mbox(%struct.anybuss_host* %0, %struct.ab_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anybuss_host*, align 8
  %5 = alloca %struct.ab_task*, align 8
  %6 = alloca %struct.mbox_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.anybuss_host* %0, %struct.anybuss_host** %4, align 8
  store %struct.ab_task* %1, %struct.ab_task** %5, align 8
  %9 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %10 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %9, i32 0, i32 2
  store %struct.mbox_priv* %10, %struct.mbox_priv** %6, align 8
  %11 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %12 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %88

18:                                               ; preds = %2
  %19 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %20 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @REG_IND_AP, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %7)
  %24 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %25 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %24, i32 0, i32 1
  %26 = call i32 @atomic_read(i32* %25)
  %27 = load i32, i32* %7, align 4
  %28 = xor i32 %26, %27
  %29 = load i32, i32* @IND_AX_MIN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %18
  %33 = load i64, i64* @jiffies, align 8
  %34 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %35 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TIMEOUT, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i64 @time_after(i64 %33, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %88

44:                                               ; preds = %32
  %45 = load i32, i32* @EINPROGRESS, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %88

47:                                               ; preds = %18
  %48 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %49 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* @MBOX_IN_AREA, align 8
  %52 = load %struct.mbox_priv*, %struct.mbox_priv** %6, align 8
  %53 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %52, i32 0, i32 2
  %54 = call i32 @regmap_bulk_write(i32 %50, i64 %51, i32* %53, i32 4)
  %55 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %56 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* @MBOX_IN_AREA, align 8
  %59 = add i64 %58, 4
  %60 = load %struct.mbox_priv*, %struct.mbox_priv** %6, align 8
  %61 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.mbox_priv*, %struct.mbox_priv** %6, align 8
  %64 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @regmap_bulk_write(i32 %57, i64 %59, i32* %62, i32 %65)
  %67 = load i32, i32* @IND_AX_MIN, align 4
  %68 = load i32, i32* %7, align 4
  %69 = xor i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %71 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @write_ind_ap(i32 %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %47
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %88

79:                                               ; preds = %47
  %80 = load i64, i64* @jiffies, align 8
  %81 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %82 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* @task_fn_mbox_2, align 4
  %84 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %85 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @EINPROGRESS, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %79, %77, %44, %41, %15
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @regmap_bulk_write(i32, i64, i32*, i32) #1

declare dso_local i32 @write_ind_ap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
