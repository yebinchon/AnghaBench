; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_get_safw_ciss_luns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_get_safw_ciss_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { %struct.aac_ciss_phys_luns_resp* }
%struct.aac_ciss_phys_luns_resp = type { i32 }
%struct.aac_srb = type { i32*, i32 }
%struct.aac_srb_unit = type { %struct.aac_srb }

@ENOMEM = common dso_local global i32 0, align 4
@AAC_MAX_TARGETS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SRB_DataIn = common dso_local global i32 0, align 4
@CISS_REPORT_PHYSICAL_LUNS = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*)* @aac_get_safw_ciss_luns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_get_safw_ciss_luns(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.aac_srb*, align 8
  %6 = alloca %struct.aac_srb_unit, align 8
  %7 = alloca %struct.aac_ciss_phys_luns_resp*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @AAC_MAX_TARGETS, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 4, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.aac_ciss_phys_luns_resp* @kmalloc(i32 %16, i32 %17)
  store %struct.aac_ciss_phys_luns_resp* %18, %struct.aac_ciss_phys_luns_resp** %7, align 8
  %19 = load %struct.aac_ciss_phys_luns_resp*, %struct.aac_ciss_phys_luns_resp** %7, align 8
  %20 = icmp eq %struct.aac_ciss_phys_luns_resp* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %77

22:                                               ; preds = %1
  %23 = call i32 @memset(%struct.aac_srb_unit* %6, i32 0, i32 16)
  %24 = getelementptr inbounds %struct.aac_srb_unit, %struct.aac_srb_unit* %6, i32 0, i32 0
  store %struct.aac_srb* %24, %struct.aac_srb** %5, align 8
  %25 = load i32, i32* @SRB_DataIn, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  %28 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @CISS_REPORT_PHYSICAL_LUNS, align 4
  %30 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  %31 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  %35 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 2, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  %44 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  %52 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 9
  store i32 %50, i32* %54, align 4
  %55 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %56 = load %struct.aac_ciss_phys_luns_resp*, %struct.aac_ciss_phys_luns_resp** %7, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @aac_send_safw_bmic_cmd(%struct.aac_dev* %55, %struct.aac_srb_unit* %6, %struct.aac_ciss_phys_luns_resp* %56, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %22
  br label %79

65:                                               ; preds = %22
  %66 = load %struct.aac_ciss_phys_luns_resp*, %struct.aac_ciss_phys_luns_resp** %7, align 8
  %67 = getelementptr inbounds %struct.aac_ciss_phys_luns_resp, %struct.aac_ciss_phys_luns_resp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 2
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @ENOMSG, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %79

73:                                               ; preds = %65
  %74 = load %struct.aac_ciss_phys_luns_resp*, %struct.aac_ciss_phys_luns_resp** %7, align 8
  %75 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %76 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %75, i32 0, i32 0
  store %struct.aac_ciss_phys_luns_resp* %74, %struct.aac_ciss_phys_luns_resp** %76, align 8
  br label %77

77:                                               ; preds = %79, %73, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78

79:                                               ; preds = %70, %64
  %80 = load %struct.aac_ciss_phys_luns_resp*, %struct.aac_ciss_phys_luns_resp** %7, align 8
  %81 = call i32 @kfree(%struct.aac_ciss_phys_luns_resp* %80)
  br label %77
}

declare dso_local %struct.aac_ciss_phys_luns_resp* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.aac_srb_unit*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @aac_send_safw_bmic_cmd(%struct.aac_dev*, %struct.aac_srb_unit*, %struct.aac_ciss_phys_luns_resp*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.aac_ciss_phys_luns_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
