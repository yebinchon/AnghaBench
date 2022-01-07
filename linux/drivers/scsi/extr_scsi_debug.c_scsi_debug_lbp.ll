; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_scsi_debug_lbp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_scsi_debug_lbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdebug_fake_rw = common dso_local global i64 0, align 8
@sdebug_lbpu = common dso_local global i64 0, align 8
@sdebug_lbpws = common dso_local global i64 0, align 8
@sdebug_lbpws10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @scsi_debug_lbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_debug_lbp() #0 {
  %1 = load i64, i64* @sdebug_fake_rw, align 8
  %2 = icmp eq i64 0, %1
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = load i64, i64* @sdebug_lbpu, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load i64, i64* @sdebug_lbpws, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i64, i64* @sdebug_lbpws10, align 8
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %9, %6, %3
  %13 = phi i1 [ true, %6 ], [ true, %3 ], [ %11, %9 ]
  br label %14

14:                                               ; preds = %12, %0
  %15 = phi i1 [ false, %0 ], [ %13, %12 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
