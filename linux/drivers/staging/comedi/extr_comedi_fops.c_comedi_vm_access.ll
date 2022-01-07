; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_vm_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_vm_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64, %struct.comedi_buf_map* }
%struct.comedi_buf_map = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* @comedi_vm_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_vm_access(%struct.vm_area_struct* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.comedi_buf_map*, align 8
  %13 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 3
  %16 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %15, align 8
  store %struct.comedi_buf_map* %16, %struct.comedi_buf_map** %12, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %17, %20
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = shl i64 %24, %25
  %27 = add i64 %21, %26
  store i64 %27, i64* %13, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %56

33:                                               ; preds = %5
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = sub i64 %38, %39
  %41 = icmp ugt i64 %35, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %42, %33
  %50 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @comedi_buf_map_access(%struct.comedi_buf_map* %50, i64 %51, i8* %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %49, %30
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @comedi_buf_map_access(%struct.comedi_buf_map*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
