; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_emptyq_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_emptyq_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.list_head = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"0466 %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Outstanding IO when \00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"bringing Adapter offline\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_emptyq_wait(%struct.lpfc_hba* %0, %struct.list_head* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %7, align 8
  %10 = call i32 @spin_lock_irq(i32* %9)
  br label %11

11:                                               ; preds = %28, %3
  %12 = load %struct.list_head*, %struct.list_head** %6, align 8
  %13 = call i32 @list_empty(%struct.list_head* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @spin_unlock_irq(i32* %17)
  %19 = call i32 @msleep(i32 20)
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = icmp sgt i32 %20, 250
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %25 = load i32, i32* @KERN_WARNING, align 4
  %26 = load i32, i32* @LOG_INIT, align 4
  %27 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %34

28:                                               ; preds = %16
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @spin_lock_irq(i32* %29)
  br label %11

31:                                               ; preds = %11
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @spin_unlock_irq(i32* %32)
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
