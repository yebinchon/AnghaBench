; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_hmcdrv_ftp.c_hmcdrv_ftp_do.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_hmcdrv_ftp.c_hmcdrv_ftp_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hmcdrv_ftp_cmdspec = type { i32, i64, i32, i32 }

@hmcdrv_ftp_mutex = common dso_local global i32 0, align 4
@hmcdrv_ftp_funcs = common dso_local global %struct.TYPE_2__* null, align 8
@hmcdrv_ftp_refcnt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"starting transfer, cmd %d for '%s' at %lld with %zd bytes\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hmcdrv_ftp_do(%struct.hmcdrv_ftp_cmdspec* %0) #0 {
  %2 = alloca %struct.hmcdrv_ftp_cmdspec*, align 8
  %3 = alloca i32, align 4
  store %struct.hmcdrv_ftp_cmdspec* %0, %struct.hmcdrv_ftp_cmdspec** %2, align 8
  %4 = call i32 @mutex_lock(i32* @hmcdrv_ftp_mutex)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hmcdrv_ftp_funcs, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load i64, i64* @hmcdrv_ftp_refcnt, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %2, align 8
  %12 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %2, align 8
  %15 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %2, align 8
  %18 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %2, align 8
  %21 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i64 %19, i32 %22)
  %24 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %2, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hmcdrv_ftp_funcs, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hmcdrv_cache_cmd(%struct.hmcdrv_ftp_cmdspec* %24, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %7, %1
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %10
  %33 = call i32 @mutex_unlock(i32* @hmcdrv_ftp_mutex)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @hmcdrv_cache_cmd(%struct.hmcdrv_ftp_cmdspec*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
