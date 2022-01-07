; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_convert_sfu_char.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_convert_sfu_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @convert_sfu_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_sfu_char(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %19 [
    i32 132, label %7
    i32 133, label %9
    i32 128, label %11
    i32 129, label %13
    i32 131, label %15
    i32 130, label %17
  ]

7:                                                ; preds = %2
  %8 = load i8*, i8** %5, align 8
  store i8 58, i8* %8, align 1
  br label %20

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  store i8 42, i8* %10, align 1
  br label %20

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  store i8 63, i8* %12, align 1
  br label %20

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  store i8 124, i8* %14, align 1
  br label %20

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  store i8 62, i8* %16, align 1
  br label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  store i8 60, i8* %18, align 1
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

20:                                               ; preds = %17, %15, %13, %11, %9, %7
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
