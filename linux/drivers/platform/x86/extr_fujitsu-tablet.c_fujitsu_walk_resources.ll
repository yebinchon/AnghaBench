; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-tablet.c_fujitsu_walk_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-tablet.c_fujitsu_walk_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.acpi_resource = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32* }

@fujitsu = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @fujitsu_walk_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fujitsu_walk_resources(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %7 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %40 [
    i32 128, label %9
    i32 129, label %18
    i32 130, label %30
  ]

9:                                                ; preds = %2
  %10 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fujitsu, i32 0, i32 1), align 4
  %17 = load i32, i32* @AE_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fujitsu, i32 0, i32 0), align 4
  %24 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fujitsu, i32 0, i32 2), align 4
  %29 = load i32, i32* @AE_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %42

30:                                               ; preds = %2
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fujitsu, i32 0, i32 1), align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fujitsu, i32 0, i32 0), align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @AE_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %33, %30
  %39 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @AE_ERROR, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %38, %36, %18, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
