; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_hbaB_wait_msgint_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_hbaB_wait_msgint_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { %struct.MessageUnit_B* }
%struct.MessageUnit_B = type { i32, i32 }

@ARCMSR_IOP2DRV_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@ARCMSR_MESSAGE_INT_CLEAR_PATTERN = common dso_local global i32 0, align 4
@ARCMSR_DRV2IOP_END_OF_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AdapterControlBlock*)* @arcmsr_hbaB_wait_msgint_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_hbaB_wait_msgint_ready(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca %struct.MessageUnit_B*, align 8
  %5 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  %6 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %7 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %6, i32 0, i32 0
  %8 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %7, align 8
  store %struct.MessageUnit_B* %8, %struct.MessageUnit_B** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %33, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 2000
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %4, align 8
  %14 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readl(i32 %15)
  %17 = load i32, i32* @ARCMSR_IOP2DRV_MESSAGE_CMD_DONE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load i32, i32* @ARCMSR_MESSAGE_INT_CLEAR_PATTERN, align 4
  %22 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %4, align 8
  %23 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @writel(i32 %21, i32 %24)
  %26 = load i32, i32* @ARCMSR_DRV2IOP_END_OF_INTERRUPT, align 4
  %27 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %4, align 8
  %28 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @writel(i32 %26, i32 %29)
  store i32 1, i32* %2, align 4
  br label %37

31:                                               ; preds = %12
  %32 = call i32 @msleep(i32 10)
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %9

36:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
