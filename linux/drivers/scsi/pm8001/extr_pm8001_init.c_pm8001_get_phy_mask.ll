; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_get_phy_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_get_phy_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unknown subsystem device=0x%.04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i32*)* @pm8001_get_phy_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_get_phy_mask(%struct.pm8001_hba_info* %0, i32* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %6 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %20 [
    i32 112, label %10
    i32 114, label %10
    i32 113, label %12
    i32 115, label %12
    i32 128, label %14
    i32 129, label %16
    i32 130, label %18
  ]

10:                                               ; preds = %2, %2
  %11 = load i32*, i32** %4, align 8
  store i32 0, i32* %11, align 4
  br label %29

12:                                               ; preds = %2, %2
  %13 = load i32*, i32** %4, align 8
  store i32 65535, i32* %13, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  store i32 240, i32* %15, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  store i32 4080, i32* %17, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  store i32 65280, i32* %19, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %23 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %21, i32 %27)
  br label %29

29:                                               ; preds = %20, %18, %16, %14, %12, %10
  ret void
}

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
