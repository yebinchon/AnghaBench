; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_is_old_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_is_old_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@DPA_RESOURCE_ADJUSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*, %struct.resource**, i32)* @is_old_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_old_resource(%struct.resource* %0, %struct.resource** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.resource* %0, %struct.resource** %5, align 8
  store %struct.resource** %1, %struct.resource*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.resource*, %struct.resource** %5, align 8
  %10 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DPA_RESOURCE_ADJUSTED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = load %struct.resource**, %struct.resource*** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.resource*, %struct.resource** %23, i64 %25
  %27 = load %struct.resource*, %struct.resource** %26, align 8
  %28 = icmp eq %struct.resource* %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %35

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %17

34:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %29, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
