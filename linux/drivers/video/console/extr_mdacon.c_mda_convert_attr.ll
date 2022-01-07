; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_mdacon.c_mda_convert_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_mdacon.c_mda_convert_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mda_convert_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mda_convert_attr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1792, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 2048
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 28672, i32* %3, align 4
  br label %14

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 1024
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 256, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %8
  br label %14

14:                                               ; preds = %13, %7
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 512
  %17 = shl i32 %16, 2
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 32768
  %20 = or i32 %17, %19
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 255
  %23 = or i32 %20, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %23, %24
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
