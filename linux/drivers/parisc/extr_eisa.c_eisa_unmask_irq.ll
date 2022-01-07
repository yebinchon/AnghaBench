; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_eisa.c_eisa_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_eisa.c_eisa_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"enable irq %d\0A\00", align 1
@eisa_irq_lock = common dso_local global i32 0, align 4
@slave_mask = common dso_local global i32 0, align 4
@master_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"pic0 mask %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"pic1 mask %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @eisa_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eisa_unmask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @EISA_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @eisa_irq_lock, i64 %10)
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 7
  %18 = shl i32 1, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @slave_mask, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* @slave_mask, align 4
  %22 = load i32, i32* @slave_mask, align 4
  %23 = call i32 @eisa_out8(i32 %22, i32 161)
  br label %33

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 7
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* @master_mask, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* @master_mask, align 4
  %31 = load i32, i32* @master_mask, align 4
  %32 = call i32 @eisa_out8(i32 %31, i32 33)
  br label %33

33:                                               ; preds = %24, %15
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @eisa_irq_lock, i64 %34)
  %36 = call i32 @eisa_in8(i32 33)
  %37 = call i32 @EISA_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = call i32 @eisa_in8(i32 161)
  %39 = call i32 @EISA_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  ret void
}

declare dso_local i32 @EISA_DBG(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @eisa_out8(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @eisa_in8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
