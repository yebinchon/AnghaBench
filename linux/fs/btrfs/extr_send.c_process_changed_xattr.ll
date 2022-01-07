; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_process_changed_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_process_changed_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32, i32, i32 }

@__process_changed_new_xattr = common dso_local global i32 0, align 4
@__process_changed_deleted_xattr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*)* @process_changed_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_changed_xattr(%struct.send_ctx* %0) #0 {
  %2 = alloca %struct.send_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @__process_changed_new_xattr, align 4
  %11 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %12 = call i32 @iterate_dir_item(i32 %6, i32 %9, i32 %10, %struct.send_ctx* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @__process_changed_deleted_xattr, align 4
  %24 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %25 = call i32 @iterate_dir_item(i32 %19, i32 %22, i32 %23, %struct.send_ctx* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %16, %15
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @iterate_dir_item(i32, i32, i32, %struct.send_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
