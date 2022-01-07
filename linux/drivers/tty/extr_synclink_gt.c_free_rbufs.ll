; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_free_rbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_free_rbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*, i32, i32)* @free_rbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rbufs(%struct.slgt_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.slgt_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %44, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %14 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %27 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @set_desc_count(i64 %30, i32 %28)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %12
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %12
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %40 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %36
  br label %8

45:                                               ; preds = %8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %48 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  ret void
}

declare dso_local i32 @set_desc_count(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
