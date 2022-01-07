; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_mbox_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_mbox_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32, i32, i32 }
%struct.ab_task = type { i64, %struct.mbox_priv }
%struct.mbox_priv = type { i32, i32*, i32 }

@EIO = common dso_local global i32 0, align 4
@REG_IND_AP = common dso_local global i32 0, align 4
@IND_AX_MOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@MBOX_OUT_AREA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anybuss_host*, %struct.ab_task*)* @task_fn_mbox_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_fn_mbox_2(%struct.anybuss_host* %0, %struct.ab_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anybuss_host*, align 8
  %5 = alloca %struct.ab_task*, align 8
  %6 = alloca %struct.mbox_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.anybuss_host* %0, %struct.anybuss_host** %4, align 8
  store %struct.ab_task* %1, %struct.ab_task** %5, align 8
  %8 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %9 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %8, i32 0, i32 1
  store %struct.mbox_priv* %9, %struct.mbox_priv** %6, align 8
  %10 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %11 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %74

17:                                               ; preds = %2
  %18 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %19 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @REG_IND_AP, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %7)
  %23 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %24 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %23, i32 0, i32 1
  %25 = call i32 @atomic_read(i32* %24)
  %26 = load i32, i32* %7, align 4
  %27 = xor i32 %25, %26
  %28 = load i32, i32* @IND_AX_MOUT, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %17
  %32 = load i32, i32* @jiffies, align 4
  %33 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %34 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TIMEOUT, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i64 @time_after(i32 %32, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %74

43:                                               ; preds = %31
  %44 = load i32, i32* @EINPROGRESS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %74

46:                                               ; preds = %17
  %47 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %48 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* @MBOX_OUT_AREA, align 8
  %51 = load %struct.mbox_priv*, %struct.mbox_priv** %6, align 8
  %52 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %51, i32 0, i32 2
  %53 = call i32 @regmap_bulk_read(i32 %49, i64 %50, i32* %52, i32 4)
  %54 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %55 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* @MBOX_OUT_AREA, align 8
  %58 = add i64 %57, 4
  %59 = load %struct.mbox_priv*, %struct.mbox_priv** %6, align 8
  %60 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.mbox_priv*, %struct.mbox_priv** %6, align 8
  %63 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @regmap_bulk_read(i32 %56, i64 %58, i32* %61, i32 %64)
  %66 = load i32, i32* @IND_AX_MOUT, align 4
  %67 = load i32, i32* %7, align 4
  %68 = xor i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %70 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @write_ind_ap(i32 %71, i32 %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %46, %43, %40, %14
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @regmap_bulk_read(i32, i64, i32*, i32) #1

declare dso_local i32 @write_ind_ap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
