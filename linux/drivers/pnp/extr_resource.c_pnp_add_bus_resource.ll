; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_resource.c_pnp_add_bus_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_resource.c_pnp_add_bus_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_resource = type { %struct.resource }
%struct.resource = type { i8*, i8*, i32 }
%struct.pnp_dev = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"can't add resource for BUS %#llx-%#llx\0A\00", align 1
@IORESOURCE_BUS = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%pR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pnp_resource* @pnp_add_bus_resource(%struct.pnp_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.pnp_resource*, align 8
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pnp_resource*, align 8
  %9 = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %11 = call %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev* %10)
  store %struct.pnp_resource* %11, %struct.pnp_resource** %8, align 8
  %12 = load %struct.pnp_resource*, %struct.pnp_resource** %8, align 8
  %13 = icmp ne %struct.pnp_resource* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %16 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %15, i32 0, i32 0
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load i8*, i8** %7, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %20)
  store %struct.pnp_resource* null, %struct.pnp_resource** %4, align 8
  br label %40

22:                                               ; preds = %3
  %23 = load %struct.pnp_resource*, %struct.pnp_resource** %8, align 8
  %24 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %23, i32 0, i32 0
  store %struct.resource* %24, %struct.resource** %9, align 8
  %25 = load i32, i32* @IORESOURCE_BUS, align 4
  %26 = load %struct.resource*, %struct.resource** %9, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.resource*, %struct.resource** %9, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.resource*, %struct.resource** %9, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @KERN_DEBUG, align 4
  %35 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %36 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %35, i32 0, i32 0
  %37 = load %struct.resource*, %struct.resource** %9, align 8
  %38 = call i32 @dev_printk(i32 %34, i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %37)
  %39 = load %struct.pnp_resource*, %struct.pnp_resource** %8, align 8
  store %struct.pnp_resource* %39, %struct.pnp_resource** %4, align 8
  br label %40

40:                                               ; preds = %22, %14
  %41 = load %struct.pnp_resource*, %struct.pnp_resource** %4, align 8
  ret %struct.pnp_resource* %41
}

declare dso_local %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
