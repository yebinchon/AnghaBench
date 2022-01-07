; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_print_host_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_print_host_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ufs_hba*)* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@UFSHCI_REG_SPACE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"host_regs: \00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"hba->ufs_version = 0x%x, hba->capabilities = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"hba->outstanding_reqs = 0x%x, hba->outstanding_tasks = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"last_hibern8_exit_tstamp at %lld us, hibern8_exit_cnt = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"pa_err\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"dl_err\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"nl_err\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"tl_err\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"dme_err\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"auto_hibern8_err\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"fatal_err\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"link_startup_fail\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"resume_fail\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"suspend_fail\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"dev_reset\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"host_reset\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"task_abort\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufshcd_print_host_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_print_host_regs(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %3 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %4 = load i32, i32* @UFSHCI_REG_SPACE_SIZE, align 4
  %5 = call i32 @ufshcd_dump_regs(%struct.ufs_hba* %3, i32 0, i32 %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %7 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %10 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %13 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_err(i32 %8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %17 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %20 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %24 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %29 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %32 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 14
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ktime_to_us(i32 %34)
  %36 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %37 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32 %39)
  %41 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %42 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %43 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 12
  %45 = call i32 @ufshcd_print_err_hist(%struct.ufs_hba* %41, i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %47 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %48 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 11
  %50 = call i32 @ufshcd_print_err_hist(%struct.ufs_hba* %46, i32* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %51 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %52 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %53 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 10
  %55 = call i32 @ufshcd_print_err_hist(%struct.ufs_hba* %51, i32* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %56 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %57 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %58 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 9
  %60 = call i32 @ufshcd_print_err_hist(%struct.ufs_hba* %56, i32* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %61 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %62 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %63 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 8
  %65 = call i32 @ufshcd_print_err_hist(%struct.ufs_hba* %61, i32* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %66 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %67 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %68 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 7
  %70 = call i32 @ufshcd_print_err_hist(%struct.ufs_hba* %66, i32* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %71 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %72 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %73 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 6
  %75 = call i32 @ufshcd_print_err_hist(%struct.ufs_hba* %71, i32* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %76 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %77 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %78 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 5
  %80 = call i32 @ufshcd_print_err_hist(%struct.ufs_hba* %76, i32* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %81 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %82 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %83 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = call i32 @ufshcd_print_err_hist(%struct.ufs_hba* %81, i32* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %86 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %87 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %88 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = call i32 @ufshcd_print_err_hist(%struct.ufs_hba* %86, i32* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %91 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %92 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %93 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = call i32 @ufshcd_print_err_hist(%struct.ufs_hba* %91, i32* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %96 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %97 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %98 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = call i32 @ufshcd_print_err_hist(%struct.ufs_hba* %96, i32* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %101 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %102 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %103 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = call i32 @ufshcd_print_err_hist(%struct.ufs_hba* %101, i32* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %106 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %107 = call i32 @ufshcd_print_clk_freqs(%struct.ufs_hba* %106)
  %108 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %109 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = icmp ne %struct.TYPE_4__* %110, null
  br i1 %111, label %112, label %127

112:                                              ; preds = %1
  %113 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %114 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32 (%struct.ufs_hba*)*, i32 (%struct.ufs_hba*)** %116, align 8
  %118 = icmp ne i32 (%struct.ufs_hba*)* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %112
  %120 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %121 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32 (%struct.ufs_hba*)*, i32 (%struct.ufs_hba*)** %123, align 8
  %125 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %126 = call i32 %124(%struct.ufs_hba* %125)
  br label %127

127:                                              ; preds = %119, %112, %1
  ret void
}

declare dso_local i32 @ufshcd_dump_regs(%struct.ufs_hba*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ufshcd_print_err_hist(%struct.ufs_hba*, i32*, i8*) #1

declare dso_local i32 @ufshcd_print_clk_freqs(%struct.ufs_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
