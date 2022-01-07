; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_diag_ftp.c_diag_ftp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_diag_ftp.c_diag_ftp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmcdrv_ftp_cmdspec = type { i32, i32, i32, i32, i32 }
%struct.diag_ftp_ldfpl = type { i32, i64, i32, i32, i32, i32 }

@diag_ftp_rx_complete = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HMCDRV_FTP_FIDENT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@diag_ftp_subcode = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diag_ftp_cmd(%struct.hmcdrv_ftp_cmdspec* %0, i64* %1) #0 {
  %3 = alloca %struct.hmcdrv_ftp_cmdspec*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.diag_ftp_ldfpl*, align 8
  %6 = alloca i32, align 4
  store %struct.hmcdrv_ftp_cmdspec* %0, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = call i32 @init_completion(i32* @diag_ftp_rx_complete)
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = load i32, i32* @GFP_DMA, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @get_zeroed_page(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.diag_ftp_ldfpl*
  store %struct.diag_ftp_ldfpl* %13, %struct.diag_ftp_ldfpl** %5, align 8
  %14 = load %struct.diag_ftp_ldfpl*, %struct.diag_ftp_ldfpl** %5, align 8
  %15 = icmp ne %struct.diag_ftp_ldfpl* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %94

19:                                               ; preds = %2
  %20 = load %struct.diag_ftp_ldfpl*, %struct.diag_ftp_ldfpl** %5, align 8
  %21 = getelementptr inbounds %struct.diag_ftp_ldfpl, %struct.diag_ftp_ldfpl* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %24 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strlcpy(i32 %22, i32 %25, i32 4)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @HMCDRV_FTP_FIDENT_MAX, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %90

33:                                               ; preds = %19
  %34 = load %struct.diag_ftp_ldfpl*, %struct.diag_ftp_ldfpl** %5, align 8
  %35 = getelementptr inbounds %struct.diag_ftp_ldfpl, %struct.diag_ftp_ldfpl* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.diag_ftp_ldfpl*, %struct.diag_ftp_ldfpl** %5, align 8
  %37 = getelementptr inbounds %struct.diag_ftp_ldfpl, %struct.diag_ftp_ldfpl* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %39 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.diag_ftp_ldfpl*, %struct.diag_ftp_ldfpl** %5, align 8
  %42 = getelementptr inbounds %struct.diag_ftp_ldfpl, %struct.diag_ftp_ldfpl* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %44 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.diag_ftp_ldfpl*, %struct.diag_ftp_ldfpl** %5, align 8
  %47 = getelementptr inbounds %struct.diag_ftp_ldfpl, %struct.diag_ftp_ldfpl* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %49 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @virt_to_phys(i32 %50)
  %52 = load %struct.diag_ftp_ldfpl*, %struct.diag_ftp_ldfpl** %5, align 8
  %53 = getelementptr inbounds %struct.diag_ftp_ldfpl, %struct.diag_ftp_ldfpl* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.diag_ftp_ldfpl*, %struct.diag_ftp_ldfpl** %5, align 8
  %55 = load %struct.hmcdrv_ftp_cmdspec*, %struct.hmcdrv_ftp_cmdspec** %3, align 8
  %56 = getelementptr inbounds %struct.hmcdrv_ftp_cmdspec, %struct.hmcdrv_ftp_cmdspec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @diag_ftp_2c4(%struct.diag_ftp_ldfpl* %54, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %33
  br label %90

62:                                               ; preds = %33
  %63 = call i32 @wait_for_completion(i32* @diag_ftp_rx_complete)
  %64 = load i32, i32* @diag_ftp_subcode, align 4
  switch i32 %64, label %86 [
    i32 128, label %65
    i32 130, label %77
    i32 129, label %80
    i32 131, label %83
  ]

65:                                               ; preds = %62
  %66 = load %struct.diag_ftp_ldfpl*, %struct.diag_ftp_ldfpl** %5, align 8
  %67 = getelementptr inbounds %struct.diag_ftp_ldfpl, %struct.diag_ftp_ldfpl* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %6, align 4
  %69 = load i64*, i64** %4, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.diag_ftp_ldfpl*, %struct.diag_ftp_ldfpl** %5, align 8
  %73 = getelementptr inbounds %struct.diag_ftp_ldfpl, %struct.diag_ftp_ldfpl* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %4, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %65
  br label %89

77:                                               ; preds = %62
  %78 = load i32, i32* @EPERM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %89

80:                                               ; preds = %62
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %89

83:                                               ; preds = %62
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %89

86:                                               ; preds = %62
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %83, %80, %77, %76
  br label %90

90:                                               ; preds = %89, %61, %30
  %91 = load %struct.diag_ftp_ldfpl*, %struct.diag_ftp_ldfpl** %5, align 8
  %92 = ptrtoint %struct.diag_ftp_ldfpl* %91 to i64
  %93 = call i32 @free_page(i64 %92)
  br label %94

94:                                               ; preds = %90, %16
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @diag_ftp_2c4(%struct.diag_ftp_ldfpl*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
