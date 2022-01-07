; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_NCR5380.c_NCR5380_maybe_reset_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_NCR5380.c_NCR5380_maybe_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.NCR5380_hostdata = type { i32 }

@STATUS_REG = common dso_local global i32 0, align 4
@SR_BSY = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"SCSI bus busy, waiting up to five seconds\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"bus busy, attempting abort\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"bus busy, attempting reset\0A\00", align 1
@FLAG_TOSHIBA_DELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"bus locked solid\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @NCR5380_maybe_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR5380_maybe_reset_bus(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.NCR5380_hostdata*, align 8
  %5 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = call %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host* %6)
  store %struct.NCR5380_hostdata* %7, %struct.NCR5380_hostdata** %4, align 8
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %61, %1
  %9 = load i32, i32* @STATUS_REG, align 4
  %10 = call i32 @NCR5380_read(i32 %9)
  %11 = load i32, i32* @SR_BSY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 6
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i1 [ false, %8 ], [ %16, %14 ]
  br i1 %18, label %19, label %64

19:                                               ; preds = %17
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %60 [
    i32 1, label %21
    i32 3, label %21
    i32 5, label %21
    i32 2, label %31
    i32 4, label %37
    i32 6, label %54
  ]

21:                                               ; preds = %19, %19, %19
  %22 = load i32, i32* @KERN_ERR, align 4
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %24 = call i32 @shost_printk(i32 %22, %struct.Scsi_Host* %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %4, align 8
  %26 = load i32, i32* @STATUS_REG, align 4
  %27 = load i32, i32* @SR_BSY, align 4
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 5, %28
  %30 = call i32 @NCR5380_poll_politely(%struct.NCR5380_hostdata* %25, i32 %26, i32 %27, i32 0, i32 %29)
  br label %60

31:                                               ; preds = %19
  %32 = load i32, i32* @KERN_ERR, align 4
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %34 = call i32 @shost_printk(i32 %32, %struct.Scsi_Host* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %36 = call i32 @do_abort(%struct.Scsi_Host* %35)
  br label %60

37:                                               ; preds = %19
  %38 = load i32, i32* @KERN_ERR, align 4
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %40 = call i32 @shost_printk(i32 %38, %struct.Scsi_Host* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %42 = call i32 @do_reset(%struct.Scsi_Host* %41)
  %43 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %4, align 8
  %44 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FLAG_TOSHIBA_DELAY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = call i32 @msleep(i32 2500)
  br label %53

51:                                               ; preds = %37
  %52 = call i32 @msleep(i32 500)
  br label %53

53:                                               ; preds = %51, %49
  br label %60

54:                                               ; preds = %19
  %55 = load i32, i32* @KERN_ERR, align 4
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %57 = call i32 @shost_printk(i32 %55, %struct.Scsi_Host* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @ENXIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %65

60:                                               ; preds = %19, %53, %31, %21
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %8

64:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %54
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @NCR5380_read(i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32 @NCR5380_poll_politely(%struct.NCR5380_hostdata*, i32, i32, i32, i32) #1

declare dso_local i32 @do_abort(%struct.Scsi_Host*) #1

declare dso_local i32 @do_reset(%struct.Scsi_Host*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
