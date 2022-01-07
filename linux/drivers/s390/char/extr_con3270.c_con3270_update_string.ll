; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3270.c_con3270_update_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3270.c_con3270_update_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con3270 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.string = type { i32, i64* }

@TO_RA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.con3270*, %struct.string*, i32)* @con3270_update_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con3270_update_string(%struct.con3270* %0, %struct.string* %1, i32 %2) #0 {
  %4 = alloca %struct.con3270*, align 8
  %5 = alloca %struct.string*, align 8
  %6 = alloca i32, align 4
  store %struct.con3270* %0, %struct.con3270** %4, align 8
  store %struct.string* %1, %struct.string** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.string*, %struct.string** %5, align 8
  %8 = getelementptr inbounds %struct.string, %struct.string* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %48

12:                                               ; preds = %3
  %13 = load %struct.string*, %struct.string** %5, align 8
  %14 = getelementptr inbounds %struct.string, %struct.string* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.string*, %struct.string** %5, align 8
  %17 = getelementptr inbounds %struct.string, %struct.string* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %15, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TO_RA, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %48

26:                                               ; preds = %12
  %27 = load %struct.con3270*, %struct.con3270** %4, align 8
  %28 = getelementptr inbounds %struct.con3270, %struct.con3270* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.string*, %struct.string** %5, align 8
  %32 = getelementptr inbounds %struct.string, %struct.string* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.string*, %struct.string** %5, align 8
  %35 = getelementptr inbounds %struct.string, %struct.string* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %33, i64 %37
  %39 = getelementptr inbounds i64, i64* %38, i64 -3
  %40 = load %struct.con3270*, %struct.con3270** %4, align 8
  %41 = getelementptr inbounds %struct.con3270, %struct.con3270* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 %43, %45
  %47 = call i32 @raw3270_buffer_address(i32 %30, i64* %39, i32 %46)
  br label %48

48:                                               ; preds = %26, %25, %11
  ret void
}

declare dso_local i32 @raw3270_buffer_address(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
