; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_drop_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_drop_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i64, i32, i32, i8* }

@RAW3215_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3215_info*)* @raw3215_drop_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_drop_line(%struct.raw3215_info* %0) #0 {
  %2 = alloca %struct.raw3215_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.raw3215_info* %0, %struct.raw3215_info** %2, align 8
  %5 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %6 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %12 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %15 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  %18 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %47, %1
  %22 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %23 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  %27 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %28 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %4, align 1
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %35, %37
  store i32 %38, i32* %3, align 4
  %39 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %40 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  %43 = load i8, i8* %4, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 21
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %48

47:                                               ; preds = %26
  br label %21

48:                                               ; preds = %46, %21
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %51 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
