; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_wqdesc_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_wqdesc_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"desc_avail: Multi Queue case.\0A\00", align 1
@SNIC_REQ_HBA_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snic*, i32, i32)* @snic_wqdesc_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_wqdesc_avail(%struct.snic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snic*, %struct.snic** %5, align 8
  %10 = getelementptr inbounds %struct.snic, %struct.snic* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.snic*, %struct.snic** %5, align 8
  %17 = getelementptr inbounds %struct.snic, %struct.snic* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @SNIC_HOST_INFO(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @SNIC_BUG_ON(i32 %22)
  store i32 -1, i32* %4, align 4
  br label %44

24:                                               ; preds = %3
  %25 = load %struct.snic*, %struct.snic** %5, align 8
  %26 = getelementptr inbounds %struct.snic, %struct.snic* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i64 @atomic64_read(i32* %28)
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SNIC_REQ_HBA_RESET, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  br label %42

39:                                               ; preds = %24
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 1
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @SNIC_HOST_INFO(i32, i8*) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
