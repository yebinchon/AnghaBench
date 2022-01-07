; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_suspend_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_suspend_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.wsm_suspend_resume = type { i64, i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"[AP] %s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unicast\00", align 1
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_suspend_resume(%struct.cw1200_common* %0, %struct.wsm_suspend_resume* %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca %struct.wsm_suspend_resume*, align 8
  %5 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store %struct.wsm_suspend_resume* %1, %struct.wsm_suspend_resume** %4, align 8
  %6 = load %struct.wsm_suspend_resume*, %struct.wsm_suspend_resume** %4, align 8
  %7 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %12 = load %struct.wsm_suspend_resume*, %struct.wsm_suspend_resume** %4, align 8
  %13 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %17)
  %19 = load %struct.wsm_suspend_resume*, %struct.wsm_suspend_resume** %4, align 8
  %20 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %82

23:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %24 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %25 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %24, i32 0, i32 3
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.wsm_suspend_resume*, %struct.wsm_suspend_resume** %4, align 8
  %28 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %33 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %71

34:                                               ; preds = %23
  %35 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %36 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %35, i32 0, i32 7
  %37 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %38 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %41 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 20
  %44 = mul nsw i32 %39, %43
  %45 = load i32, i32* @HZ, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %46, 1024
  %48 = call i32 @cw1200_pm_stay_awake(i32* %36, i32 %47)
  %49 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %50 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %34
  %54 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %55 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %53, %34
  %59 = phi i1 [ false, %34 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  %61 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %62 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %64 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  %68 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %69 = call i32 @cw1200_bh_wakeup(%struct.cw1200_common* %68)
  br label %70

70:                                               ; preds = %67, %58
  br label %71

71:                                               ; preds = %70, %31
  %72 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %73 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %72, i32 0, i32 3
  %74 = call i32 @spin_unlock_bh(i32* %73)
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %79 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %78, i32 0, i32 4
  %80 = call i32 @del_timer_sync(i32* %79)
  br label %81

81:                                               ; preds = %77, %71
  br label %105

82:                                               ; preds = %2
  %83 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %84 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %83, i32 0, i32 3
  %85 = call i32 @spin_lock_bh(i32* %84)
  %86 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %87 = load %struct.wsm_suspend_resume*, %struct.wsm_suspend_resume** %4, align 8
  %88 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.wsm_suspend_resume*, %struct.wsm_suspend_resume** %4, align 8
  %91 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @cw1200_ps_notify(%struct.cw1200_common* %86, i32 %89, i64 %92)
  %94 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %95 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %94, i32 0, i32 3
  %96 = call i32 @spin_unlock_bh(i32* %95)
  %97 = load %struct.wsm_suspend_resume*, %struct.wsm_suspend_resume** %4, align 8
  %98 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %82
  %102 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %103 = call i32 @cw1200_bh_wakeup(%struct.cw1200_common* %102)
  br label %104

104:                                              ; preds = %101, %82
  br label %105

105:                                              ; preds = %104, %81
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cw1200_pm_stay_awake(i32*, i32) #1

declare dso_local i32 @cw1200_bh_wakeup(%struct.cw1200_common*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cw1200_ps_notify(%struct.cw1200_common*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
