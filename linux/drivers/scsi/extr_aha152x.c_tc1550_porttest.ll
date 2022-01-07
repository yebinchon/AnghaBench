; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_tc1550_porttest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_tc1550_porttest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_TC_DMACNTRL1 = common dso_local global i64 0, align 8
@O_STACK = common dso_local global i64 0, align 8
@O_TC_STACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tc1550_porttest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc1550_porttest(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = load i64, i64* @O_TC_DMACNTRL1, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @SETPORT(i64 %7, i32 0)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %19, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @O_STACK, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @SETPORT(i64 %16, i32 %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %9

22:                                               ; preds = %9
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @O_TC_DMACNTRL1, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @SETPORT(i64 %26, i32 0)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %42, %22
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @O_TC_STACK, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @GETPORT(i64 %35)
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %31, %28
  %40 = phi i1 [ false, %28 ], [ %38, %31 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %28

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 16
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local i32 @SETPORT(i64, i32) #1

declare dso_local i32 @GETPORT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
