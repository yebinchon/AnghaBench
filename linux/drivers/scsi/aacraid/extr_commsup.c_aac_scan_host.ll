; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_scan_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_scan_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_scan_host(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %5 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %8 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %13 = call i32 @aac_scan_safw_host(%struct.aac_dev* %12)
  store i32 %13, i32* %3, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %16 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @scsi_scan_host(i32 %17)
  br label %19

19:                                               ; preds = %14, %11
  %20 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %21 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @aac_scan_safw_host(%struct.aac_dev*) #1

declare dso_local i32 @scsi_scan_host(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
