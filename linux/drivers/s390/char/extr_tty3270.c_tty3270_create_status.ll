; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_create_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_create_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { %struct.TYPE_2__, %struct.string*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.string = type { i64 }

@tty3270_create_status.blueprint = internal constant [20 x i8] c"\81\00\00\80\83\82\84\86\00\00\00\00\00\00\00\80\83\82\84\85", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*)* @tty3270_create_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_create_status(%struct.tty3270* %0) #0 {
  %2 = alloca %struct.tty3270*, align 8
  %3 = alloca %struct.string*, align 8
  %4 = alloca i32, align 4
  store %struct.tty3270* %0, %struct.tty3270** %2, align 8
  %5 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %6 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %5, i32 0, i32 2
  %7 = call %struct.string* @alloc_string(i32* %6, i32 20)
  store %struct.string* %7, %struct.string** %3, align 8
  %8 = load %struct.string*, %struct.string** %3, align 8
  %9 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %10 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %9, i32 0, i32 1
  store %struct.string* %8, %struct.string** %10, align 8
  %11 = load %struct.string*, %struct.string** %3, align 8
  %12 = getelementptr inbounds %struct.string, %struct.string* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @memcpy(i64 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @tty3270_create_status.blueprint, i64 0, i64 0), i32 20)
  %15 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %16 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %20 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %18, %22
  %24 = sub nsw i32 %23, 9
  store i32 %24, i32* %4, align 4
  %25 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %26 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.string*, %struct.string** %3, align 8
  %30 = getelementptr inbounds %struct.string, %struct.string* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @raw3270_buffer_address(i32 %28, i64 %32, i32 %33)
  ret void
}

declare dso_local %struct.string* @alloc_string(i32*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @raw3270_buffer_address(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
