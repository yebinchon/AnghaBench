; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.pm3_par* }
%struct.pm3_par = type { i32 }

@PM3FilterMode = common dso_local global i32 0, align 4
@PM3FilterModeSync = common dso_local global i32 0, align 4
@PM3Sync = common dso_local global i32 0, align 4
@PM3OutFIFOWords = common dso_local global i32 0, align 4
@PM3OutputFifo = common dso_local global i32 0, align 4
@PM3Sync_Tag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @pm3fb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3fb_sync(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pm3_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 0
  %6 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  store %struct.pm3_par* %6, %struct.pm3_par** %3, align 8
  %7 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %8 = call i32 @PM3_WAIT(%struct.pm3_par* %7, i32 2)
  %9 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %10 = load i32, i32* @PM3FilterMode, align 4
  %11 = load i32, i32* @PM3FilterModeSync, align 4
  %12 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %9, i32 %10, i32 %11)
  %13 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %14 = load i32, i32* @PM3Sync, align 4
  %15 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %13, i32 %14, i32 0)
  %16 = call i32 (...) @mb()
  br label %17

17:                                               ; preds = %26, %1
  br label %18

18:                                               ; preds = %23, %17
  %19 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %20 = load i32, i32* @PM3OutFIFOWords, align 4
  %21 = call i64 @PM3_READ_REG(%struct.pm3_par* %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (...) @cpu_relax()
  br label %18

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %28 = load i32, i32* @PM3OutputFifo, align 4
  %29 = call i64 @PM3_READ_REG(%struct.pm3_par* %27, i32 %28)
  %30 = load i64, i64* @PM3Sync_Tag, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %17, label %32

32:                                               ; preds = %26
  ret i32 0
}

declare dso_local i32 @PM3_WAIT(%struct.pm3_par*, i32) #1

declare dso_local i32 @PM3_WRITE_REG(%struct.pm3_par*, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @PM3_READ_REG(%struct.pm3_par*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
