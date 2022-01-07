; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_handle_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }
%struct.pm8001_work = type { i32, i32, i8*, %struct.pm8001_hba_info* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@pm8001_work_fn = common dso_local global i32 0, align 4
@pm8001_wq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_handle_event(%struct.pm8001_hba_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pm8001_work*, align 8
  %8 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.pm8001_work* @kmalloc(i32 24, i32 %9)
  store %struct.pm8001_work* %10, %struct.pm8001_work** %7, align 8
  %11 = load %struct.pm8001_work*, %struct.pm8001_work** %7, align 8
  %12 = icmp ne %struct.pm8001_work* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %15 = load %struct.pm8001_work*, %struct.pm8001_work** %7, align 8
  %16 = getelementptr inbounds %struct.pm8001_work, %struct.pm8001_work* %15, i32 0, i32 3
  store %struct.pm8001_hba_info* %14, %struct.pm8001_hba_info** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.pm8001_work*, %struct.pm8001_work** %7, align 8
  %19 = getelementptr inbounds %struct.pm8001_work, %struct.pm8001_work* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.pm8001_work*, %struct.pm8001_work** %7, align 8
  %22 = getelementptr inbounds %struct.pm8001_work, %struct.pm8001_work* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pm8001_work*, %struct.pm8001_work** %7, align 8
  %24 = getelementptr inbounds %struct.pm8001_work, %struct.pm8001_work* %23, i32 0, i32 1
  %25 = load i32, i32* @pm8001_work_fn, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load i32, i32* @pm8001_wq, align 4
  %28 = load %struct.pm8001_work*, %struct.pm8001_work** %7, align 8
  %29 = getelementptr inbounds %struct.pm8001_work, %struct.pm8001_work* %28, i32 0, i32 1
  %30 = call i32 @queue_work(i32 %27, i32* %29)
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %13
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local %struct.pm8001_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
