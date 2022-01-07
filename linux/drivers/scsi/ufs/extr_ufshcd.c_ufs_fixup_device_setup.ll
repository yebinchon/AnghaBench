; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufs_fixup_device_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufs_fixup_device_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_dev_fix = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ufs_hba = type { i32 }
%struct.ufs_dev_desc = type { i64, i64 }

@ufs_fixups = common dso_local global %struct.ufs_dev_fix* null, align 8
@UFS_ANY_VENDOR = common dso_local global i64 0, align 8
@UFS_ANY_MODEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*, %struct.ufs_dev_desc*)* @ufs_fixup_device_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_fixup_device_setup(%struct.ufs_hba* %0, %struct.ufs_dev_desc* %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca %struct.ufs_dev_desc*, align 8
  %5 = alloca %struct.ufs_dev_fix*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store %struct.ufs_dev_desc* %1, %struct.ufs_dev_desc** %4, align 8
  %6 = load %struct.ufs_dev_fix*, %struct.ufs_dev_fix** @ufs_fixups, align 8
  store %struct.ufs_dev_fix* %6, %struct.ufs_dev_fix** %5, align 8
  br label %7

7:                                                ; preds = %60, %2
  %8 = load %struct.ufs_dev_fix*, %struct.ufs_dev_fix** %5, align 8
  %9 = getelementptr inbounds %struct.ufs_dev_fix, %struct.ufs_dev_fix* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %7
  %13 = load %struct.ufs_dev_fix*, %struct.ufs_dev_fix** %5, align 8
  %14 = getelementptr inbounds %struct.ufs_dev_fix, %struct.ufs_dev_fix* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ufs_dev_desc*, %struct.ufs_dev_desc** %4, align 8
  %18 = getelementptr inbounds %struct.ufs_dev_desc, %struct.ufs_dev_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %12
  %22 = load %struct.ufs_dev_fix*, %struct.ufs_dev_fix** %5, align 8
  %23 = getelementptr inbounds %struct.ufs_dev_fix, %struct.ufs_dev_fix* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UFS_ANY_VENDOR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %21, %12
  %29 = load %struct.ufs_dev_desc*, %struct.ufs_dev_desc** %4, align 8
  %30 = getelementptr inbounds %struct.ufs_dev_desc, %struct.ufs_dev_desc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.ufs_dev_fix*, %struct.ufs_dev_fix** %5, align 8
  %35 = getelementptr inbounds %struct.ufs_dev_fix, %struct.ufs_dev_fix* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ufs_dev_desc*, %struct.ufs_dev_desc** %4, align 8
  %39 = getelementptr inbounds %struct.ufs_dev_desc, %struct.ufs_dev_desc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @STR_PRFX_EQUAL(i32 %37, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %33, %28
  %44 = load %struct.ufs_dev_fix*, %struct.ufs_dev_fix** %5, align 8
  %45 = getelementptr inbounds %struct.ufs_dev_fix, %struct.ufs_dev_fix* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @UFS_ANY_MODEL, align 4
  %49 = call i32 @strcmp(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %43, %33
  %52 = load %struct.ufs_dev_fix*, %struct.ufs_dev_fix** %5, align 8
  %53 = getelementptr inbounds %struct.ufs_dev_fix, %struct.ufs_dev_fix* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %56 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %51, %43, %21
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.ufs_dev_fix*, %struct.ufs_dev_fix** %5, align 8
  %62 = getelementptr inbounds %struct.ufs_dev_fix, %struct.ufs_dev_fix* %61, i32 1
  store %struct.ufs_dev_fix* %62, %struct.ufs_dev_fix** %5, align 8
  br label %7

63:                                               ; preds = %7
  ret void
}

declare dso_local i64 @STR_PRFX_EQUAL(i32, i64) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
