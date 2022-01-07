; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AdvBuildCarrierFreelist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AdvBuildCarrierFreelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv_dvc_var = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64, i8*, i8* }

@ADV_CARRIER_BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv_dvc_var*)* @AdvBuildCarrierFreelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AdvBuildCarrierFreelist(%struct.adv_dvc_var* %0) #0 {
  %2 = alloca %struct.adv_dvc_var*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adv_dvc_var* %0, %struct.adv_dvc_var** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @ADV_CARRIER_BUFSIZE, align 4
  %9 = sext i32 %8 to i64
  %10 = udiv i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %69, %1
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %2, align 8
  %22 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %2, align 8
  %29 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i8* %27, i8** %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %2, align 8
  %38 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i8* %36, i8** %43, align 8
  %44 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %2, align 8
  %45 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %16
  %60 = load i32, i32* %4, align 4
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %2, align 8
  %63 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i8* %61, i8** %68, align 8
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %12

72:                                               ; preds = %12
  %73 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %2, align 8
  %74 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 1
  %77 = load %struct.adv_dvc_var*, %struct.adv_dvc_var** %2, align 8
  %78 = getelementptr inbounds %struct.adv_dvc_var, %struct.adv_dvc_var* %77, i32 0, i32 2
  store %struct.TYPE_2__* %76, %struct.TYPE_2__** %78, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
