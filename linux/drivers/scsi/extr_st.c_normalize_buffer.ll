; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_normalize_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_normalize_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_buffer = type { i32, i32, i32, %struct.TYPE_2__, i64, i32* }
%struct.TYPE_2__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_buffer*)* @normalize_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @normalize_buffer(%struct.st_buffer* %0) #0 {
  %2 = alloca %struct.st_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.st_buffer* %0, %struct.st_buffer** %2, align 8
  %5 = load %struct.st_buffer*, %struct.st_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %31, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.st_buffer*, %struct.st_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %8
  %15 = load %struct.st_buffer*, %struct.st_buffer** %2, align 8
  %16 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @__free_pages(i32 %21, i32 %22)
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %24, %25
  %27 = load %struct.st_buffer*, %struct.st_buffer** %2, align 8
  %28 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %8

34:                                               ; preds = %8
  %35 = load %struct.st_buffer*, %struct.st_buffer** %2, align 8
  %36 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.st_buffer*, %struct.st_buffer** %2, align 8
  %38 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.st_buffer*, %struct.st_buffer** %2, align 8
  %40 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.st_buffer*, %struct.st_buffer** %2, align 8
  %42 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  ret void
}

declare dso_local i32 @__free_pages(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
