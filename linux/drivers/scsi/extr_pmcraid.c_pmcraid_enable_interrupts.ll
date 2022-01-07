; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GLOBAL_INTERRUPT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"enabled interrupts global mask = %x intr_mask = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_instance*, i32)* @pmcraid_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_enable_interrupts(%struct.pmcraid_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %8 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ioread32(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @GLOBAL_INTERRUPT_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %18 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @iowrite32(i32 %16, i32 %20)
  %22 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %23 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %30 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iowrite32(i32 %28, i32 %32)
  %34 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %35 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ioread32(i32 %37)
  br label %39

39:                                               ; preds = %26, %2
  %40 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %41 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ioread32(i32 %43)
  %45 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %46 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ioread32(i32 %48)
  %50 = call i32 @pmcraid_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %49)
  ret void
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @pmcraid_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
