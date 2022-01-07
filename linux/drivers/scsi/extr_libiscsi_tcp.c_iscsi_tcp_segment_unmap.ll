; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_segment_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_segment_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_segment = type { i32*, i32*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_tcp_segment_unmap(%struct.iscsi_segment* %0) #0 {
  %2 = alloca %struct.iscsi_segment*, align 8
  store %struct.iscsi_segment* %0, %struct.iscsi_segment** %2, align 8
  %3 = load %struct.iscsi_segment*, %struct.iscsi_segment** %2, align 8
  %4 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load %struct.iscsi_segment*, %struct.iscsi_segment** %2, align 8
  %9 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.iscsi_segment*, %struct.iscsi_segment** %2, align 8
  %14 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @kunmap_atomic(i32* %15)
  br label %23

17:                                               ; preds = %7
  %18 = load %struct.iscsi_segment*, %struct.iscsi_segment** %2, align 8
  %19 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @sg_page(i32 %20)
  %22 = call i32 @kunmap(i32 %21)
  br label %23

23:                                               ; preds = %17, %12
  %24 = load %struct.iscsi_segment*, %struct.iscsi_segment** %2, align 8
  %25 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.iscsi_segment*, %struct.iscsi_segment** %2, align 8
  %27 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @sg_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
