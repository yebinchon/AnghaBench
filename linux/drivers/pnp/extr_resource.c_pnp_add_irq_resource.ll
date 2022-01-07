; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_resource.c_pnp_add_irq_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_resource.c_pnp_add_irq_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_resource = type { %struct.resource }
%struct.resource = type { i32, i32, i32 }
%struct.pnp_dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"can't add resource for IRQ %d\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%pR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pnp_resource* @pnp_add_irq_resource(%struct.pnp_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pnp_resource*, align 8
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pnp_resource*, align 8
  %9 = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %11 = call %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev* %10)
  store %struct.pnp_resource* %11, %struct.pnp_resource** %8, align 8
  %12 = load %struct.pnp_resource*, %struct.pnp_resource** %8, align 8
  %13 = icmp ne %struct.pnp_resource* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %16 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  store %struct.pnp_resource* null, %struct.pnp_resource** %4, align 8
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.pnp_resource*, %struct.pnp_resource** %8, align 8
  %21 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %20, i32 0, i32 0
  store %struct.resource* %21, %struct.resource** %9, align 8
  %22 = load i32, i32* @IORESOURCE_IRQ, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.resource*, %struct.resource** %9, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.resource*, %struct.resource** %9, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.resource*, %struct.resource** %9, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @KERN_DEBUG, align 4
  %34 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %35 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %34, i32 0, i32 0
  %36 = load %struct.resource*, %struct.resource** %9, align 8
  %37 = call i32 @dev_printk(i32 %33, i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %36)
  %38 = load %struct.pnp_resource*, %struct.pnp_resource** %8, align 8
  store %struct.pnp_resource* %38, %struct.pnp_resource** %4, align 8
  br label %39

39:                                               ; preds = %19, %14
  %40 = load %struct.pnp_resource*, %struct.pnp_resource** %4, align 8
  ret %struct.pnp_resource* %40
}

declare dso_local %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
