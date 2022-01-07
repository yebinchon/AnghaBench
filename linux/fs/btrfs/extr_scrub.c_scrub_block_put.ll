; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_block_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_block_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_block = type { i32, i32*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scrub_block*)* @scrub_block_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_block_put(%struct.scrub_block* %0) #0 {
  %2 = alloca %struct.scrub_block*, align 8
  %3 = alloca i32, align 4
  store %struct.scrub_block* %0, %struct.scrub_block** %2, align 8
  %4 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %5 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %4, i32 0, i32 3
  %6 = call i64 @refcount_dec_and_test(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %10 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %15 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @scrub_parity_put(i64 %16)
  br label %18

18:                                               ; preds = %13, %8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %22 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %27 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @scrub_page_put(i32 %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %39 = call i32 @kfree(%struct.scrub_block* %38)
  br label %40

40:                                               ; preds = %37, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @scrub_parity_put(i64) #1

declare dso_local i32 @scrub_page_put(i32) #1

declare dso_local i32 @kfree(%struct.scrub_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
