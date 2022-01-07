; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_blank_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_blank_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i64, i32, i32 }
%struct.string = type { i32, i32, i32 }

@tty3270_blank_line.blueprint = internal constant [13 x i8] c"\80\00\00\81\84\83\81\85\86\82\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*)* @tty3270_blank_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_blank_line(%struct.tty3270* %0) #0 {
  %2 = alloca %struct.tty3270*, align 8
  %3 = alloca %struct.string*, align 8
  store %struct.tty3270* %0, %struct.tty3270** %2, align 8
  %4 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %5 = call %struct.string* @tty3270_alloc_string(%struct.tty3270* %4, i32 13)
  store %struct.string* %5, %struct.string** %3, align 8
  %6 = load %struct.string*, %struct.string** %3, align 8
  %7 = getelementptr inbounds %struct.string, %struct.string* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @memcpy(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @tty3270_blank_line.blueprint, i64 0, i64 0), i32 13)
  %10 = load %struct.string*, %struct.string** %3, align 8
  %11 = getelementptr inbounds %struct.string, %struct.string* %10, i32 0, i32 0
  store i32 13, i32* %11, align 4
  %12 = load %struct.string*, %struct.string** %3, align 8
  %13 = getelementptr inbounds %struct.string, %struct.string* %12, i32 0, i32 1
  %14 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %15 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %14, i32 0, i32 2
  %16 = call i32 @list_add_tail(i32* %13, i32* %15)
  %17 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %18 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %22 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %27 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  br label %30

30:                                               ; preds = %25, %1
  ret void
}

declare dso_local %struct.string* @tty3270_alloc_string(%struct.tty3270*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
