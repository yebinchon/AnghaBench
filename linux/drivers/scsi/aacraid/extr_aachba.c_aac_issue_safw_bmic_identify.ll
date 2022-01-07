; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_issue_safw_bmic_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_issue_safw_bmic_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32 }
%struct.aac_ciss_identify_pd = type { i32 }
%struct.aac_srb_unit = type { %struct.aac_srb }
%struct.aac_srb = type { i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SRB_DataIn = common dso_local global i32 0, align 4
@AAC_MAX_LUN = common dso_local global i32 0, align 4
@CISS_IDENTIFY_PHYSICAL_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*, %struct.aac_ciss_identify_pd**, i32, i32)* @aac_issue_safw_bmic_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_issue_safw_bmic_identify(%struct.aac_dev* %0, %struct.aac_ciss_identify_pd** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.aac_dev*, align 8
  %6 = alloca %struct.aac_ciss_identify_pd**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.aac_srb_unit, align 8
  %12 = alloca %struct.aac_srb*, align 8
  %13 = alloca %struct.aac_ciss_identify_pd*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %5, align 8
  store %struct.aac_ciss_identify_pd** %1, %struct.aac_ciss_identify_pd*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  store i32 4, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.aac_ciss_identify_pd* @kmalloc(i32 %16, i32 %17)
  store %struct.aac_ciss_identify_pd* %18, %struct.aac_ciss_identify_pd** %13, align 8
  %19 = load %struct.aac_ciss_identify_pd*, %struct.aac_ciss_identify_pd** %13, align 8
  %20 = icmp ne %struct.aac_ciss_identify_pd* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %59

22:                                               ; preds = %4
  %23 = call i32 @memset(%struct.aac_srb_unit* %11, i32 0, i32 16)
  %24 = getelementptr inbounds %struct.aac_srb_unit, %struct.aac_srb_unit* %11, i32 0, i32 0
  store %struct.aac_srb* %24, %struct.aac_srb** %12, align 8
  %25 = load i32, i32* @SRB_DataIn, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load %struct.aac_srb*, %struct.aac_srb** %12, align 8
  %28 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.aac_srb*, %struct.aac_srb** %12, align 8
  %30 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 38, i32* %32, align 4
  %33 = load i32, i32* @AAC_MAX_LUN, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %33, %34
  %36 = and i32 %35, 255
  %37 = load %struct.aac_srb*, %struct.aac_srb** %12, align 8
  %38 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @CISS_IDENTIFY_PHYSICAL_DEVICE, align 4
  %42 = load %struct.aac_srb*, %struct.aac_srb** %12, align 8
  %43 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 6
  store i32 %41, i32* %45, align 4
  %46 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %47 = load %struct.aac_ciss_identify_pd*, %struct.aac_ciss_identify_pd** %13, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @aac_send_safw_bmic_cmd(%struct.aac_dev* %46, %struct.aac_srb_unit* %11, %struct.aac_ciss_identify_pd* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %22
  br label %61

56:                                               ; preds = %22
  %57 = load %struct.aac_ciss_identify_pd*, %struct.aac_ciss_identify_pd** %13, align 8
  %58 = load %struct.aac_ciss_identify_pd**, %struct.aac_ciss_identify_pd*** %6, align 8
  store %struct.aac_ciss_identify_pd* %57, %struct.aac_ciss_identify_pd** %58, align 8
  br label %59

59:                                               ; preds = %61, %56, %21
  %60 = load i32, i32* %9, align 4
  ret i32 %60

61:                                               ; preds = %55
  %62 = load %struct.aac_ciss_identify_pd*, %struct.aac_ciss_identify_pd** %13, align 8
  %63 = call i32 @kfree(%struct.aac_ciss_identify_pd* %62)
  br label %59
}

declare dso_local %struct.aac_ciss_identify_pd* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.aac_srb_unit*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @aac_send_safw_bmic_cmd(%struct.aac_dev*, %struct.aac_srb_unit*, %struct.aac_ciss_identify_pd*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.aac_ciss_identify_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
