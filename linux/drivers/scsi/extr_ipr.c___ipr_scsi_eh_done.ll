; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c___ipr_scsi_eh_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c___ipr_scsi_eh_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_2__*, i32, i64, %struct.scsi_cmnd* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)* }

@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*)* @__ipr_scsi_eh_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ipr_scsi_eh_done(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %4 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %5 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %4, i32 0, i32 3
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  store %struct.scsi_cmnd* %6, %struct.scsi_cmnd** %3, align 8
  %7 = load i32, i32* @DID_ERROR, align 4
  %8 = shl i32 %7, 16
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %14 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %13, i32 0, i32 3
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %16 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %15)
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 1
  %19 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %18, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %21 = call i32 %19(%struct.scsi_cmnd* %20)
  %22 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %23 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %28 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @complete(i64 %29)
  br label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %33 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %32, i32 0, i32 1
  %34 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %35 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @list_add_tail(i32* %33, i32* %37)
  ret void
}

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
