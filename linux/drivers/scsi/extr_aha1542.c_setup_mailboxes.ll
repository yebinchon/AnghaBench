; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_setup_mailboxes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_setup_mailboxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.aha1542_hostdata = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32*, i64 }

@CMD_MBINIT = common dso_local global i32 0, align 4
@AHA1542_MAILBOXES = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed setting up mailboxes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @setup_mailboxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_mailboxes(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.aha1542_hostdata*, align 8
  %4 = alloca [5 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %7 = call %struct.aha1542_hostdata* @shost_priv(%struct.Scsi_Host* %6)
  store %struct.aha1542_hostdata* %7, %struct.aha1542_hostdata** %3, align 8
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %9 = load i32, i32* @CMD_MBINIT, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @AHA1542_MAILBOXES, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 0, i32* %14, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %52, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @AHA1542_MAILBOXES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %15
  %20 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %3, align 8
  %21 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %3, align 8
  %28 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %3, align 8
  %36 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = add i64 %37, %40
  %42 = call i32 @any2scsi(i32* %34, i64 %41)
  %43 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %3, align 8
  %44 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* @AHA1542_MAILBOXES, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %19
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %15

55:                                               ; preds = %15
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @aha1542_intr_reset(i32 %58)
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %3, align 8
  %63 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @any2scsi(i32* %61, i64 %64)
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %67 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %70 = call i64 @aha1542_out(i32 %68, i32* %69, i32 5)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %55
  %73 = load i32, i32* @KERN_ERR, align 4
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %75 = call i32 @shost_printk(i32 %73, %struct.Scsi_Host* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %55
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %78 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @aha1542_intr_reset(i32 %79)
  ret void
}

declare dso_local %struct.aha1542_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @any2scsi(i32*, i64) #1

declare dso_local i32 @aha1542_intr_reset(i32) #1

declare dso_local i64 @aha1542_out(i32, i32*, i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
