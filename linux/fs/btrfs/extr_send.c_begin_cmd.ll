; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_begin_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_begin_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i64 }
%struct.btrfs_cmd_header = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32)* @begin_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @begin_cmd(%struct.send_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.send_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_cmd_header*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 8
  %29 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.btrfs_cmd_header*
  store %struct.btrfs_cmd_header* %32, %struct.btrfs_cmd_header** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @cpu_to_le16(i32 %33)
  %35 = load %struct.btrfs_cmd_header*, %struct.btrfs_cmd_header** %6, align 8
  %36 = getelementptr inbounds %struct.btrfs_cmd_header, %struct.btrfs_cmd_header* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %18, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
