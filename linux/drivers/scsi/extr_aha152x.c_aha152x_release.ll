; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_aha152x_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_aha152x_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@IO_RANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aha152x_release(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %3 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %4 = icmp ne %struct.Scsi_Host* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %37

6:                                                ; preds = %1
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %8 = call i32 @scsi_remove_host(%struct.Scsi_Host* %7)
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %10 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %18 = call i32 @free_irq(i64 %16, %struct.Scsi_Host* %17)
  br label %19

19:                                               ; preds = %13, %6
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @IO_RANGE, align 4
  %29 = call i32 @release_region(i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %32 = call %struct.TYPE_2__* @HOSTDATA(%struct.Scsi_Host* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @list_del(i32* %33)
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %36 = call i32 @scsi_host_put(%struct.Scsi_Host* %35)
  br label %37

37:                                               ; preds = %30, %5
  ret void
}

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i64, %struct.Scsi_Host*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.TYPE_2__* @HOSTDATA(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
