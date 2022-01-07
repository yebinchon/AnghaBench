; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_segment_init_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_segment_init_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_segment = type { i32, i32*, i64, i64, i32, %struct.scatterlist* }
%struct.scatterlist = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_segment*, %struct.scatterlist*, i32)* @iscsi_tcp_segment_init_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_tcp_segment_init_sg(%struct.iscsi_segment* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_segment*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_segment* %0, %struct.iscsi_segment** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %8 = load %struct.iscsi_segment*, %struct.iscsi_segment** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %8, i32 0, i32 5
  store %struct.scatterlist* %7, %struct.scatterlist** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.iscsi_segment*, %struct.iscsi_segment** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %14 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = sub nsw i64 %15, %17
  %19 = load %struct.iscsi_segment*, %struct.iscsi_segment** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.iscsi_segment*, %struct.iscsi_segment** %4, align 8
  %23 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = call i32 @min(i64 %18, i64 %25)
  %27 = load %struct.iscsi_segment*, %struct.iscsi_segment** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.iscsi_segment*, %struct.iscsi_segment** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  ret void
}

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
