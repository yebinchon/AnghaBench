; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_add_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_add_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISCSI_PAD_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*, i32)* @iscsi_add_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_add_hdr(%struct.iscsi_task* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ugt i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = call i32 @WARN_ON(i32 1)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ISCSI_PAD_LEN, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %29 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %21, %17
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
