; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_find_throttle_cfg_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_find_throttle_cfg_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soctherm_throt_cfg = type { i64 }
%struct.tegra_soctherm = type { %struct.soctherm_throt_cfg* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.soctherm_throt_cfg* (%struct.tegra_soctherm*, i8*)* @find_throttle_cfg_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.soctherm_throt_cfg* @find_throttle_cfg_by_name(%struct.tegra_soctherm* %0, i8* %1) #0 {
  %3 = alloca %struct.soctherm_throt_cfg*, align 8
  %4 = alloca %struct.tegra_soctherm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_soctherm* %0, %struct.tegra_soctherm** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %37, %2
  %8 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %8, i32 0, i32 0
  %10 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %10, i64 %12
  %14 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %7
  %18 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %18, i32 0, i32 0
  %20 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %20, i64 %22
  %24 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcmp(i64 %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %17
  %30 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %4, align 8
  %31 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %30, i32 0, i32 0
  %32 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %32, i64 %34
  store %struct.soctherm_throt_cfg* %35, %struct.soctherm_throt_cfg** %3, align 8
  br label %41

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %7

40:                                               ; preds = %7
  store %struct.soctherm_throt_cfg* null, %struct.soctherm_throt_cfg** %3, align 8
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %3, align 8
  ret %struct.soctherm_throt_cfg* %42
}

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
