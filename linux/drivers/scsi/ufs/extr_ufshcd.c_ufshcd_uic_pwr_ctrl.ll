; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_uic_pwr_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_uic_pwr_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, %struct.TYPE_2__*, %struct.completion*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.completion = type { i32 }
%struct.uic_command = type { i64, i32 }

@REG_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@UIC_COMMAND_COMPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"pwr ctrl cmd 0x%x with mode 0x%x uic error %d\0A\00", align 1
@UIC_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"pwr ctrl cmd 0x%x with mode 0x%x completion timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@PWR_LOCAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"pwr ctrl cmd 0x%x failed, host upmcrs:0x%x\0A\00", align 1
@PWR_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, %struct.uic_command*)* @ufshcd_uic_pwr_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_uic_pwr_ctrl(%struct.ufs_hba* %0, %struct.uic_command* %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca %struct.uic_command*, align 8
  %5 = alloca %struct.completion, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store %struct.uic_command* %1, %struct.uic_command** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %11 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = call i32 @init_completion(%struct.completion* %5)
  %14 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %15 = call i32 @ufshcd_add_delay_before_dme_cmd(%struct.ufs_hba* %14)
  %16 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %17 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32 %20, i64 %21)
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %24 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %23, i32 0, i32 2
  store %struct.completion* %5, %struct.completion** %24, align 8
  %25 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %26 = load i32, i32* @REG_INTERRUPT_ENABLE, align 4
  %27 = call i32 @ufshcd_readl(%struct.ufs_hba* %25, i32 %26)
  %28 = load i32, i32* @UIC_COMMAND_COMPL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %33 = load i32, i32* @UIC_COMMAND_COMPL, align 4
  %34 = call i32 @ufshcd_disable_intr(%struct.ufs_hba* %32, i32 %33)
  %35 = call i32 (...) @wmb()
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %31, %2
  %37 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %38 = load %struct.uic_command*, %struct.uic_command** %4, align 8
  %39 = call i32 @__ufshcd_send_uic_cmd(%struct.ufs_hba* %37, %struct.uic_command* %38, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %41 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32 %44, i64 %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %36
  %50 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %51 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.uic_command*, %struct.uic_command** %4, align 8
  %54 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.uic_command*, %struct.uic_command** %4, align 8
  %57 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i8*, i32, i64, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %58, i32 %59)
  br label %107

61:                                               ; preds = %36
  %62 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %63 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %62, i32 0, i32 2
  %64 = load %struct.completion*, %struct.completion** %63, align 8
  %65 = load i32, i32* @UIC_CMD_TIMEOUT, align 4
  %66 = call i32 @msecs_to_jiffies(i32 %65)
  %67 = call i32 @wait_for_completion_timeout(%struct.completion* %64, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %61
  %70 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %71 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.uic_command*, %struct.uic_command** %4, align 8
  %74 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.uic_command*, %struct.uic_command** %4, align 8
  %77 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i32, i8*, i32, i64, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %75, i64 %78)
  %80 = load i32, i32* @ETIMEDOUT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %107

82:                                               ; preds = %61
  %83 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %84 = call i64 @ufshcd_get_upmcrs(%struct.ufs_hba* %83)
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @PWR_LOCAL, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %82
  %89 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %90 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.uic_command*, %struct.uic_command** %4, align 8
  %93 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 (i32, i8*, i32, i64, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %94, i64 %95)
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @PWR_OK, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i64, i64* %7, align 8
  br label %103

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i64 [ %101, %100 ], [ -1, %102 ]
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %103, %82
  br label %107

107:                                              ; preds = %106, %69, %49
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %112 = call i32 @ufshcd_print_host_state(%struct.ufs_hba* %111)
  %113 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %114 = call i32 @ufshcd_print_pwr_info(%struct.ufs_hba* %113)
  %115 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %116 = call i32 @ufshcd_print_host_regs(%struct.ufs_hba* %115)
  br label %117

117:                                              ; preds = %110, %107
  %118 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %119 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @spin_lock_irqsave(i32 %122, i64 %123)
  %125 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %126 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %125, i32 0, i32 3
  store i32* null, i32** %126, align 8
  %127 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %128 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %127, i32 0, i32 2
  store %struct.completion* null, %struct.completion** %128, align 8
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %117
  %132 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %133 = load i32, i32* @UIC_COMMAND_COMPL, align 4
  %134 = call i32 @ufshcd_enable_intr(%struct.ufs_hba* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %117
  %136 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %137 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %6, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32 %140, i64 %141)
  %143 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %144 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %143, i32 0, i32 0
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @ufshcd_add_delay_before_dme_cmd(%struct.ufs_hba*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ufshcd_readl(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_disable_intr(%struct.ufs_hba*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @__ufshcd_send_uic_cmd(%struct.ufs_hba*, %struct.uic_command*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @ufshcd_get_upmcrs(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_print_host_state(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_print_pwr_info(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_print_host_regs(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_enable_intr(%struct.ufs_hba*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
