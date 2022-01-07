; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.h_is_hif_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.h_is_hif_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIF_EVENT_MASK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @is_hif_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_hif_conf(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* @HIF_EVENT_MASK, align 2
  %6 = zext i16 %5 to i32
  %7 = and i32 %4, %6
  %8 = load i16, i16* @HIF_EVENT_MASK, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load i16, i16* %2, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* @HIF_EVENT_MASK, align 2
  %15 = zext i16 %14 to i32
  %16 = xor i32 %15, -1
  %17 = and i32 %13, %16
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %11
  %20 = load i16, i16* %2, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @HIF_EVENT_MASK, align 2
  %23 = zext i16 %22 to i32
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  %26 = icmp slt i32 %25, 18
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i16, i16* %2, align 2
  %29 = call i32 @is_hif_ind(i16 zeroext %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %27, %19, %11, %1
  %33 = phi i1 [ false, %19 ], [ false, %11 ], [ false, %1 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @is_hif_ind(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
