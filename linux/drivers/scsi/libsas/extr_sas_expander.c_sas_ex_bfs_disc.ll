; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_bfs_disc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_bfs_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_sas_port*)* @sas_ex_bfs_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_ex_bfs_disc(%struct.asd_sas_port* %0) #0 {
  %2 = alloca %struct.asd_sas_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.asd_sas_port* %0, %struct.asd_sas_port** %2, align 8
  br label %5

5:                                                ; preds = %14, %1
  %6 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %7 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @sas_ex_level_discovery(%struct.asd_sas_port* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = call i32 (...) @mb()
  br label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.asd_sas_port*, %struct.asd_sas_port** %2, align 8
  %17 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %5, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @sas_ex_level_discovery(%struct.asd_sas_port*, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
