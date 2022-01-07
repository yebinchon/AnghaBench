; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_cleanup_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_cleanup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.ulp_cid_info**, %struct.TYPE_2__, %struct.ulp_cid_info*, %struct.ulp_cid_info*, %struct.ulp_cid_info*, %struct.ulp_cid_info* }
%struct.TYPE_2__ = type { i32 }
%struct.ulp_cid_info = type { %struct.ulp_cid_info* }

@BEISCSI_ULP_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @beiscsi_cleanup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_cleanup_port(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.ulp_cid_info*, align 8
  %4 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  store %struct.ulp_cid_info* null, %struct.ulp_cid_info** %3, align 8
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %5, i32 0, i32 5
  %7 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %6, align 8
  %8 = call i32 @kfree(%struct.ulp_cid_info* %7)
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %10 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %9, i32 0, i32 4
  %11 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %10, align 8
  %12 = call i32 @kfree(%struct.ulp_cid_info* %11)
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %14 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %13, i32 0, i32 3
  %15 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %14, align 8
  %16 = call i32 @kfree(%struct.ulp_cid_info* %15)
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %18 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %17, i32 0, i32 2
  %19 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %18, align 8
  %20 = call i32 @kfree(%struct.ulp_cid_info* %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %58, %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @BEISCSI_ULP_COUNT, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %28 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast i32* %29 to i8*
  %31 = call i64 @test_bit(i32 %26, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %25
  %34 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %35 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %34, i32 0, i32 0
  %36 = load %struct.ulp_cid_info**, %struct.ulp_cid_info*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ulp_cid_info*, %struct.ulp_cid_info** %36, i64 %38
  %40 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %39, align 8
  store %struct.ulp_cid_info* %40, %struct.ulp_cid_info** %3, align 8
  %41 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %3, align 8
  %42 = icmp ne %struct.ulp_cid_info* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %33
  %44 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %3, align 8
  %45 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %44, i32 0, i32 0
  %46 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %45, align 8
  %47 = call i32 @kfree(%struct.ulp_cid_info* %46)
  %48 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %3, align 8
  %49 = call i32 @kfree(%struct.ulp_cid_info* %48)
  %50 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %51 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %50, i32 0, i32 0
  %52 = load %struct.ulp_cid_info**, %struct.ulp_cid_info*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ulp_cid_info*, %struct.ulp_cid_info** %52, i64 %54
  store %struct.ulp_cid_info* null, %struct.ulp_cid_info** %55, align 8
  br label %56

56:                                               ; preds = %43, %33
  br label %57

57:                                               ; preds = %56, %25
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %21

61:                                               ; preds = %21
  ret void
}

declare dso_local i32 @kfree(%struct.ulp_cid_info*) #1

declare dso_local i64 @test_bit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
