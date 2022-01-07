; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_get_disposition.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_get_disposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@FILE_CREATE = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@FILE_OVERWRITE_IF = common dso_local global i32 0, align 4
@FILE_OPEN_IF = common dso_local global i32 0, align 4
@FILE_OVERWRITE = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cifs_get_disposition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_get_disposition(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @O_CREAT, align 4
  %6 = load i32, i32* @O_EXCL, align 4
  %7 = or i32 %5, %6
  %8 = and i32 %4, %7
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = load i32, i32* @O_EXCL, align 4
  %11 = or i32 %9, %10
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @FILE_CREATE, align 4
  store i32 %14, i32* %2, align 4
  br label %45

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @O_CREAT, align 4
  %18 = load i32, i32* @O_TRUNC, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @O_CREAT, align 4
  %22 = load i32, i32* @O_TRUNC, align 4
  %23 = or i32 %21, %22
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @FILE_OVERWRITE_IF, align 4
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %15
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @O_CREAT, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @O_CREAT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @FILE_OPEN_IF, align 4
  store i32 %34, i32* %2, align 4
  br label %45

35:                                               ; preds = %27
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @O_TRUNC, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @O_TRUNC, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @FILE_OVERWRITE, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @FILE_OPEN, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %41, %33, %25, %13
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
