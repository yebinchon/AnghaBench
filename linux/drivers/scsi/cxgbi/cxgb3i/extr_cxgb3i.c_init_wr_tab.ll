; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_init_wr_tab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_init_wr_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@skb_wrs = common dso_local global i32* null, align 8
@SKB_WR_LIST_SIZE = common dso_local global i32 0, align 4
@wrlen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init_wr_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_wr_tab(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32*, i32** @skb_wrs, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %47

10:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %11

11:                                               ; preds = %41, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SKB_WR_LIST_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = mul nsw i32 3, %16
  %18 = sdiv i32 %17, 2
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 1
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 3
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %35

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 2
  %31 = load i32, i32* %2, align 4
  %32 = sub i32 %31, 1
  %33 = udiv i32 %30, %32
  %34 = add i32 1, %33
  br label %35

35:                                               ; preds = %28, %27
  %36 = phi i32 [ 1, %27 ], [ %34, %28 ]
  %37 = load i32*, i32** @skb_wrs, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %11

44:                                               ; preds = %11
  %45 = load i32, i32* %2, align 4
  %46 = mul i32 %45, 8
  store i32 %46, i32* @wrlen, align 4
  br label %47

47:                                               ; preds = %44, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
