; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c___iscsi_segment_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c___iscsi_segment_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_segment = type { i64, %struct.ahash_request*, i32* }
%struct.ahash_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_segment*, i64, i32*, %struct.ahash_request*)* @__iscsi_segment_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iscsi_segment_init(%struct.iscsi_segment* %0, i64 %1, i32* %2, %struct.ahash_request* %3) #0 {
  %5 = alloca %struct.iscsi_segment*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ahash_request*, align 8
  store %struct.iscsi_segment* %0, %struct.iscsi_segment** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.ahash_request* %3, %struct.ahash_request** %8, align 8
  %9 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %10 = call i32 @memset(%struct.iscsi_segment* %9, i32 0, i32 24)
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %16 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.ahash_request*, %struct.ahash_request** %8, align 8
  %18 = icmp ne %struct.ahash_request* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.ahash_request*, %struct.ahash_request** %8, align 8
  %21 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %22 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %21, i32 0, i32 1
  store %struct.ahash_request* %20, %struct.ahash_request** %22, align 8
  %23 = load %struct.ahash_request*, %struct.ahash_request** %8, align 8
  %24 = call i32 @crypto_ahash_init(%struct.ahash_request* %23)
  br label %25

25:                                               ; preds = %19, %4
  ret void
}

declare dso_local i32 @memset(%struct.iscsi_segment*, i32, i32) #1

declare dso_local i32 @crypto_ahash_init(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
