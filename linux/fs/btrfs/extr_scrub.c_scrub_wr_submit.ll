; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_wr_submit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_wr_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_ctx = type { %struct.scrub_bio* }
%struct.scrub_bio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scrub_ctx*)* @scrub_wr_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_wr_submit(%struct.scrub_ctx* %0) #0 {
  %2 = alloca %struct.scrub_ctx*, align 8
  %3 = alloca %struct.scrub_bio*, align 8
  store %struct.scrub_ctx* %0, %struct.scrub_ctx** %2, align 8
  %4 = load %struct.scrub_ctx*, %struct.scrub_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %4, i32 0, i32 0
  %6 = load %struct.scrub_bio*, %struct.scrub_bio** %5, align 8
  %7 = icmp ne %struct.scrub_bio* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.scrub_ctx*, %struct.scrub_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %10, i32 0, i32 0
  %12 = load %struct.scrub_bio*, %struct.scrub_bio** %11, align 8
  store %struct.scrub_bio* %12, %struct.scrub_bio** %3, align 8
  %13 = load %struct.scrub_ctx*, %struct.scrub_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.scrub_ctx, %struct.scrub_ctx* %13, i32 0, i32 0
  store %struct.scrub_bio* null, %struct.scrub_bio** %14, align 8
  %15 = load %struct.scrub_bio*, %struct.scrub_bio** %3, align 8
  %16 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.scrub_ctx*, %struct.scrub_ctx** %2, align 8
  %25 = call i32 @scrub_pending_bio_inc(%struct.scrub_ctx* %24)
  %26 = load %struct.scrub_bio*, %struct.scrub_bio** %3, align 8
  %27 = getelementptr inbounds %struct.scrub_bio, %struct.scrub_bio* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 @btrfsic_submit_bio(%struct.TYPE_2__* %28)
  br label %30

30:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @scrub_pending_bio_inc(%struct.scrub_ctx*) #1

declare dso_local i32 @btrfsic_submit_bio(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
