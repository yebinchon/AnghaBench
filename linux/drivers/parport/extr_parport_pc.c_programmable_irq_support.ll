; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_pc.c_programmable_irq_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_pc.c_programmable_irq_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@programmable_irq_support.lookup = internal constant [8 x i32] [i32 128, i32 7, i32 9, i32 10, i32 11, i32 14, i32 15, i32 5], align 16
@ECR_CNF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*)* @programmable_irq_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @programmable_irq_support(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %2, align 8
  %6 = load %struct.parport*, %struct.parport** %2, align 8
  %7 = call i32 @ECONTROL(%struct.parport* %6)
  %8 = call i32 @inb(i32 %7)
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %5, align 1
  %10 = load %struct.parport*, %struct.parport** %2, align 8
  %11 = load i32, i32* @ECR_CNF, align 4
  %12 = shl i32 %11, 5
  %13 = trunc i32 %12 to i8
  %14 = call i32 @ECR_WRITE(%struct.parport* %10, i8 zeroext %13)
  %15 = load %struct.parport*, %struct.parport** %2, align 8
  %16 = call i32 @CONFIGB(%struct.parport* %15)
  %17 = call i32 @inb(i32 %16)
  %18 = ashr i32 %17, 3
  %19 = and i32 %18, 7
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* @programmable_irq_support.lookup, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load %struct.parport*, %struct.parport** %2, align 8
  %25 = load i8, i8* %5, align 1
  %26 = call i32 @ECR_WRITE(%struct.parport* %24, i8 zeroext %25)
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ECONTROL(%struct.parport*) #1

declare dso_local i32 @ECR_WRITE(%struct.parport*, i8 zeroext) #1

declare dso_local i32 @CONFIGB(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
