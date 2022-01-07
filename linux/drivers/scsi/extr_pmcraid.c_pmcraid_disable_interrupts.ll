; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_disable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_disable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GLOBAL_INTERRUPT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_instance*, i32)* @pmcraid_disable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_disable_interrupts(%struct.pmcraid_instance* %0, i32 %1) #0 {
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
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %17 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @iowrite32(i32 %15, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %23 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iowrite32(i32 %21, i32 %25)
  %27 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %28 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ioread32(i32 %30)
  %32 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %33 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %39 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @iowrite32(i32 %37, i32 %41)
  %43 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %44 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ioread32(i32 %46)
  br label %48

48:                                               ; preds = %36, %2
  ret void
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
