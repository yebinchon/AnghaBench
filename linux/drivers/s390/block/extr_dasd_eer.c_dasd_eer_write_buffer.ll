; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eer.c_dasd_eer_write_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eer.c_dasd_eer_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eerbuffer = type { i64, i64, i64* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eerbuffer*, i8*, i32)* @dasd_eer_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eer_write_buffer(%struct.eerbuffer* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.eerbuffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.eerbuffer* %0, %struct.eerbuffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %9, align 8
  br label %15

15:                                               ; preds = %66, %3
  %16 = load i64, i64* %9, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %76

18:                                               ; preds = %15
  %19 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %20 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = udiv i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %25 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = urem i64 %26, %27
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub i64 %30, %31
  %33 = call i64 @min(i64 %29, i64 %32)
  store i64 %33, i64* %10, align 8
  %34 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %35 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %39, %40
  %42 = load i8*, i8** %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @memcpy(i64 %41, i8* %42, i64 %43)
  %45 = load i64, i64* %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8* %47, i8** %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %53 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %57 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %60 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %18
  %64 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %65 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %18
  %67 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %68 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %71 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ugt i64 %69, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  br label %15

76:                                               ; preds = %15
  ret void
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
