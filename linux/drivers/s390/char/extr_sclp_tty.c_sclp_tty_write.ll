; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_tty.c_sclp_tty_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_tty.c_sclp_tty_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@sclp_tty_chars_count = common dso_local global i64 0, align 8
@sclp_tty_chars = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @sclp_tty_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_tty_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* @sclp_tty_chars_count, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load i8*, i8** @sclp_tty_chars, align 8
  %11 = load i64, i64* @sclp_tty_chars_count, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @sclp_tty_write_string(i8* %10, i32 %12, i32 0)
  store i64 0, i64* @sclp_tty_chars_count, align 8
  br label %14

14:                                               ; preds = %9, %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sclp_tty_write_string(i8* %15, i32 %16, i32 1)
  ret i32 %17
}

declare dso_local i32 @sclp_tty_write_string(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
