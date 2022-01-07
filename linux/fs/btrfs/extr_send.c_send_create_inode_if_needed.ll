; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_create_inode_if_needed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_create_inode_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*)* @send_create_inode_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_create_inode_if_needed(%struct.send_ctx* %0) #0 {
  %2 = alloca %struct.send_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %2, align 8
  %4 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @S_ISDIR(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %11 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @did_create_dir(%struct.send_ctx* %10, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %33

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %33

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %25 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @send_create_inode(%struct.send_ctx* %24, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %31, %21, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @did_create_dir(%struct.send_ctx*, i32) #1

declare dso_local i32 @send_create_inode(%struct.send_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
