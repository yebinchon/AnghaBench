; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i64, i32*, i32, i32, i64, i32 }
%struct.btrfs_cmd_header = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*)* @send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_cmd(%struct.send_ctx* %0) #0 {
  %2 = alloca %struct.send_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_cmd_header*, align 8
  %5 = alloca i64, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %2, align 8
  %6 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.btrfs_cmd_header*
  store %struct.btrfs_cmd_header* %9, %struct.btrfs_cmd_header** %4, align 8
  %10 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 %12, 24
  %14 = call i8* @cpu_to_le32(i64 %13)
  %15 = load %struct.btrfs_cmd_header*, %struct.btrfs_cmd_header** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_cmd_header, %struct.btrfs_cmd_header* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.btrfs_cmd_header*, %struct.btrfs_cmd_header** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_cmd_header, %struct.btrfs_cmd_header* %17, i32 0, i32 1
  store i8* null, i8** %18, align 8
  %19 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @btrfs_crc32c(i32 0, i8* %22, i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i8* @cpu_to_le32(i64 %27)
  %29 = load %struct.btrfs_cmd_header*, %struct.btrfs_cmd_header** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_cmd_header, %struct.btrfs_cmd_header* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %40, i32 0, i32 3
  %42 = call i32 @write_buf(i32 %33, i64 %36, i64 %39, i32* %41)
  store i32 %42, i32* %3, align 4
  %43 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  %52 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %53 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %56 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.btrfs_cmd_header*, %struct.btrfs_cmd_header** %4, align 8
  %59 = getelementptr inbounds %struct.btrfs_cmd_header, %struct.btrfs_cmd_header* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @le16_to_cpu(i32 %60)
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %54
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %68 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @btrfs_crc32c(i32, i8*, i64) #1

declare dso_local i32 @write_buf(i32, i64, i64, i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
