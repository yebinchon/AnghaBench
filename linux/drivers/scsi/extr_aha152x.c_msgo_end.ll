; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_msgo_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_msgo_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@MSGO_I = common dso_local global i64 0, align 8
@MSGOLEN = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@CURRENT_SC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"message sent incompletely (%d/%d)\0A\00", align 1
@SYNCNEG = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Synchronous Data Transfer Request was rejected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @msgo_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgo_end(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %3 = load i64, i64* @MSGO_I, align 8
  %4 = load i64, i64* @MSGOLEN, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, i32* @KERN_ERR, align 4
  %8 = load i32, i32* @CURRENT_SC, align 4
  %9 = load i64, i64* @MSGO_I, align 8
  %10 = load i64, i64* @MSGOLEN, align 8
  %11 = call i32 (i32, i32, i8*, ...) @scmd_printk(i32 %7, i32 %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %10)
  %12 = load i32, i32* @SYNCNEG, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = load i32, i32* @KERN_INFO, align 4
  %16 = load i32, i32* @CURRENT_SC, align 4
  %17 = call i32 (i32, i32, i8*, ...) @scmd_printk(i32 %15, i32 %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* @SYNCNEG, align 4
  br label %18

18:                                               ; preds = %14, %6
  br label %19

19:                                               ; preds = %18, %1
  store i64 0, i64* @MSGO_I, align 8
  store i64 0, i64* @MSGOLEN, align 8
  ret void
}

declare dso_local i32 @scmd_printk(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
