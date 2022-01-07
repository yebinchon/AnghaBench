; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_convert_to_sfu_char.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_convert_to_sfu_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNI_COLON = common dso_local global i32 0, align 4
@UNI_ASTERISK = common dso_local global i32 0, align 4
@UNI_QUESTION = common dso_local global i32 0, align 4
@UNI_LESSTHAN = common dso_local global i32 0, align 4
@UNI_GRTRTHAN = common dso_local global i32 0, align 4
@UNI_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @convert_to_sfu_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_sfu_char(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %24 [
    i32 58, label %6
    i32 42, label %9
    i32 63, label %12
    i32 60, label %15
    i32 62, label %18
    i32 124, label %21
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @UNI_COLON, align 4
  %8 = call i32 @cpu_to_le16(i32 %7)
  store i32 %8, i32* %3, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load i32, i32* @UNI_ASTERISK, align 4
  %11 = call i32 @cpu_to_le16(i32 %10)
  store i32 %11, i32* %3, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @UNI_QUESTION, align 4
  %14 = call i32 @cpu_to_le16(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @UNI_LESSTHAN, align 4
  %17 = call i32 @cpu_to_le16(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @UNI_GRTRTHAN, align 4
  %20 = call i32 @cpu_to_le16(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @UNI_PIPE, align 4
  %23 = call i32 @cpu_to_le16(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %21, %18, %15, %12, %9, %6
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
