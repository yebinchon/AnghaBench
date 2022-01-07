; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_BusLogic.h_blogic_incszbucket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_BusLogic.h_blogic_incszbucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @blogic_incszbucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blogic_incszbucket(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ult i32 %6, 8192
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %9, 2048
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %12, 1024
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 1
  store i32 %15, i32* %5, align 4
  br label %21

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %17, 4096
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 2, i32 3
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %11
  br label %45

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ult i32 %23, 131072
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp ult i32 %26, 32768
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp ult i32 %29, 16384
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 4, i32 5
  store i32 %32, i32* %5, align 4
  br label %38

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = icmp ult i32 %34, 65536
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 6, i32 7
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %28
  br label %44

39:                                               ; preds = %22
  %40 = load i32, i32* %4, align 4
  %41 = icmp ult i32 %40, 262144
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 8, i32 9
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %38
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %49, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
