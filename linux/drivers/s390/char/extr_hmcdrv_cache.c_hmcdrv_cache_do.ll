; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_hmcdrv_cache.c_hmcdrv_cache_do.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_hmcdrv_cache.c_hmcdrv_cache_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i64 }
%struct.hmcdrv_ftp_cmdspec = type { i64, i32, i32, i32, i32 }

@hmcdrv_cache_file = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"caching %zd bytes content for '%s'\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HMCDRV_CACHE_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@HMCDRV_FTP_FIDENT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"caching cmd %d, file size %zu for '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hmcdrv_ftp_cmdspec*, i64 (%struct.hmcdrv_ftp_cmdspec*, i32*)*)* @hmcdrv_cache_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hmcdrv_cache_do(%struct.hmcdrv_ftp_cmdspec* %0, i64 (%struct.hmcdrv_ftp_cmdspec*, i32*)* %1) #0 {
  %3 = alloca %struct.hmcdrv_ftp_cmdspec*, align 8
  %4 = alloca i64 (%struct.hmcdrv_ftp_cmdspec*, i32*)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hmcdrv_ftp_cmdspec, align 8
  store %struct.hmcdrv_ftp_cmdspec* %0, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  store i64 (%struct.hmcdrv_ftp_cmdspec*, i32*)* %1, i64 (%struct.hmcdrv_ftp_cmdspec*, i32*)** %4, align 8
  %7 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %8 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %61

11:                                               ; preds = %2
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 0), align 8
  %13 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %14 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %11
  %18 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %19 = bitcast %struct.hmcdrv_ftp_cmdspec* %6 to i8*
  %20 = bitcast %struct.hmcdrv_ftp_cmdspec* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 24, i1 false)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 5), align 8
  %22 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %6, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 0), align 8
  %24 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %6, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load i64 (%struct.hmcdrv_ftp_cmdspec*, i32*)*, i64 (%struct.hmcdrv_ftp_cmdspec*, i32*)** %4, align 8
  %26 = call i64 %25(%struct.hmcdrv_ftp_cmdspec* %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 2))
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %17
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %32 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %33)
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %37 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %42 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %40, %29
  %45 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %46 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 1), align 8
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i32, i32* @HMCDRV_CACHE_TIMEOUT, align 4
  %50 = load i32, i32* @HZ, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  store i64 %53, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 6), align 8
  %54 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %55 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 5), align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @memcpy(i32 %56, i32 %57, i64 %58)
  br label %60

60:                                               ; preds = %44, %17
  br label %65

61:                                               ; preds = %11, %2
  %62 = load i64 (%struct.hmcdrv_ftp_cmdspec*, i32*)*, i64 (%struct.hmcdrv_ftp_cmdspec*, i32*)** %4, align 8
  %63 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %64 = call i64 %62(%struct.hmcdrv_ftp_cmdspec* %63, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 2))
  store i64 %64, i64* %5, align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 1), align 8
  br label %65

65:                                               ; preds = %61, %60
  %66 = load i64, i64* %5, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 4), align 4
  %70 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %71 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @HMCDRV_FTP_FIDENT_MAX, align 4
  %74 = call i32 @strlcpy(i32 %69, i32 %72, i32 %73)
  %75 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %76 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 3), align 8
  %78 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %79 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hmcdrv_cache_file, i32 0, i32 2), align 4
  %83 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %84 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %81, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %68, %65
  %88 = load i64, i64* %5, align 8
  ret i64 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, ...) #2

declare dso_local i32 @memcpy(i32, i32, i64) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
