; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_setup_local_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_setup_local_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MEMREMAP_WC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"gen_pool_add_virt failed with %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hcd_setup_local_mem(%struct.usb_hcd* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %13 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %17 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_to_node(i32 %19)
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %22 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_name(i32 %24)
  %26 = call i8* @devm_gen_pool_create(i32 %15, i32 4, i32 %20, i32 %25)
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %28 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %30 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %36 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PTR_ERR(i8* %37)
  store i32 %38, i32* %5, align 4
  br label %79

39:                                               ; preds = %4
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* @MEMREMAP_WC, align 4
  %47 = call i8* @devm_memremap(i32 %43, i32 %44, i64 %45, i32 %46)
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %5, align 4
  br label %79

54:                                               ; preds = %39
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %56 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load i32, i32* %8, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %63 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_to_node(i32 %65)
  %67 = call i32 @gen_pool_add_virt(i8* %57, i64 %59, i32 %60, i64 %61, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %54
  %71 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %72 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %79

78:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %70, %51, %34
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i8* @devm_gen_pool_create(i32, i32, i32, i32) #1

declare dso_local i32 @dev_to_node(i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_memremap(i32, i32, i64, i32) #1

declare dso_local i32 @gen_pool_add_virt(i8*, i64, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
