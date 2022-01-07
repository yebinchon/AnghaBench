; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_res.c_snic_get_res_counts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_res.c_snic_get_res_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i64, i64, i64, i32 }

@RES_TYPE_WQ = common dso_local global i32 0, align 4
@RES_TYPE_CQ = common dso_local global i32 0, align 4
@RES_TYPE_INTR_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snic_get_res_counts(%struct.snic* %0) #0 {
  %2 = alloca %struct.snic*, align 8
  store %struct.snic* %0, %struct.snic** %2, align 8
  %3 = load %struct.snic*, %struct.snic** %2, align 8
  %4 = getelementptr inbounds %struct.snic, %struct.snic* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @RES_TYPE_WQ, align 4
  %7 = call i8* @svnic_dev_get_res_count(i32 %5, i32 %6)
  %8 = ptrtoint i8* %7 to i64
  %9 = load %struct.snic*, %struct.snic** %2, align 8
  %10 = getelementptr inbounds %struct.snic, %struct.snic* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.snic*, %struct.snic** %2, align 8
  %12 = getelementptr inbounds %struct.snic, %struct.snic* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @SNIC_BUG_ON(i32 %15)
  %17 = load %struct.snic*, %struct.snic** %2, align 8
  %18 = getelementptr inbounds %struct.snic, %struct.snic* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RES_TYPE_CQ, align 4
  %21 = call i8* @svnic_dev_get_res_count(i32 %19, i32 %20)
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.snic*, %struct.snic** %2, align 8
  %24 = getelementptr inbounds %struct.snic, %struct.snic* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.snic*, %struct.snic** %2, align 8
  %26 = getelementptr inbounds %struct.snic, %struct.snic* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @SNIC_BUG_ON(i32 %29)
  %31 = load %struct.snic*, %struct.snic** %2, align 8
  %32 = getelementptr inbounds %struct.snic, %struct.snic* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RES_TYPE_INTR_CTRL, align 4
  %35 = call i8* @svnic_dev_get_res_count(i32 %33, i32 %34)
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.snic*, %struct.snic** %2, align 8
  %38 = getelementptr inbounds %struct.snic, %struct.snic* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.snic*, %struct.snic** %2, align 8
  %40 = getelementptr inbounds %struct.snic, %struct.snic* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @SNIC_BUG_ON(i32 %43)
  ret void
}

declare dso_local i8* @svnic_dev_get_res_count(i32, i32) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
