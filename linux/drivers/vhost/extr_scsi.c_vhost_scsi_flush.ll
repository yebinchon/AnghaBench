; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_scsi = type { i32, i32, i32 }
%struct.vhost_scsi_inflight = type { i32, i32 }

@VHOST_SCSI_MAX_VQ = common dso_local global i32 0, align 4
@vhost_scsi_done_inflight = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_scsi*)* @vhost_scsi_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_scsi_flush(%struct.vhost_scsi* %0) #0 {
  %2 = alloca %struct.vhost_scsi*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vhost_scsi* %0, %struct.vhost_scsi** %2, align 8
  %6 = load i32, i32* @VHOST_SCSI_MAX_VQ, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca %struct.vhost_scsi_inflight*, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.vhost_scsi*, %struct.vhost_scsi** %2, align 8
  %11 = call i32 @vhost_scsi_init_inflight(%struct.vhost_scsi* %10, %struct.vhost_scsi_inflight** %9)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @VHOST_SCSI_MAX_VQ, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.vhost_scsi_inflight*, %struct.vhost_scsi_inflight** %9, i64 %18
  %20 = load %struct.vhost_scsi_inflight*, %struct.vhost_scsi_inflight** %19, align 8
  %21 = getelementptr inbounds %struct.vhost_scsi_inflight, %struct.vhost_scsi_inflight* %20, i32 0, i32 1
  %22 = load i32, i32* @vhost_scsi_done_inflight, align 4
  %23 = call i32 @kref_put(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %12

27:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %36, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @VHOST_SCSI_MAX_VQ, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.vhost_scsi*, %struct.vhost_scsi** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @vhost_scsi_flush_vq(%struct.vhost_scsi* %33, i32 %34)
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %28

39:                                               ; preds = %28
  %40 = load %struct.vhost_scsi*, %struct.vhost_scsi** %2, align 8
  %41 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %40, i32 0, i32 1
  %42 = load %struct.vhost_scsi*, %struct.vhost_scsi** %2, align 8
  %43 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %42, i32 0, i32 2
  %44 = call i32 @vhost_work_flush(i32* %41, i32* %43)
  %45 = load %struct.vhost_scsi*, %struct.vhost_scsi** %2, align 8
  %46 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %45, i32 0, i32 1
  %47 = load %struct.vhost_scsi*, %struct.vhost_scsi** %2, align 8
  %48 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %47, i32 0, i32 0
  %49 = call i32 @vhost_work_flush(i32* %46, i32* %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %61, %39
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @VHOST_SCSI_MAX_VQ, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.vhost_scsi_inflight*, %struct.vhost_scsi_inflight** %9, i64 %56
  %58 = load %struct.vhost_scsi_inflight*, %struct.vhost_scsi_inflight** %57, align 8
  %59 = getelementptr inbounds %struct.vhost_scsi_inflight, %struct.vhost_scsi_inflight* %58, i32 0, i32 0
  %60 = call i32 @wait_for_completion(i32* %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %50

64:                                               ; preds = %50
  %65 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %65)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vhost_scsi_init_inflight(%struct.vhost_scsi*, %struct.vhost_scsi_inflight**) #2

declare dso_local i32 @kref_put(i32*, i32) #2

declare dso_local i32 @vhost_scsi_flush_vq(%struct.vhost_scsi*, i32) #2

declare dso_local i32 @vhost_work_flush(i32*, i32*) #2

declare dso_local i32 @wait_for_completion(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
