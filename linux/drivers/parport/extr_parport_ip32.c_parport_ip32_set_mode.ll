; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@ECR_MODE_MASK = common dso_local global i32 0, align 4
@ECR_MODE_SPP = common dso_local global i32 0, align 4
@ECR_MODE_PS2 = common dso_local global i32 0, align 4
@ECR_nERRINTR = common dso_local global i32 0, align 4
@ECR_SERVINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, i32)* @parport_ip32_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_ip32_set_mode(%struct.parport* %0, i32 %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ECR_MODE_MASK, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %4, align 4
  %10 = load %struct.parport*, %struct.parport** %3, align 8
  %11 = call i32 @parport_ip32_read_econtrol(%struct.parport* %10)
  %12 = load i32, i32* @ECR_MODE_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ECR_MODE_SPP, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %38, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ECR_MODE_PS2, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ECR_MODE_SPP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ECR_MODE_PS2, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ECR_MODE_PS2, align 4
  %31 = load i32, i32* @ECR_nERRINTR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ECR_SERVINTR, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.parport*, %struct.parport** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @parport_ip32_write_econtrol(%struct.parport* %35, i32 %36)
  br label %38

38:                                               ; preds = %29, %25, %21, %17, %2
  %39 = load %struct.parport*, %struct.parport** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ECR_nERRINTR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ECR_SERVINTR, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @parport_ip32_write_econtrol(%struct.parport* %39, i32 %44)
  ret void
}

declare dso_local i32 @parport_ip32_read_econtrol(%struct.parport*) #1

declare dso_local i32 @parport_ip32_write_econtrol(%struct.parport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
