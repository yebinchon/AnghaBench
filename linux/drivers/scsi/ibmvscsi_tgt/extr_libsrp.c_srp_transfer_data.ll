; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_libsrp.c_srp_transfer_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_libsrp.c_srp_transfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvscsis_cmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.srp_cmd = type { i32, i32, i32 }
%struct.srp_direct_buf = type { i32 }
%struct.srp_indirect_buf = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown format %d %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srp_transfer_data(%struct.ibmvscsis_cmd* %0, %struct.srp_cmd* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibmvscsis_cmd*, align 8
  %8 = alloca %struct.srp_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.srp_direct_buf*, align 8
  %13 = alloca %struct.srp_indirect_buf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ibmvscsis_cmd* %0, %struct.ibmvscsis_cmd** %7, align 8
  store %struct.srp_cmd* %1, %struct.srp_cmd** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %97

24:                                               ; preds = %5
  %25 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %26 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, -4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %30 = call i32 @srp_cmd_direction(%struct.srp_cmd* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %36 = call i64 @data_out_desc_size(%struct.srp_cmd* %35)
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %34, %24
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %47 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 4
  store i32 %49, i32* %17, align 4
  br label %55

50:                                               ; preds = %41
  %51 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %52 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 15
  store i32 %54, i32* %17, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %17, align 4
  switch i32 %56, label %89 [
    i32 128, label %57
    i32 130, label %58
    i32 129, label %73
  ]

57:                                               ; preds = %55
  br label %95

58:                                               ; preds = %55
  %59 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %60 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct.srp_direct_buf*
  store %struct.srp_direct_buf* %65, %struct.srp_direct_buf** %12, align 8
  %66 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %7, align 8
  %67 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %12, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @srp_direct_data(%struct.ibmvscsis_cmd* %66, %struct.srp_direct_buf* %67, i32 %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %16, align 4
  br label %95

73:                                               ; preds = %55
  %74 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %75 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to %struct.srp_indirect_buf*
  store %struct.srp_indirect_buf* %80, %struct.srp_indirect_buf** %13, align 8
  %81 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %7, align 8
  %82 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %83 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @srp_indirect_data(%struct.ibmvscsis_cmd* %81, %struct.srp_cmd* %82, %struct.srp_indirect_buf* %83, i32 %84, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %16, align 4
  br label %95

89:                                               ; preds = %55
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %89, %73, %58, %57
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %95, %23
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @srp_cmd_direction(%struct.srp_cmd*) #1

declare dso_local i64 @data_out_desc_size(%struct.srp_cmd*) #1

declare dso_local i32 @srp_direct_data(%struct.ibmvscsis_cmd*, %struct.srp_direct_buf*, i32, i32, i32, i32) #1

declare dso_local i32 @srp_indirect_data(%struct.ibmvscsis_cmd*, %struct.srp_cmd*, %struct.srp_indirect_buf*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
