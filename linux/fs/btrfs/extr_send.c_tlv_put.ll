; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_tlv_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_tlv_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32, i32 }
%struct.btrfs_tlv_header = type { i8*, i8* }

@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32, i8*, i32)* @tlv_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlv_put(%struct.send_ctx* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.send_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_tlv_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 16, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %11, align 4
  %17 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EOVERFLOW, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %61

33:                                               ; preds = %4
  %34 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.btrfs_tlv_header*
  store %struct.btrfs_tlv_header* %42, %struct.btrfs_tlv_header** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.btrfs_tlv_header*, %struct.btrfs_tlv_header** %10, align 8
  %46 = getelementptr inbounds %struct.btrfs_tlv_header, %struct.btrfs_tlv_header* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.btrfs_tlv_header*, %struct.btrfs_tlv_header** %10, align 8
  %50 = getelementptr inbounds %struct.btrfs_tlv_header, %struct.btrfs_tlv_header* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.btrfs_tlv_header*, %struct.btrfs_tlv_header** %10, align 8
  %52 = getelementptr inbounds %struct.btrfs_tlv_header, %struct.btrfs_tlv_header* %51, i64 1
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @memcpy(%struct.btrfs_tlv_header* %52, i8* %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %33, %30
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(%struct.btrfs_tlv_header*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
