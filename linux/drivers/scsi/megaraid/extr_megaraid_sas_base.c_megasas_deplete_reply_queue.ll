; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_deplete_reply_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_deplete_reply_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i64, i32, %struct.TYPE_4__*, i32, i32, i32, i64, %struct.TYPE_3__*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { {}*, i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@MFI_INTR_FLAG_FIRMWARE_STATE_CHANGE = common dso_local global i32 0, align 4
@MFI_STATE_MASK = common dso_local global i32 0, align 4
@MFI_STATE_FAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fw state:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"wait adp restart\0A\00", align 1
@PCI_DEVICE_ID_LSI_SAS1064R = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_DELL_PERC5 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_LSI_VERDE_ZCR = common dso_local global i64 0, align 8
@MEGASAS_ADPRESET_INPROG_SIGN = common dso_local global i32 0, align 4
@MEGASAS_ADPRESET_SM_INFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"fwState=%x, stage:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"fwstate:%x, dis_OCR=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*, i32)* @megasas_deplete_reply_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_deplete_reply_queue(%struct.megasas_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %9 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %8, i32 0, i32 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.megasas_instance*, i32)**
  %13 = load i32 (%struct.megasas_instance*, i32)*, i32 (%struct.megasas_instance*, i32)** %12, align 8
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %15 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %16 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = call i32 %13(%struct.megasas_instance* %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %21, i32* %3, align 4
  br label %160

22:                                               ; preds = %2
  %23 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %24 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %23, i32 0, i32 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)** %26, align 8
  %28 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %29 = call i32 %27(%struct.megasas_instance* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %34 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %160

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %43 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MFI_INTR_FLAG_FIRMWARE_STATE_CHANGE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %155

48:                                               ; preds = %40
  %49 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %50 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %49, i32 0, i32 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)** %52, align 8
  %54 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %55 = call i32 %53(%struct.megasas_instance* %54)
  %56 = load i32, i32* @MFI_STATE_MASK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @MFI_STATE_FAULT, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %48
  %62 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %63 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i32*, i8*, ...) @dev_notice(i32* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %61, %48
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @MFI_STATE_FAULT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %144

72:                                               ; preds = %68
  %73 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %74 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %144

77:                                               ; preds = %72
  %78 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %79 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = call i32 (i32*, i8*, ...) @dev_notice(i32* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %84 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PCI_DEVICE_ID_LSI_SAS1064R, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %106, label %90

90:                                               ; preds = %77
  %91 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %92 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PCI_DEVICE_ID_DELL_PERC5, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %90
  %99 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %100 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PCI_DEVICE_ID_LSI_VERDE_ZCR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %98, %90, %77
  %107 = load i32, i32* @MEGASAS_ADPRESET_INPROG_SIGN, align 4
  %108 = call i32 @cpu_to_le32(i32 %107)
  %109 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %110 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %109, i32 0, i32 9
  %111 = load i32*, i32** %110, align 8
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %106, %98
  %113 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %114 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %113, i32 0, i32 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)** %116, align 8
  %118 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %119 = call i32 %117(%struct.megasas_instance* %118)
  %120 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %121 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %120, i32 0, i32 5
  %122 = load i32, i32* @MEGASAS_ADPRESET_SM_INFAULT, align 4
  %123 = call i32 @atomic_set(i32* %121, i32 %122)
  %124 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %125 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %124, i32 0, i32 7
  store i64 0, i64* %125, align 8
  %126 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %127 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %126, i32 0, i32 6
  %128 = call i32 @atomic_set(i32* %127, i32 0)
  %129 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %130 = call i32 @megasas_internal_reset_defer_cmds(%struct.megasas_instance* %129)
  %131 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %132 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %131, i32 0, i32 3
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %137 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %136, i32 0, i32 5
  %138 = call i64 @atomic_read(i32* %137)
  %139 = call i32 (i32*, i8*, ...) @dev_notice(i32* %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %135, i64 %138)
  %140 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %141 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %140, i32 0, i32 4
  %142 = call i32 @schedule_work(i32* %141)
  %143 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %143, i32* %3, align 4
  br label %160

144:                                              ; preds = %72, %68
  %145 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %146 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %145, i32 0, i32 3
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %151 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (i32*, i8*, ...) @dev_notice(i32* %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %149, i64 %152)
  br label %154

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154, %40
  %156 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %157 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %156, i32 0, i32 2
  %158 = call i32 @tasklet_schedule(i32* %157)
  %159 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %155, %112, %37, %20
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @dev_notice(i32*, i8*, ...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @megasas_internal_reset_defer_cmds(%struct.megasas_instance*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
