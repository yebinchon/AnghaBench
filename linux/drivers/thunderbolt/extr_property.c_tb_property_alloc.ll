; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_property.c_tb_property_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_property.c_tb_property_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_property = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tb_property* (i8*, i32)* @tb_property_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tb_property* @tb_property_alloc(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.tb_property*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb_property*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.tb_property* @kzalloc(i32 12, i32 %7)
  store %struct.tb_property* %8, %struct.tb_property** %6, align 8
  %9 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %10 = icmp ne %struct.tb_property* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.tb_property* null, %struct.tb_property** %3, align 8
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %14 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strcpy(i32 %15, i8* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %20 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %22 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  store %struct.tb_property* %24, %struct.tb_property** %3, align 8
  br label %25

25:                                               ; preds = %12, %11
  %26 = load %struct.tb_property*, %struct.tb_property** %3, align 8
  ret %struct.tb_property* %26
}

declare dso_local %struct.tb_property* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
