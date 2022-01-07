; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_record_changed_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_record_changed_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32, i32, i32, i32 }

@__record_changed_new_ref = common dso_local global i32 0, align 4
@__record_changed_deleted_ref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*)* @record_changed_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_changed_ref(%struct.send_ctx* %0) #0 {
  %2 = alloca %struct.send_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @__record_changed_new_ref, align 4
  %14 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %15 = call i32 @iterate_inode_ref(i32 %6, i32 %9, i32 %12, i32 0, i32 %13, %struct.send_ctx* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @__record_changed_deleted_ref, align 4
  %30 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %31 = call i32 @iterate_inode_ref(i32 %22, i32 %25, i32 %28, i32 0, i32 %29, %struct.send_ctx* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %36

35:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @iterate_inode_ref(i32, i32, i32, i32, i32, %struct.send_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
