; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_bpmp_probe_powergates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_bpmp_probe_powergates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.tegra_powergate_info = type { i8*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"maximum powergate ID: %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"holes: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*, %struct.tegra_powergate_info**)* @tegra_bpmp_probe_powergates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_probe_powergates(%struct.tegra_bpmp* %0, %struct.tegra_powergate_info** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca %struct.tegra_powergate_info**, align 8
  %6 = alloca %struct.tegra_powergate_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tegra_powergate_info*, align 8
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %4, align 8
  store %struct.tegra_powergate_info** %1, %struct.tegra_powergate_info*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %14 = call i32 @tegra_bpmp_powergate_get_max_id(%struct.tegra_bpmp* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %3, align 4
  br label %83

19:                                               ; preds = %2
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, 1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.tegra_powergate_info* @kcalloc(i32 %27, i32 16, i32 %28)
  store %struct.tegra_powergate_info* %29, %struct.tegra_powergate_info** %6, align 8
  %30 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %6, align 8
  %31 = icmp ne %struct.tegra_powergate_info* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %83

35:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %71, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %36
  %41 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.tegra_powergate_info, %struct.tegra_powergate_info* %41, i64 %43
  store %struct.tegra_powergate_info* %44, %struct.tegra_powergate_info** %12, align 8
  %45 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @tegra_bpmp_powergate_get_name(%struct.tegra_bpmp* %45, i32 %46)
  %48 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %12, align 8
  %49 = getelementptr inbounds %struct.tegra_powergate_info, %struct.tegra_powergate_info* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %12, align 8
  %51 = getelementptr inbounds %struct.tegra_powergate_info, %struct.tegra_powergate_info* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %40
  %55 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %12, align 8
  %56 = getelementptr inbounds %struct.tegra_powergate_info, %struct.tegra_powergate_info* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54, %40
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %71

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %12, align 8
  %68 = getelementptr inbounds %struct.tegra_powergate_info, %struct.tegra_powergate_info* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %65, %62
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %36

74:                                               ; preds = %36
  %75 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %76 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.tegra_powergate_info*, %struct.tegra_powergate_info** %6, align 8
  %81 = load %struct.tegra_powergate_info**, %struct.tegra_powergate_info*** %5, align 8
  store %struct.tegra_powergate_info* %80, %struct.tegra_powergate_info** %81, align 8
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %74, %32, %17
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @tegra_bpmp_powergate_get_max_id(%struct.tegra_bpmp*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local %struct.tegra_powergate_info* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @tegra_bpmp_powergate_get_name(%struct.tegra_bpmp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
