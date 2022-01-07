; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_segment_splice_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_segment_splice_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_segment = type { i32*, i32*, i64, i8*, i32, i8*, i8* }

@ISCSI_DIGEST_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_segment*, i8*)* @iscsi_tcp_segment_splice_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_tcp_segment_splice_digest(%struct.iscsi_segment* %0, i8* %1) #0 {
  %3 = alloca %struct.iscsi_segment*, align 8
  %4 = alloca i8*, align 8
  store %struct.iscsi_segment* %0, %struct.iscsi_segment** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.iscsi_segment*, %struct.iscsi_segment** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %6, i32 0, i32 6
  store i8* %5, i8** %7, align 8
  %8 = load i8*, i8** @ISCSI_DIGEST_SIZE, align 8
  %9 = load %struct.iscsi_segment*, %struct.iscsi_segment** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %9, i32 0, i32 5
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @ISCSI_DIGEST_SIZE, align 8
  %12 = load %struct.iscsi_segment*, %struct.iscsi_segment** %3, align 8
  %13 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr i8, i8* %11, i64 %15
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %13, align 8
  %18 = load i8*, i8** @ISCSI_DIGEST_SIZE, align 8
  %19 = load %struct.iscsi_segment*, %struct.iscsi_segment** %3, align 8
  %20 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.iscsi_segment*, %struct.iscsi_segment** %3, align 8
  %22 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.iscsi_segment*, %struct.iscsi_segment** %3, align 8
  %24 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.iscsi_segment*, %struct.iscsi_segment** %3, align 8
  %26 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
