; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_eisa.c_init_eisa_pic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_eisa.c_init_eisa_pic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eisa_irq_lock = common dso_local global i32 0, align 4
@slave_mask = common dso_local global i32 0, align 4
@master_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"EISA edge/level %04x\0A\00", align 1
@eisa_irq_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"pic0 mask %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"pic1 mask %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"pic0 edge/level %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"pic1 edge/level %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_eisa_pic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_eisa_pic() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @spin_lock_irqsave(i32* @eisa_irq_lock, i64 %2)
  %4 = call i32 @eisa_out8(i32 255, i32 33)
  %5 = call i32 @eisa_out8(i32 255, i32 161)
  %6 = call i32 @eisa_out8(i32 17, i32 32)
  %7 = call i32 @eisa_out8(i32 0, i32 33)
  %8 = call i32 @eisa_out8(i32 4, i32 33)
  %9 = call i32 @eisa_out8(i32 1, i32 33)
  %10 = call i32 @eisa_out8(i32 64, i32 32)
  %11 = call i32 @eisa_out8(i32 17, i32 160)
  %12 = call i32 @eisa_out8(i32 8, i32 161)
  %13 = call i32 @eisa_out8(i32 2, i32 161)
  %14 = call i32 @eisa_out8(i32 1, i32 161)
  %15 = call i32 @eisa_out8(i32 64, i32 160)
  %16 = call i32 @udelay(i32 100)
  store i32 255, i32* @slave_mask, align 4
  store i32 251, i32* @master_mask, align 4
  %17 = load i32, i32* @slave_mask, align 4
  %18 = call i32 @eisa_out8(i32 %17, i32 161)
  %19 = load i32, i32* @master_mask, align 4
  %20 = call i32 @eisa_out8(i32 %19, i32 33)
  %21 = load i32, i32* @eisa_irq_level, align 4
  %22 = call i32 @EISA_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @eisa_irq_level, align 4
  %24 = and i32 %23, 255
  %25 = call i32 @eisa_out8(i32 %24, i32 1232)
  %26 = load i32, i32* @eisa_irq_level, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  %29 = call i32 @eisa_out8(i32 %28, i32 1233)
  %30 = call i32 @eisa_in8(i32 33)
  %31 = call i32 @EISA_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = call i32 @eisa_in8(i32 161)
  %33 = call i32 @EISA_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = call i32 @eisa_in8(i32 1232)
  %35 = call i32 @EISA_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = call i32 @eisa_in8(i32 1233)
  %37 = call i32 @EISA_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @eisa_irq_lock, i64 %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @eisa_out8(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @EISA_DBG(i8*, i32) #1

declare dso_local i32 @eisa_in8(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
