; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_hmcdrv_cache.c_hmcdrv_cache_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_hmcdrv_cache.c_hmcdrv_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.hmcdrv_ftp_cmdspec = type { i64, i64, i32, i32, i32 }

@hmcdrv_cache_file = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"using cached content of '%s', returning %zd/%zd bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hmcdrv_ftp_cmdspec*)* @hmcdrv_cache_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmcdrv_cache_get(%struct.hmcdrv_ftp_cmdspec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hmcdrv_ftp_cmdspec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hmcdrv_ftp_cmdspec* %0, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %6 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %7 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 0), align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 5), align 8
  %13 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %14 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @strcmp(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %1
  store i32 -1, i32* %2, align 4
  br label %82

19:                                               ; preds = %11
  %20 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %21 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 1), align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %82

26:                                               ; preds = %19
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 2), align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @jiffies, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 6), align 4
  %32 = call i64 @time_after(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %26
  store i32 -1, i32* %2, align 4
  br label %82

35:                                               ; preds = %29
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 1), align 8
  %37 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %38 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %44 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %49 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %35
  %52 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %53 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 2), align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %51
  %60 = load i64, i64* %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 3), align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %68 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 4), align 8
  %71 = load i64, i64* %4, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @memcpy(i32 %69, i64 %72, i32 %73)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 5), align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 1), align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76, i32 %78)
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %59, %51
  store i32 -1, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %66, %34, %25, %18
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
