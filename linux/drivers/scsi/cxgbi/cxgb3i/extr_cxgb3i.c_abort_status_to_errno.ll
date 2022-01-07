; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_abort_status_to_errno.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_abort_status_to_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32 }

@CTP_ESTABLISHED = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*, i32, i32*)* @abort_status_to_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abort_status_to_errno(%struct.cxgbi_sock* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %26 [
    i32 133, label %9
    i32 132, label %9
    i32 128, label %23
    i32 129, label %23
    i32 131, label %23
    i32 130, label %23
  ]

9:                                                ; preds = %3, %3
  %10 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %11 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CTP_ESTABLISHED, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @EPIPE, align 4
  %17 = sub nsw i32 0, %16
  br label %21

18:                                               ; preds = %9
  %19 = load i32, i32* @ECONNRESET, align 4
  %20 = sub nsw i32 0, %19
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %17, %15 ], [ %20, %18 ]
  store i32 %22, i32* %4, align 4
  br label %29

23:                                               ; preds = %3, %3, %3, %3
  %24 = load i32, i32* @ETIMEDOUT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %23, %21
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
