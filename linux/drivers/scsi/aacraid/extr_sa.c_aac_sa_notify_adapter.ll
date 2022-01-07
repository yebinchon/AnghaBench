; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_sa.c_aac_sa_notify_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_sa.c_aac_sa_notify_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32 }

@DoorbellReg_s = common dso_local global i32 0, align 4
@DOORBELL_1 = common dso_local global i32 0, align 4
@DOORBELL_4 = common dso_local global i32 0, align 4
@DOORBELL_2 = common dso_local global i32 0, align 4
@DOORBELL_3 = common dso_local global i32 0, align 4
@DOORBELL_6 = common dso_local global i32 0, align 4
@DOORBELL_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*, i32)* @aac_sa_notify_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_sa_notify_adapter(%struct.aac_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %37 [
    i32 134, label %6
    i32 129, label %11
    i32 133, label %16
    i32 130, label %21
    i32 128, label %26
    i32 131, label %27
    i32 132, label %32
  ]

6:                                                ; preds = %2
  %7 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %8 = load i32, i32* @DoorbellReg_s, align 4
  %9 = load i32, i32* @DOORBELL_1, align 4
  %10 = call i32 @sa_writew(%struct.aac_dev* %7, i32 %8, i32 %9)
  br label %39

11:                                               ; preds = %2
  %12 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %13 = load i32, i32* @DoorbellReg_s, align 4
  %14 = load i32, i32* @DOORBELL_4, align 4
  %15 = call i32 @sa_writew(%struct.aac_dev* %12, i32 %13, i32 %14)
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %18 = load i32, i32* @DoorbellReg_s, align 4
  %19 = load i32, i32* @DOORBELL_2, align 4
  %20 = call i32 @sa_writew(%struct.aac_dev* %17, i32 %18, i32 %19)
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %23 = load i32, i32* @DoorbellReg_s, align 4
  %24 = load i32, i32* @DOORBELL_3, align 4
  %25 = call i32 @sa_writew(%struct.aac_dev* %22, i32 %23, i32 %24)
  br label %39

26:                                               ; preds = %2
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %29 = load i32, i32* @DoorbellReg_s, align 4
  %30 = load i32, i32* @DOORBELL_6, align 4
  %31 = call i32 @sa_writew(%struct.aac_dev* %28, i32 %29, i32 %30)
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %34 = load i32, i32* @DoorbellReg_s, align 4
  %35 = load i32, i32* @DOORBELL_5, align 4
  %36 = call i32 @sa_writew(%struct.aac_dev* %33, i32 %34, i32 %35)
  br label %39

37:                                               ; preds = %2
  %38 = call i32 (...) @BUG()
  br label %39

39:                                               ; preds = %37, %32, %27, %26, %21, %16, %11, %6
  ret void
}

declare dso_local i32 @sa_writew(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
