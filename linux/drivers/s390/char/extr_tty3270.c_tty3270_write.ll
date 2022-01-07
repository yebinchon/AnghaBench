; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.tty3270* }
%struct.tty3270 = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @tty3270_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty3270_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty3270*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.tty3270*, %struct.tty3270** %10, align 8
  store %struct.tty3270* %11, %struct.tty3270** %8, align 8
  %12 = load %struct.tty3270*, %struct.tty3270** %8, align 8
  %13 = icmp ne %struct.tty3270* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

15:                                               ; preds = %3
  %16 = load %struct.tty3270*, %struct.tty3270** %8, align 8
  %17 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.tty3270*, %struct.tty3270** %8, align 8
  %22 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %23 = load %struct.tty3270*, %struct.tty3270** %8, align 8
  %24 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.tty3270*, %struct.tty3270** %8, align 8
  %27 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @tty3270_do_write(%struct.tty3270* %21, %struct.tty_struct* %22, i8* %25, i32 %29)
  %31 = load %struct.tty3270*, %struct.tty3270** %8, align 8
  %32 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %20, %15
  %34 = load %struct.tty3270*, %struct.tty3270** %8, align 8
  %35 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @tty3270_do_write(%struct.tty3270* %34, %struct.tty_struct* %35, i8* %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @tty3270_do_write(%struct.tty3270*, %struct.tty_struct*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
