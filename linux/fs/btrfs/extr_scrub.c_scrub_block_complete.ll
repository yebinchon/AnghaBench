; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_block_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_block_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_block = type { i32, i64, %struct.TYPE_4__**, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scrub_block*)* @scrub_block_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_block_complete(%struct.scrub_block* %0) #0 {
  %2 = alloca %struct.scrub_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.scrub_block* %0, %struct.scrub_block** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %7 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %11 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %12 = call i32 @scrub_handle_errored_block(%struct.scrub_block* %11)
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %15 = call i32 @scrub_checksum(%struct.scrub_block* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %20 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %27 = call i32 @scrub_write_block_to_dev_replace(%struct.scrub_block* %26)
  br label %28

28:                                               ; preds = %25, %18, %13
  br label %29

29:                                               ; preds = %28, %10
  %30 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %31 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %34
  %38 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %39 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %72, label %42

42:                                               ; preds = %37
  %43 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %44 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %4, align 8
  %50 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %51 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %51, align 8
  %53 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %54 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PAGE_SIZE, align 8
  %63 = add nsw i64 %61, %62
  store i64 %63, i64* %5, align 8
  %64 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %65 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %4, align 8
  %70 = sub nsw i64 %68, %69
  %71 = call i32 @scrub_parity_mark_sectors_error(i64 %66, i64 %67, i64 %70)
  br label %72

72:                                               ; preds = %42, %37, %34, %29
  ret void
}

declare dso_local i32 @scrub_handle_errored_block(%struct.scrub_block*) #1

declare dso_local i32 @scrub_checksum(%struct.scrub_block*) #1

declare dso_local i32 @scrub_write_block_to_dev_replace(%struct.scrub_block*) #1

declare dso_local i32 @scrub_parity_mark_sectors_error(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
