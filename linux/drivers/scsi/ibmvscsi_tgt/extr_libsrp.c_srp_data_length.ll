; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_libsrp.c_srp_data_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_libsrp.c_srp_data_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_cmd = type { i32, i32, i32 }
%struct.srp_direct_buf = type { i32 }
%struct.srp_indirect_buf = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid data format %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srp_data_length(%struct.srp_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.srp_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.srp_direct_buf*, align 8
  %6 = alloca %struct.srp_indirect_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.srp_cmd* %0, %struct.srp_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.srp_cmd*, %struct.srp_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, -4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DMA_TO_DEVICE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.srp_cmd*, %struct.srp_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 4
  store i32 %21, i32* %9, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load %struct.srp_cmd*, %struct.srp_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 15
  store i32 %26, i32* %9, align 4
  %27 = load %struct.srp_cmd*, %struct.srp_cmd** %3, align 8
  %28 = call i64 @data_out_desc_size(%struct.srp_cmd* %27)
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %22, %17
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %60 [
    i32 128, label %35
    i32 130, label %36
    i32 129, label %48
  ]

35:                                               ; preds = %33
  br label %63

36:                                               ; preds = %33
  %37 = load %struct.srp_cmd*, %struct.srp_cmd** %3, align 8
  %38 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to %struct.srp_direct_buf*
  store %struct.srp_direct_buf* %43, %struct.srp_direct_buf** %5, align 8
  %44 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %5, align 8
  %45 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  store i32 %47, i32* %7, align 4
  br label %63

48:                                               ; preds = %33
  %49 = load %struct.srp_cmd*, %struct.srp_cmd** %3, align 8
  %50 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.srp_indirect_buf*
  store %struct.srp_indirect_buf* %55, %struct.srp_indirect_buf** %6, align 8
  %56 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %6, align 8
  %57 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be32_to_cpu(i32 %58)
  store i32 %59, i32* %7, align 4
  br label %63

60:                                               ; preds = %33
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %48, %36, %35
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i64 @data_out_desc_size(%struct.srp_cmd*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
