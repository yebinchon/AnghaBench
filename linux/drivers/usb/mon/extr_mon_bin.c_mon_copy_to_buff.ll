; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_copy_to_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_copy_to_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_bin = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mon_reader_bin*, i32, i8*, i32)* @mon_copy_to_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_copy_to_buff(%struct.mon_reader_bin* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mon_reader_bin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mon_reader_bin* %0, %struct.mon_reader_bin** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %12

12:                                               ; preds = %56, %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @CHUNK_SIZE, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CHUNK_SIZE, align 4
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %18, %20
  %22 = sub i32 %17, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %26, %15
  %29 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %30 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @CHUNK_SIZE, align 4
  %34 = udiv i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CHUNK_SIZE, align 4
  %41 = urem i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %52 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp uge i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %28
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %12

64:                                               ; preds = %12
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
