; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_calc_mss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_calc_mss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCP_HDR_LEN = common dso_local global i64 0, align 8
@IPV6_HDR_LEN = common dso_local global i64 0, align 8
@IPV4_HDR_LEN = common dso_local global i64 0, align 8
@DEF_MSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64)* @qedi_calc_mss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qedi_calc_mss(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i64, i64* @TCP_HDR_LEN, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i64, i64* @IPV6_HDR_LEN, align 8
  %16 = load i64, i64* %10, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %10, align 8
  br label %22

18:                                               ; preds = %4
  %19 = load i64, i64* @IPV4_HDR_LEN, align 8
  %20 = load i64, i64* %10, align 8
  %21 = add nsw i64 %20, %19
  store i64 %21, i64* %10, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %10, align 8
  %25 = sub nsw i64 %23, %24
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i64, i64* @DEF_MSS, align 8
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i64, i64* %9, align 8
  ret i64 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
