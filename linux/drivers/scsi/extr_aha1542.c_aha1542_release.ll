; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i64, i64, i64, %struct.device* }
%struct.device = type { i32 }
%struct.aha1542_hostdata = type { i32, i32, i32, i32 }

@AHA1542_MAILBOXES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @aha1542_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha1542_release(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.aha1542_hostdata*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = call %struct.aha1542_hostdata* @shost_priv(%struct.Scsi_Host* %5)
  store %struct.aha1542_hostdata* %6, %struct.aha1542_hostdata** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 4
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %11 = call i32 @scsi_remove_host(%struct.Scsi_Host* %10)
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 255
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @free_dma(i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* @AHA1542_MAILBOXES, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %3, align 8
  %28 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %3, align 8
  %31 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dma_free_coherent(%struct.device* %22, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* @AHA1542_MAILBOXES, align 4
  %36 = mul nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %3, align 8
  %41 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %3, align 8
  %44 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dma_free_coherent(%struct.device* %34, i32 %39, i32 %42, i32 %45)
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %21
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %56 = call i32 @free_irq(i64 %54, %struct.Scsi_Host* %55)
  br label %57

57:                                               ; preds = %51, %21
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %64 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %69 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %72 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @release_region(i64 %70, i64 %73)
  br label %75

75:                                               ; preds = %67, %62, %57
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %77 = call i32 @scsi_host_put(%struct.Scsi_Host* %76)
  ret i32 0
}

declare dso_local %struct.aha1542_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_dma(i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.Scsi_Host*) #1

declare dso_local i32 @release_region(i64, i64) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
