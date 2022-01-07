; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb-init.c_brcmusb_get_family_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-brcm-usb-init.c_brcmusb_get_family_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.brcm_usb_init_params = type { i32 }

@id_to_type_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcm_usb_init_params*)* @brcmusb_get_family_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmusb_get_family_type(%struct.brcm_usb_init_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcm_usb_init_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.brcm_usb_init_params* %0, %struct.brcm_usb_init_params** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %3, align 8
  %10 = getelementptr inbounds %struct.brcm_usb_init_params, %struct.brcm_usb_init_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, -16
  store i32 %12, i32* %8, align 4
  %13 = load %struct.brcm_usb_init_params*, %struct.brcm_usb_init_params** %3, align 8
  %14 = getelementptr inbounds %struct.brcm_usb_init_params, %struct.brcm_usb_init_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, -256
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %84, %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @id_to_type_table, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %87

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @id_to_type_table, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %26, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @id_to_type_table, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %2, align 4
  br label %99

41:                                               ; preds = %25
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @id_to_type_table, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, -256
  %50 = icmp eq i32 %42, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @id_to_type_table, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %52, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @id_to_type_table, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %61, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %60
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @id_to_type_table, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @id_to_type_table, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %69, %60, %51
  br label %83

83:                                               ; preds = %82, %41
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %17

87:                                               ; preds = %17
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @id_to_type_table, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %2, align 4
  br label %99

97:                                               ; preds = %87
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %90, %34
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
