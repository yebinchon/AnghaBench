; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-mx-socinfo.c_meson_mx_socinfo_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-mx-socinfo.c_meson_mx_socinfo_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Rev%X (%x - 0:%X)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32)* @meson_mx_socinfo_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @meson_mx_socinfo_revision(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %39 [
    i32 130, label %9
    i32 129, label %10
    i32 128, label %33
  ]

9:                                                ; preds = %3
  store i32 10, i32* %7, align 4
  br label %40

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 286331154
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 29, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 286331153
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 286331154
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  store i32 10, i32* %7, align 4
  br label %32

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 286331155
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 11, i32* %7, align 4
  br label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 286331187
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 12, i32* %7, align 4
  br label %30

29:                                               ; preds = %25
  store i32 13, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %30, %24
  br label %32

32:                                               ; preds = %31, %20
  br label %40

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 286331153
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 10, i32* %7, align 4
  br label %38

37:                                               ; preds = %33
  store i32 11, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %40

39:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %38, %32, %9
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i8* @kasprintf(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  ret i8* %45
}

declare dso_local i8* @kasprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
