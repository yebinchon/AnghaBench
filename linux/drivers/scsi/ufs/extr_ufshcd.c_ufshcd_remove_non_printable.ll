; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_remove_non_printable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_remove_non_printable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @ufshcd_remove_non_printable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @ufshcd_remove_non_printable(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 32
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 126
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  br label %11

10:                                               ; preds = %5, %1
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 32, %10 ]
  %13 = trunc i32 %12 to i8
  ret i8 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
