; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_53c700.h_NCR_700_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_53c700.h_NCR_700_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64* }
%struct.NCR_700_Host_Parameters = type { i32 }

@bEBus = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32)* @NCR_700_readl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR_700_readl(%struct.Scsi_Host* %0, i32 %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.NCR_700_Host_Parameters*, align 8
  %6 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.NCR_700_Host_Parameters*
  store %struct.NCR_700_Host_Parameters* %12, %struct.NCR_700_Host_Parameters** %5, align 8
  %13 = load i64, i64* @bEBus, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.NCR_700_Host_Parameters*, %struct.NCR_700_Host_Parameters** %5, align 8
  %17 = getelementptr inbounds %struct.NCR_700_Host_Parameters, %struct.NCR_700_Host_Parameters* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @ioread32be(i32 %20)
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.NCR_700_Host_Parameters*, %struct.NCR_700_Host_Parameters** %5, align 8
  %24 = getelementptr inbounds %struct.NCR_700_Host_Parameters, %struct.NCR_700_Host_Parameters* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @ioread32(i32 %27)
  br label %29

29:                                               ; preds = %22, %15
  %30 = phi i32 [ %21, %15 ], [ %28, %22 ]
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 3
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @ioread32be(i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
