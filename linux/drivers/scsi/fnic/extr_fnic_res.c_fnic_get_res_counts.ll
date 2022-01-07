; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_res.c_fnic_get_res_counts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_res.c_fnic_get_res_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }

@RES_TYPE_WQ = common dso_local global i32 0, align 4
@RES_TYPE_RQ = common dso_local global i32 0, align 4
@RES_TYPE_CQ = common dso_local global i32 0, align 4
@RES_TYPE_INTR_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_get_res_counts(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  %3 = load %struct.fnic*, %struct.fnic** %2, align 8
  %4 = getelementptr inbounds %struct.fnic, %struct.fnic* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @RES_TYPE_WQ, align 4
  %7 = call i8* @vnic_dev_get_res_count(i32 %5, i32 %6)
  %8 = load %struct.fnic*, %struct.fnic** %2, align 8
  %9 = getelementptr inbounds %struct.fnic, %struct.fnic* %8, i32 0, i32 5
  store i8* %7, i8** %9, align 8
  %10 = load %struct.fnic*, %struct.fnic** %2, align 8
  %11 = getelementptr inbounds %struct.fnic, %struct.fnic* %10, i32 0, i32 5
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr i8, i8* %12, i64 -1
  %14 = load %struct.fnic*, %struct.fnic** %2, align 8
  %15 = getelementptr inbounds %struct.fnic, %struct.fnic* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load %struct.fnic*, %struct.fnic** %2, align 8
  %17 = getelementptr inbounds %struct.fnic, %struct.fnic* %16, i32 0, i32 5
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.fnic*, %struct.fnic** %2, align 8
  %20 = getelementptr inbounds %struct.fnic, %struct.fnic* %19, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %18 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.fnic*, %struct.fnic** %2, align 8
  %27 = getelementptr inbounds %struct.fnic, %struct.fnic* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load %struct.fnic*, %struct.fnic** %2, align 8
  %29 = getelementptr inbounds %struct.fnic, %struct.fnic* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RES_TYPE_RQ, align 4
  %32 = call i8* @vnic_dev_get_res_count(i32 %30, i32 %31)
  %33 = load %struct.fnic*, %struct.fnic** %2, align 8
  %34 = getelementptr inbounds %struct.fnic, %struct.fnic* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.fnic*, %struct.fnic** %2, align 8
  %36 = getelementptr inbounds %struct.fnic, %struct.fnic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RES_TYPE_CQ, align 4
  %39 = call i8* @vnic_dev_get_res_count(i32 %37, i32 %38)
  %40 = load %struct.fnic*, %struct.fnic** %2, align 8
  %41 = getelementptr inbounds %struct.fnic, %struct.fnic* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.fnic*, %struct.fnic** %2, align 8
  %43 = getelementptr inbounds %struct.fnic, %struct.fnic* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RES_TYPE_INTR_CTRL, align 4
  %46 = call i8* @vnic_dev_get_res_count(i32 %44, i32 %45)
  %47 = load %struct.fnic*, %struct.fnic** %2, align 8
  %48 = getelementptr inbounds %struct.fnic, %struct.fnic* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  ret void
}

declare dso_local i8* @vnic_dev_get_res_count(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
