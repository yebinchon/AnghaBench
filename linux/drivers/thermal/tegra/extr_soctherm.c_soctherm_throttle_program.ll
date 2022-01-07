; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_throttle_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_throttle_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_soctherm = type { i64, %struct.TYPE_2__*, %struct.soctherm_throt_cfg* }
%struct.TYPE_2__ = type { i64 }
%struct.soctherm_throt_cfg = type { i64, i32 }

@THROTTLE_OC1 = common dso_local global i32 0, align 4
@THROT_PRIORITY_LITE_PRIO_MASK = common dso_local global i32 0, align 4
@THROT_DELAY_LITE_DELAY_MASK = common dso_local global i32 0, align 4
@THROT_PRIORITY_LOCK = common dso_local global i64 0, align 8
@THROT_PRIORITY_LOCK_PRIORITY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_soctherm*, i32)* @soctherm_throttle_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soctherm_throttle_program(%struct.tegra_soctherm* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_soctherm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.soctherm_throt_cfg, align 8
  store %struct.tegra_soctherm* %0, %struct.tegra_soctherm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %7, i32 0, i32 2
  %9 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %9, i64 %11
  %13 = bitcast %struct.soctherm_throt_cfg* %6 to i8*
  %14 = bitcast %struct.soctherm_throt_cfg* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %6, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %96

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @THROTTLE_OC1, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @soctherm_oc_cfg_program(%struct.tegra_soctherm* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %96

29:                                               ; preds = %23, %19
  %30 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @throttlectl_cpu_level_select(%struct.tegra_soctherm* %37, i32 %38)
  br label %44

40:                                               ; preds = %29
  %41 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @throttlectl_cpu_mn(%struct.tegra_soctherm* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @throttlectl_gpu_level_select(%struct.tegra_soctherm* %45, i32 %46)
  %48 = load i32, i32* @THROT_PRIORITY_LITE_PRIO_MASK, align 4
  %49 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %6, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @REG_SET_MASK(i32 0, i32 %48, i64 %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %54 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @THROT_PRIORITY_CTRL(i32 %56)
  %58 = add nsw i64 %55, %57
  %59 = call i32 @writel(i64 %52, i64 %58)
  %60 = load i32, i32* @THROT_DELAY_LITE_DELAY_MASK, align 4
  %61 = call i64 @REG_SET_MASK(i32 0, i32 %60, i64 0)
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %64 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i64 @THROT_DELAY_CTRL(i32 %66)
  %68 = add nsw i64 %65, %67
  %69 = call i32 @writel(i64 %62, i64 %68)
  %70 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %71 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @THROT_PRIORITY_LOCK, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i64 @readl(i64 %74)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i32, i32* @THROT_PRIORITY_LOCK_PRIORITY_MASK, align 4
  %78 = call i64 @REG_GET_MASK(i64 %76, i32 %77)
  store i64 %78, i64* %5, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %6, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %44
  br label %96

84:                                               ; preds = %44
  %85 = load i32, i32* @THROT_PRIORITY_LOCK_PRIORITY_MASK, align 4
  %86 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %6, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @REG_SET_MASK(i32 0, i32 %85, i64 %87)
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %91 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @THROT_PRIORITY_LOCK, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i64 %89, i64 %94)
  br label %96

96:                                               ; preds = %84, %83, %28, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @soctherm_oc_cfg_program(%struct.tegra_soctherm*, i32) #2

declare dso_local i32 @throttlectl_cpu_level_select(%struct.tegra_soctherm*, i32) #2

declare dso_local i32 @throttlectl_cpu_mn(%struct.tegra_soctherm*, i32) #2

declare dso_local i32 @throttlectl_gpu_level_select(%struct.tegra_soctherm*, i32) #2

declare dso_local i64 @REG_SET_MASK(i32, i32, i64) #2

declare dso_local i32 @writel(i64, i64) #2

declare dso_local i64 @THROT_PRIORITY_CTRL(i32) #2

declare dso_local i64 @THROT_DELAY_CTRL(i32) #2

declare dso_local i64 @readl(i64) #2

declare dso_local i64 @REG_GET_MASK(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
