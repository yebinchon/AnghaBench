; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_isr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_isr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 (%struct.mvumi_hba*)* }

@IRQ_NONE = common dso_local global i32 0, align 4
@DRBL_BUS_CHANGE = common dso_local global i32 0, align 4
@DRBL_EVENT_NOTIFY = common dso_local global i32 0, align 4
@DRBL_HANDSHAKE_ISR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"enter handshake again!\0A\00", align 1
@FW_STATE_STARTED = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mvumi_isr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_isr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mvumi_hba*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mvumi_hba*
  store %struct.mvumi_hba* %9, %struct.mvumi_hba** %6, align 8
  %10 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %11 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %10, i32 0, i32 3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  %17 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %18 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %17, i32 0, i32 6
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64 (%struct.mvumi_hba*)*, i64 (%struct.mvumi_hba*)** %20, align 8
  %22 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %23 = call i64 %21(%struct.mvumi_hba* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %27 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %2
  %32 = phi i1 [ true, %2 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %38 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32 %41, i64 %42)
  %44 = load i32, i32* @IRQ_NONE, align 4
  store i32 %44, i32* %3, align 4
  br label %123

45:                                               ; preds = %31
  %46 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %47 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %50 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %49, i32 0, i32 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %48, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %45
  %57 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %58 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DRBL_BUS_CHANGE, align 4
  %61 = load i32, i32* @DRBL_EVENT_NOTIFY, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %67 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %68 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @mvumi_launch_events(%struct.mvumi_hba* %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %56
  %72 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %73 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DRBL_HANDSHAKE_ISR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %80 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %79, i32 0, i32 5
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = call i32 @dev_warn(i32* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %85 = call i32 @mvumi_handshake(%struct.mvumi_hba* %84)
  br label %86

86:                                               ; preds = %78, %71
  br label %87

87:                                               ; preds = %86, %45
  %88 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %89 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %92 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %91, i32 0, i32 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %90, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %100 = call i32 @mvumi_receive_ob_list_entry(%struct.mvumi_hba* %99)
  br label %101

101:                                              ; preds = %98, %87
  %102 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %103 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %105 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %107 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @FW_STATE_STARTED, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %113 = call i32 @mvumi_handle_clob(%struct.mvumi_hba* %112)
  br label %114

114:                                              ; preds = %111, %101
  %115 = load %struct.mvumi_hba*, %struct.mvumi_hba** %6, align 8
  %116 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %115, i32 0, i32 3
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32 %119, i64 %120)
  %122 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %114, %36
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @mvumi_launch_events(%struct.mvumi_hba*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mvumi_handshake(%struct.mvumi_hba*) #1

declare dso_local i32 @mvumi_receive_ob_list_entry(%struct.mvumi_hba*) #1

declare dso_local i32 @mvumi_handle_clob(%struct.mvumi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
