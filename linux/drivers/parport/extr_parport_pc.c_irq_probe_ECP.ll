; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_pc.c_irq_probe_ECP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_pc.c_irq_probe_ECP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@ECR_SPP = common dso_local global i32 0, align 4
@ECR_TST = common dso_local global i32 0, align 4
@PARPORT_IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*)* @irq_probe_ECP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_probe_ECP(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %5 = call i64 (...) @probe_irq_on()
  store i64 %5, i64* %4, align 8
  %6 = load %struct.parport*, %struct.parport** %2, align 8
  %7 = load i32, i32* @ECR_SPP, align 4
  %8 = shl i32 %7, 5
  %9 = call i32 @ECR_WRITE(%struct.parport* %6, i32 %8)
  %10 = load %struct.parport*, %struct.parport** %2, align 8
  %11 = load i32, i32* @ECR_TST, align 4
  %12 = shl i32 %11, 5
  %13 = or i32 %12, 4
  %14 = call i32 @ECR_WRITE(%struct.parport* %10, i32 %13)
  %15 = load %struct.parport*, %struct.parport** %2, align 8
  %16 = load i32, i32* @ECR_TST, align 4
  %17 = shl i32 %16, 5
  %18 = call i32 @ECR_WRITE(%struct.parport* %15, i32 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %35, %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 1024
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.parport*, %struct.parport** %2, align 8
  %24 = call i32 @ECONTROL(%struct.parport* %23)
  %25 = call i32 @inb(i32 %24)
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %22, %19
  %30 = phi i1 [ false, %19 ], [ %28, %22 ]
  br i1 %30, label %31, label %38

31:                                               ; preds = %29
  %32 = load %struct.parport*, %struct.parport** %2, align 8
  %33 = call i32 @FIFO(%struct.parport* %32)
  %34 = call i32 @outb(i32 170, i32 %33)
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %19

38:                                               ; preds = %29
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @probe_irq_off(i64 %39)
  %41 = load %struct.parport*, %struct.parport** %2, align 8
  %42 = getelementptr inbounds %struct.parport, %struct.parport* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.parport*, %struct.parport** %2, align 8
  %44 = load i32, i32* @ECR_SPP, align 4
  %45 = shl i32 %44, 5
  %46 = call i32 @ECR_WRITE(%struct.parport* %43, i32 %45)
  %47 = load %struct.parport*, %struct.parport** %2, align 8
  %48 = getelementptr inbounds %struct.parport, %struct.parport* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load i32, i32* @PARPORT_IRQ_NONE, align 4
  %53 = load %struct.parport*, %struct.parport** %2, align 8
  %54 = getelementptr inbounds %struct.parport, %struct.parport* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %38
  %56 = load %struct.parport*, %struct.parport** %2, align 8
  %57 = getelementptr inbounds %struct.parport, %struct.parport* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  ret i32 %58
}

declare dso_local i64 @probe_irq_on(...) #1

declare dso_local i32 @ECR_WRITE(%struct.parport*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ECONTROL(%struct.parport*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @FIFO(%struct.parport*) #1

declare dso_local i32 @probe_irq_off(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
