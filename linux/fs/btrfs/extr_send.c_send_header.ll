; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_header.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32 }
%struct.btrfs_stream_header = type { i32, i32 }

@BTRFS_SEND_STREAM_MAGIC = common dso_local global i32 0, align 4
@BTRFS_SEND_STREAM_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*)* @send_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_header(%struct.send_ctx* %0) #0 {
  %2 = alloca %struct.send_ctx*, align 8
  %3 = alloca %struct.btrfs_stream_header, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.btrfs_stream_header, %struct.btrfs_stream_header* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @BTRFS_SEND_STREAM_MAGIC, align 4
  %7 = call i32 @strcpy(i32 %5, i32 %6)
  %8 = load i32, i32* @BTRFS_SEND_STREAM_VERSION, align 4
  %9 = call i32 @cpu_to_le32(i32 %8)
  %10 = getelementptr inbounds %struct.btrfs_stream_header, %struct.btrfs_stream_header* %3, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %14, i32 0, i32 0
  %16 = call i32 @write_buf(i32 %13, %struct.btrfs_stream_header* %3, i32 8, i32* %15)
  ret i32 %16
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @write_buf(i32, %struct.btrfs_stream_header*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
