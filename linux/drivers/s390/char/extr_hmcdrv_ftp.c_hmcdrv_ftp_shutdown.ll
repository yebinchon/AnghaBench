; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_hmcdrv_ftp.c_hmcdrv_ftp_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_hmcdrv_ftp.c_hmcdrv_ftp_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@hmcdrv_ftp_mutex = common dso_local global i32 0, align 4
@hmcdrv_ftp_refcnt = common dso_local global i64 0, align 8
@hmcdrv_ftp_funcs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hmcdrv_ftp_shutdown() #0 {
  %1 = call i32 @mutex_lock(i32* @hmcdrv_ftp_mutex)
  %2 = load i64, i64* @hmcdrv_ftp_refcnt, align 8
  %3 = add nsw i64 %2, -1
  store i64 %3, i64* @hmcdrv_ftp_refcnt, align 8
  %4 = load i64, i64* @hmcdrv_ftp_refcnt, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hmcdrv_ftp_funcs, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hmcdrv_ftp_funcs, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (...)*, i32 (...)** %11, align 8
  %13 = call i32 (...) %12()
  br label %14

14:                                               ; preds = %9, %6, %0
  %15 = call i32 @mutex_unlock(i32* @hmcdrv_ftp_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
