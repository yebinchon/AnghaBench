; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_log.c_translate_esas2r_event_level_to_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_log.c_translate_esas2r_event_level_to_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_CRIT = common dso_local global i8* null, align 8
@KERN_WARNING = common dso_local global i8* null, align 8
@KERN_INFO = common dso_local global i8* null, align 8
@KERN_DEBUG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @translate_esas2r_event_level_to_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @translate_esas2r_event_level_to_kernel(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  switch i64 %4, label %12 [
    i64 132, label %5
    i64 128, label %7
    i64 130, label %9
    i64 131, label %11
    i64 129, label %11
  ]

5:                                                ; preds = %1
  %6 = load i8*, i8** @KERN_CRIT, align 8
  store i8* %6, i8** %2, align 8
  br label %14

7:                                                ; preds = %1
  %8 = load i8*, i8** @KERN_WARNING, align 8
  store i8* %8, i8** %2, align 8
  br label %14

9:                                                ; preds = %1
  %10 = load i8*, i8** @KERN_INFO, align 8
  store i8* %10, i8** %2, align 8
  br label %14

11:                                               ; preds = %1, %1
  br label %12

12:                                               ; preds = %1, %11
  %13 = load i8*, i8** @KERN_DEBUG, align 8
  store i8* %13, i8** %2, align 8
  br label %14

14:                                               ; preds = %12, %9, %7, %5
  %15 = load i8*, i8** %2, align 8
  ret i8* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
