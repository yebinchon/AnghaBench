; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_inta_msi.c_ti_sci_inta_msi_alloc_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_inta_msi.c_ti_sci_inta_msi_alloc_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ti_sci_resource = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.msi_desc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ti_sci_resource*)* @ti_sci_inta_msi_alloc_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_inta_msi_alloc_descs(%struct.device* %0, %struct.ti_sci_resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ti_sci_resource*, align 8
  %6 = alloca %struct.msi_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ti_sci_resource* %1, %struct.ti_sci_resource** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %67, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %5, align 8
  %13 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %63, %16
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %5, align 8
  %20 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %18, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %17
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call %struct.msi_desc* @alloc_msi_entry(%struct.device* %29, i32 1, i32* null)
  store %struct.msi_desc* %30, %struct.msi_desc** %6, align 8
  %31 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %32 = icmp ne %struct.msi_desc* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @ti_sci_inta_msi_free_descs(%struct.device* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %28
  %39 = load %struct.ti_sci_resource*, %struct.ti_sci_resource** %5, align 8
  %40 = getelementptr inbounds %struct.ti_sci_resource, %struct.ti_sci_resource* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %51 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %54 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %53, i32 0, i32 0
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %57 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %56, i32 0, i32 0
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @dev_to_msi_list(%struct.device* %58)
  %60 = call i32 @list_add_tail(i32* %57, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %38
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %17

66:                                               ; preds = %17
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %10

70:                                               ; preds = %10
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %33
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.msi_desc* @alloc_msi_entry(%struct.device*, i32, i32*) #1

declare dso_local i32 @ti_sci_inta_msi_free_descs(%struct.device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @dev_to_msi_list(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
