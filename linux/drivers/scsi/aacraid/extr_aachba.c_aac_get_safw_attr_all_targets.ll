; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_get_safw_attr_all_targets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_get_safw_attr_all_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.aac_ciss_identify_pd* }
%struct.aac_ciss_identify_pd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*)* @aac_get_safw_attr_all_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_get_safw_attr_all_targets(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aac_ciss_identify_pd*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  store i32 0, i32* %4, align 4
  store %struct.aac_ciss_identify_pd* null, %struct.aac_ciss_identify_pd** %8, align 8
  %9 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %10 = call i32 @aac_get_safw_phys_lun_count(%struct.aac_dev* %9)
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %45, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @aac_get_safw_phys_bus(%struct.aac_dev* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @aac_get_safw_phys_target(%struct.aac_dev* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @aac_issue_safw_bmic_identify(%struct.aac_dev* %22, %struct.aac_ciss_identify_pd** %8, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %51

32:                                               ; preds = %15
  %33 = load %struct.aac_ciss_identify_pd*, %struct.aac_ciss_identify_pd** %8, align 8
  %34 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %35 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store %struct.aac_ciss_identify_pd* %33, %struct.aac_ciss_identify_pd** %44, align 8
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %11

48:                                               ; preds = %11
  br label %49

49:                                               ; preds = %51, %48
  %50 = load i32, i32* %4, align 4
  ret i32 %50

51:                                               ; preds = %31
  %52 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @aac_free_safw_all_identify_resp(%struct.aac_dev* %52, i32 %53)
  br label %49
}

declare dso_local i32 @aac_get_safw_phys_lun_count(%struct.aac_dev*) #1

declare dso_local i32 @aac_get_safw_phys_bus(%struct.aac_dev*, i32) #1

declare dso_local i32 @aac_get_safw_phys_target(%struct.aac_dev*, i32) #1

declare dso_local i32 @aac_issue_safw_bmic_identify(%struct.aac_dev*, %struct.aac_ciss_identify_pd**, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @aac_free_safw_all_identify_resp(%struct.aac_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
