; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_ctrl_product_details.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_ctrl_product_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i8*, i8*, i8* }
%struct.bmic_identify_controller = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"-%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_get_ctrl_product_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_get_ctrl_product_details(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmic_identify_controller*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.bmic_identify_controller* @kmalloc(i32 16, i32 %6)
  store %struct.bmic_identify_controller* %7, %struct.bmic_identify_controller** %5, align 8
  %8 = load %struct.bmic_identify_controller*, %struct.bmic_identify_controller** %5, align 8
  %9 = icmp ne %struct.bmic_identify_controller* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %71

13:                                               ; preds = %1
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %15 = load %struct.bmic_identify_controller*, %struct.bmic_identify_controller** %5, align 8
  %16 = call i32 @pqi_identify_controller(%struct.pqi_ctrl_info* %14, %struct.bmic_identify_controller* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %67

20:                                               ; preds = %13
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %22 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.bmic_identify_controller*, %struct.bmic_identify_controller** %5, align 8
  %25 = getelementptr inbounds %struct.bmic_identify_controller, %struct.bmic_identify_controller* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i8* %23, i32 %26, i32 4)
  %28 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %29 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  store i8 0, i8* %31, align 1
  %32 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %33 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %36 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  %41 = load %struct.bmic_identify_controller*, %struct.bmic_identify_controller** %5, align 8
  %42 = getelementptr inbounds %struct.bmic_identify_controller, %struct.bmic_identify_controller* %41, i32 0, i32 2
  %43 = call i32 @get_unaligned_le16(i32* %42)
  %44 = call i32 @snprintf(i8* %40, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %46 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.bmic_identify_controller*, %struct.bmic_identify_controller** %5, align 8
  %49 = getelementptr inbounds %struct.bmic_identify_controller, %struct.bmic_identify_controller* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i8* %47, i32 %50, i32 4)
  %52 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %53 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  store i8 0, i8* %55, align 1
  %56 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %57 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.bmic_identify_controller*, %struct.bmic_identify_controller** %5, align 8
  %60 = getelementptr inbounds %struct.bmic_identify_controller, %struct.bmic_identify_controller* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i8* %58, i32 %61, i32 4)
  %63 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %64 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %20, %19
  %68 = load %struct.bmic_identify_controller*, %struct.bmic_identify_controller** %5, align 8
  %69 = call i32 @kfree(%struct.bmic_identify_controller* %68)
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %10
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.bmic_identify_controller* @kmalloc(i32, i32) #1

declare dso_local i32 @pqi_identify_controller(%struct.pqi_ctrl_info*, %struct.bmic_identify_controller*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @kfree(%struct.bmic_identify_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
