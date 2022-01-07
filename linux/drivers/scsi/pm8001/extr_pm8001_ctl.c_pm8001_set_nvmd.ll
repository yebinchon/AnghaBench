; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_set_nvmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_set_nvmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)* }
%struct.pm8001_hba_info = type { i8*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.pm8001_ioctl_payload = type { i32, i32, i64, i32 }

@completion = common dso_local global i32 0, align 4
@FAIL_FILE_SIZE = common dso_local global i8* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FAIL_OUT_MEMORY = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm8001_set_nvmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_set_nvmd(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca %struct.pm8001_ioctl_payload*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %8 = load i32, i32* @completion, align 4
  %9 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %8)
  store i32 5143, i32* %7, align 4
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %11 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 4096
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i8*, i8** @FAIL_FILE_SIZE, align 8
  %18 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %19 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %82

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kzalloc(i32 %23, i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** @FAIL_OUT_MEMORY, align 8
  %30 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %31 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %82

34:                                               ; preds = %22
  %35 = load i32*, i32** %5, align 8
  %36 = bitcast i32* %35 to %struct.pm8001_ioctl_payload*
  store %struct.pm8001_ioctl_payload* %36, %struct.pm8001_ioctl_payload** %4, align 8
  %37 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %4, align 8
  %38 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %37, i32 0, i32 3
  %39 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %40 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %46 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memcpy(i32* %38, i32* %44, i32 %49)
  %51 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %52 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %4, align 8
  %57 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %4, align 8
  %59 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %4, align 8
  %61 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %63 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %62, i32 0, i32 1
  store i32* @completion, i32** %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PM8001_CHIP_DISP, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)*, i32 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)** %65, align 8
  %67 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %68 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %4, align 8
  %69 = call i32 %66(%struct.pm8001_hba_info* %67, %struct.pm8001_ioctl_payload* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %34
  %73 = load i8*, i8** @FAIL_OUT_MEMORY, align 8
  %74 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %75 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %78

76:                                               ; preds = %34
  %77 = call i32 @wait_for_completion(i32* @completion)
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @kfree(i32* %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %28, %16
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
