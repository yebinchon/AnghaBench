; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_superpipe.c_decode_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_superpipe.c_decode_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @decode_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decode_ioctl(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %25 [
    i32 137, label %5
    i32 132, label %7
    i32 131, label %9
    i32 128, label %11
    i32 133, label %13
    i32 136, label %15
    i32 130, label %17
    i32 129, label %19
    i32 134, label %21
    i32 135, label %23
  ]

5:                                                ; preds = %1
  %6 = call i8* @__stringify_1(i32 137)
  store i8* %6, i8** %2, align 8
  br label %26

7:                                                ; preds = %1
  %8 = call i8* @__stringify_1(i32 132)
  store i8* %8, i8** %2, align 8
  br label %26

9:                                                ; preds = %1
  %10 = call i8* @__stringify_1(i32 131)
  store i8* %10, i8** %2, align 8
  br label %26

11:                                               ; preds = %1
  %12 = call i8* @__stringify_1(i32 128)
  store i8* %12, i8** %2, align 8
  br label %26

13:                                               ; preds = %1
  %14 = call i8* @__stringify_1(i32 133)
  store i8* %14, i8** %2, align 8
  br label %26

15:                                               ; preds = %1
  %16 = call i8* @__stringify_1(i32 136)
  store i8* %16, i8** %2, align 8
  br label %26

17:                                               ; preds = %1
  %18 = call i8* @__stringify_1(i32 130)
  store i8* %18, i8** %2, align 8
  br label %26

19:                                               ; preds = %1
  %20 = call i8* @__stringify_1(i32 129)
  store i8* %20, i8** %2, align 8
  br label %26

21:                                               ; preds = %1
  %22 = call i8* @__stringify_1(i32 134)
  store i8* %22, i8** %2, align 8
  br label %26

23:                                               ; preds = %1
  %24 = call i8* @__stringify_1(i32 135)
  store i8* %24, i8** %2, align 8
  br label %26

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %26

26:                                               ; preds = %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local i8* @__stringify_1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
