; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mac53c94.c_mac53c94_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mac53c94.c_mac53c94_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_dev = type { i32 }
%struct.fsc_state = type { i32, i64, i64, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macio_dev*)* @mac53c94_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac53c94_remove(%struct.macio_dev* %0) #0 {
  %2 = alloca %struct.macio_dev*, align 8
  %3 = alloca %struct.fsc_state*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.macio_dev* %0, %struct.macio_dev** %2, align 8
  %5 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %6 = call i64 @macio_get_drvdata(%struct.macio_dev* %5)
  %7 = inttoptr i64 %6 to %struct.fsc_state*
  store %struct.fsc_state* %7, %struct.fsc_state** %3, align 8
  %8 = load %struct.fsc_state*, %struct.fsc_state** %3, align 8
  %9 = getelementptr inbounds %struct.fsc_state, %struct.fsc_state* %8, i32 0, i32 4
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = call i32 @scsi_remove_host(%struct.Scsi_Host* %11)
  %13 = load %struct.fsc_state*, %struct.fsc_state** %3, align 8
  %14 = getelementptr inbounds %struct.fsc_state, %struct.fsc_state* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.fsc_state*, %struct.fsc_state** %3, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.fsc_state* %16)
  %18 = load %struct.fsc_state*, %struct.fsc_state** %3, align 8
  %19 = getelementptr inbounds %struct.fsc_state, %struct.fsc_state* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.fsc_state*, %struct.fsc_state** %3, align 8
  %24 = getelementptr inbounds %struct.fsc_state, %struct.fsc_state* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @iounmap(i64 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.fsc_state*, %struct.fsc_state** %3, align 8
  %29 = getelementptr inbounds %struct.fsc_state, %struct.fsc_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.fsc_state*, %struct.fsc_state** %3, align 8
  %34 = getelementptr inbounds %struct.fsc_state, %struct.fsc_state* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @iounmap(i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.fsc_state*, %struct.fsc_state** %3, align 8
  %39 = getelementptr inbounds %struct.fsc_state, %struct.fsc_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @kfree(i32 %40)
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %43 = call i32 @scsi_host_put(%struct.Scsi_Host* %42)
  %44 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %45 = call i32 @macio_release_resources(%struct.macio_dev* %44)
  ret i32 0
}

declare dso_local i64 @macio_get_drvdata(%struct.macio_dev*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i32, %struct.fsc_state*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @macio_release_resources(%struct.macio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
