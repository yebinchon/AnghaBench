; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_do_scsi_scan_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_do_scsi_scan_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.Scsi_Host*, i64)*, i32 (%struct.Scsi_Host*)* }

@jiffies = common dso_local global i64 0, align 8
@SCAN_WILD_CARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @do_scsi_scan_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_scsi_scan_host(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.Scsi_Host*, i64)*, i32 (%struct.Scsi_Host*, i64)** %7, align 8
  %9 = icmp ne i32 (%struct.Scsi_Host*, i64)* %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %1
  %11 = load i64, i64* @jiffies, align 8
  store i64 %11, i64* %3, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %15, align 8
  %17 = icmp ne i32 (%struct.Scsi_Host*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %22, align 8
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %25 = call i32 %23(%struct.Scsi_Host* %24)
  br label %26

26:                                               ; preds = %18, %10
  br label %27

27:                                               ; preds = %40, %26
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.Scsi_Host*, i64)*, i32 (%struct.Scsi_Host*, i64)** %31, align 8
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* %3, align 8
  %36 = sub i64 %34, %35
  %37 = call i32 %32(%struct.Scsi_Host* %33, i64 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = call i32 @msleep(i32 10)
  br label %27

42:                                               ; preds = %27
  br label %49

43:                                               ; preds = %1
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %45 = load i32, i32* @SCAN_WILD_CARD, align 4
  %46 = load i32, i32* @SCAN_WILD_CARD, align 4
  %47 = load i32, i32* @SCAN_WILD_CARD, align 4
  %48 = call i32 @scsi_scan_host_selected(%struct.Scsi_Host* %44, i32 %45, i32 %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %43, %42
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @scsi_scan_host_selected(%struct.Scsi_Host*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
