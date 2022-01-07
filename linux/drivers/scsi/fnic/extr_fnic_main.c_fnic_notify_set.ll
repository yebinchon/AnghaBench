; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_main.c_fnic_notify_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_main.c_fnic_notify_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FNIC_INTX_NOTIFY = common dso_local global i32 0, align 4
@FNIC_MSIX_ERR_NOTIFY = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Interrupt mode should be set up before devcmd notify set %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fnic*)* @fnic_notify_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_notify_set(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  %3 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  %4 = load %struct.fnic*, %struct.fnic** %2, align 8
  %5 = getelementptr inbounds %struct.fnic, %struct.fnic* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @vnic_dev_get_intr_mode(i32 %6)
  switch i32 %7, label %25 [
    i32 130, label %8
    i32 129, label %14
    i32 128, label %19
  ]

8:                                                ; preds = %1
  %9 = load %struct.fnic*, %struct.fnic** %2, align 8
  %10 = getelementptr inbounds %struct.fnic, %struct.fnic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FNIC_INTX_NOTIFY, align 4
  %13 = call i32 @vnic_dev_notify_set(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.fnic*, %struct.fnic** %2, align 8
  %16 = getelementptr inbounds %struct.fnic, %struct.fnic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @vnic_dev_notify_set(i32 %17, i32 -1)
  store i32 %18, i32* %3, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.fnic*, %struct.fnic** %2, align 8
  %21 = getelementptr inbounds %struct.fnic, %struct.fnic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FNIC_MSIX_ERR_NOTIFY, align 4
  %24 = call i32 @vnic_dev_notify_set(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %37

25:                                               ; preds = %1
  %26 = load i32, i32* @KERN_ERR, align 4
  %27 = load %struct.fnic*, %struct.fnic** %2, align 8
  %28 = getelementptr inbounds %struct.fnic, %struct.fnic* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fnic*, %struct.fnic** %2, align 8
  %33 = getelementptr inbounds %struct.fnic, %struct.fnic* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @vnic_dev_get_intr_mode(i32 %34)
  %36 = call i32 @shost_printk(i32 %26, i32 %31, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %3, align 4
  br label %37

37:                                               ; preds = %25, %19, %14, %8
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @vnic_dev_notify_set(i32, i32) #1

declare dso_local i32 @shost_printk(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
