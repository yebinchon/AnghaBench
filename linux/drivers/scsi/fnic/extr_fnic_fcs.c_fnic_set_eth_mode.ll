; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_set_eth_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_set_eth_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fnic*)* @fnic_set_eth_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_set_eth_mode(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  %6 = load %struct.fnic*, %struct.fnic** %2, align 8
  %7 = getelementptr inbounds %struct.fnic, %struct.fnic* %6, i32 0, i32 1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  br label %10

10:                                               ; preds = %33, %1
  %11 = load %struct.fnic*, %struct.fnic** %2, align 8
  %12 = getelementptr inbounds %struct.fnic, %struct.fnic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %16 [
    i32 129, label %15
    i32 130, label %15
    i32 128, label %42
    i32 131, label %42
  ]

15:                                               ; preds = %10, %10
  br label %16

16:                                               ; preds = %10, %15
  %17 = load %struct.fnic*, %struct.fnic** %2, align 8
  %18 = getelementptr inbounds %struct.fnic, %struct.fnic* %17, i32 0, i32 0
  store i32 128, i32* %18, align 4
  %19 = load %struct.fnic*, %struct.fnic** %2, align 8
  %20 = getelementptr inbounds %struct.fnic, %struct.fnic* %19, i32 0, i32 1
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.fnic*, %struct.fnic** %2, align 8
  %24 = call i32 @fnic_fw_reset_handler(%struct.fnic* %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.fnic*, %struct.fnic** %2, align 8
  %26 = getelementptr inbounds %struct.fnic, %struct.fnic* %25, i32 0, i32 1
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.fnic*, %struct.fnic** %2, align 8
  %30 = getelementptr inbounds %struct.fnic, %struct.fnic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 128
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %10

34:                                               ; preds = %16
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.fnic*, %struct.fnic** %2, align 8
  %40 = getelementptr inbounds %struct.fnic, %struct.fnic* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %34
  br label %43

42:                                               ; preds = %10, %10
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.fnic*, %struct.fnic** %2, align 8
  %45 = getelementptr inbounds %struct.fnic, %struct.fnic* %44, i32 0, i32 1
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fnic_fw_reset_handler(%struct.fnic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
