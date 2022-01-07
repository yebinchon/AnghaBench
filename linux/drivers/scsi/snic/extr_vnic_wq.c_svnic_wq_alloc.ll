; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_vnic_wq.c_svnic_wq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_vnic_wq.c_svnic_wq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }
%struct.vnic_wq = type { i32, %struct.vnic_dev* }

@RES_TYPE_WQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to hook WQ[%d] resource\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svnic_wq_alloc(%struct.vnic_dev* %0, %struct.vnic_wq* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnic_dev*, align 8
  %8 = alloca %struct.vnic_wq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %7, align 8
  store %struct.vnic_wq* %1, %struct.vnic_wq** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.vnic_wq*, %struct.vnic_wq** %8, align 8
  %15 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %17 = load %struct.vnic_wq*, %struct.vnic_wq** %8, align 8
  %18 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %17, i32 0, i32 1
  store %struct.vnic_dev* %16, %struct.vnic_dev** %18, align 8
  %19 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %20 = load %struct.vnic_wq*, %struct.vnic_wq** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @RES_TYPE_WQ, align 4
  %23 = call i32 @vnic_wq_get_ctrl(%struct.vnic_dev* %19, %struct.vnic_wq* %20, i32 %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %53

30:                                               ; preds = %5
  %31 = load %struct.vnic_wq*, %struct.vnic_wq** %8, align 8
  %32 = call i32 @svnic_wq_disable(%struct.vnic_wq* %31)
  %33 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %34 = load %struct.vnic_wq*, %struct.vnic_wq** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @vnic_wq_alloc_ring(%struct.vnic_dev* %33, %struct.vnic_wq* %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %53

43:                                               ; preds = %30
  %44 = load %struct.vnic_wq*, %struct.vnic_wq** %8, align 8
  %45 = call i32 @vnic_wq_alloc_bufs(%struct.vnic_wq* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.vnic_wq*, %struct.vnic_wq** %8, align 8
  %50 = call i32 @svnic_wq_free(%struct.vnic_wq* %49)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %53

52:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %48, %41, %26
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @vnic_wq_get_ctrl(%struct.vnic_dev*, %struct.vnic_wq*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @svnic_wq_disable(%struct.vnic_wq*) #1

declare dso_local i32 @vnic_wq_alloc_ring(%struct.vnic_dev*, %struct.vnic_wq*, i32, i32, i32) #1

declare dso_local i32 @vnic_wq_alloc_bufs(%struct.vnic_wq*) #1

declare dso_local i32 @svnic_wq_free(%struct.vnic_wq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
